<?php

namespace App\Http\Controllers;

use App\AdminSetting;
use App\ParkingBooking;
use App\ParkingOwner;
use App\ParkingSpace;
use App\AppUsers;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use OneSignal;

class ParkingBookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        // ad6a7910-000b-44b8-b871-88f0d4a22613
        $data = array();
        $dataCurrant = ParkingBooking::with(['space:id,title,address'])->where([['user_id', Auth::user()->id]])->whereIn('status', [0, 1])->get();
        $dataOld = ParkingBooking::with(['space:id,title,address'])->where([['user_id', Auth::user()->id]])->whereIn('status', [2, 3])->get();
        $data['currant'] = $dataCurrant;
        $data['old'] = $dataOld;
        return response()->json(['msg' => 'Thanks', 'data' => $data, 'success' => true], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'owner_id' => 'bail|required|exists:parking_owner,id',
            'space_id' => 'bail|required|exists:parking_space,id',
            'slot_id' => 'bail|required|exists:space_slot,id',
            'vehicle_id' => 'bail|required|exists:user_vehicle,id',
            'arriving_time' => 'bail|required|date',
            'leaving_time' => 'bail|required|after:arriving_time',
            'total_amount' => 'bail|required|min:1',
        ]);
        $reqData = $request->all();
        $reqData['arriving_time'] = Carbon::parse($request->arriving_time)->format('Y-m-d H:i:s');
        $reqData['leaving_time'] = Carbon::parse($request->leaving_time)->format('Y-m-d H:i:s');
        $reqData['user_id'] = Auth::user()->id;
        $reqData['order_no'] = uniqid();

        if ($reqData['payment_type'] === 'stripe') {
            $pq = ParkingOwner::find($reqData['owner_id']);
            $reqData['payment_token'] = $this->paymentByStripe($pq->stripe_sk, $reqData['payment_token'], $reqData['total_amount']);
            $reqData['payment_status'] = 1;
        }

        $spaceData = ParkingSpace::find($reqData['space_id']);
        try {
            //code...


            $header =  $spaceData['title'] . ' Approved Your Request';
            $text = 'Your Request for parking space ' . $spaceData['title'] . ' is approve thanks using Paypark';
            $app = AdminSetting::get(['id', 'notification'])->first();
            $user = AppUsers::find($reqData['user_id']);
            $userId = $user['device_token'];
            if (isset($userId) && $app->notification == 1) {
                OneSignal::sendNotificationToUser(
                    $text,
                    $userId,
                    $url = null,
                    $data = null,
                    $buttons = null,
                    $schedule = null,
                    $headings = $header

                );
            }
        } catch (\Throwable $th) {
            //throw $th;
        }

        $header = "Reminder from  " . $spaceData['title'];
        $text = 'Your parking with ' . $spaceData['title'] . ' is schedule at :- ' . $reqData['arriving_time'];
        $data = ParkingBooking::create($reqData);
        $data['header'] = $header;
        $data['text'] = $text;
        return response()->json(['msg' => 'Thanks', 'data' => $data, 'success' => true], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ParkingBooking  $parkingBooking
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $data = ParkingBooking::with(['space:id,title,address'])->where('id', $id)->first();

        return response()->json(['msg' => 'Thanks', 'data' => $data, 'success' => true], 200);
    }
    public function ownerShowScanner($order)
    {
        //

        $data = ParkingBooking::with(['user', 'vehicle:id,model,vehicle_no'])->where([['order_no', $order]])->get()->first();
        return response()->json(['msg' => 'Thanks', 'data' => $data, 'success' => true], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ParkingBooking  $parkingBooking
     * @return \Illuminate\Http\Response
     */
    public function edit(ParkingBooking $parkingBooking)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ParkingBooking  $parkingBooking
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //

        $data = ParkingBooking::find($id);
        $data->payment_status = $request->payment_status;
        $data->status = $request->status;

        $data->save();
        $app = AdminSetting::get(['id', 'notification'])->first();
        $data = ParkingBooking::with(['user', 'vehicle:id,model,vehicle_no', 'space:id,title,address'])->where([['id', $id]])->get()->first();
        $temp = true;
        $header = '';
        $text = '';
        if ($request->status == '1') {
            // 'space:id,title,address'
            // check in
            $header = $data['space']['title'] . ' welcome`s you';
            $text = 'You are check in for ' . $data['space']['title'] . '   parking space';
        } else if ($request->status == '2') {
            $header = 'Parking with ' . $data['space']['title'] . ' complete';

            $text = 'Thanks for park with' . $data['space']['title'] . ' please visit again';
        } else if ($request->status == '2') {
            $header = 'Important notice by' . $data['space']['title'];

            $text = 'Your parking with' . $data['space']['title'] . ' is cancel please contact us for more info';
        } else if ($request->payment_status == '1') {
            $header = 'Payment received';

            $text = 'Payment complete for ' . $data['space']['title'] . ' parking space thanks for payment';
        } else {
            $temp = false;
        }
        try {
            //code...
            $userId = $data['user']['device_token'];
            if (isset($userId) && $temp === true  && $app->notification == 1) {
                OneSignal::sendNotificationToUser(
                    $text,
                    $userId,
                    $url = null,
                    $data = null,
                    $buttons = null,
                    $schedule = null,
                    $headings = $header

                );
            }
        } catch (\Throwable $th) {
            //throw $th;
        }

        return response()->json(['msg' => 'Thanks', 'data' => $data, 'success' => true], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ParkingBooking  $parkingBooking
     * @return \Illuminate\Http\Response
     */
    public function destroy(ParkingBooking $parkingBooking)
    {
        //
    }

    public function ownerShow($id)
    {
        # code...
        $data = ParkingBooking::with(['user', 'vehicle:id,model,vehicle_no'])->where([['id', $id]])->get()->first();
        return response()->json(['msg' => 'Thanks', 'data' => $data, 'success' => true], 200);
    }
    public function bookingCancel($id)
    {
        $data = ParkingBooking::find($id);
        $data->status = 3;
        $data->save();
        $data = ParkingBooking::with(['user', 'space:id,title,address'])->where([['id', $id]])->get()->first();

        try {
            //code...
            $header =  'Sorry for inconvenience';
            $text = 'Your parking with' . $data['space']['title'] . ' is cancel by you please say what happened';
            $app = AdminSetting::get(['id', 'notification'])->first();

            $userId = $data['user']['device_token'];
            if (isset($userId) && $app->notification == 1) {
                OneSignal::sendNotificationToUser(
                    $text,
                    $userId,
                    $url = null,
                    $data = null,
                    $buttons = null,
                    $schedule = null,
                    $headings = $header
                );
            }
        } catch (\Throwable $th) {
            //throw $th;
        }

        return response()->json(['msg' => 'Booking Is Cancel', 'data' => null, 'success' => true], 200);
    }

    private function paymentByStripe($key, $token, $amt)
    {
        \Stripe\Stripe::setApiKey($key);

        // Token is created using Checkout or Elements!
        // Get the payment token ID submitted by the form:

        $charge = \Stripe\Charge::create([
            'source' => $token,
            'currency' => 'usd',
            'amount' => $amt * 100,
        ]);
        // dd($charge);
        return $charge['id'];
    }
}
