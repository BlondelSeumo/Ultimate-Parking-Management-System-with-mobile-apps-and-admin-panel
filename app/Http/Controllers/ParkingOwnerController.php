<?php

namespace App\Http\Controllers;

use App\Notifications\SendPassword;
use App\ParkingBooking;
use App\ParkingGuard;
use App\ParkingOwner;
use App\ParkingSpace;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ParkingOwnerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    }
    public function adminIndex()
    {

        return view('parkingOwner.index', ['parkingOwner' => ParkingOwner::paginate(15)]);
    }
    public function ownerSpaceDetail($id)
    {

        return view('parkingOwner.spaceView', ['parkingSpace' => ParkingSpace::where('owner_id', $id)->paginate(15)]);
    }
    public function login(Request $request)
    {
        //
        $request->validate([
            'email' => 'bail|required|email',
            'password' => 'bail|required|min:6',
        ]);
        if ($request->type === 'owner') {

            $user = ParkingOwner::where('email', $request->email)->first();
        } else {

            $user = ParkingGuard::where('email', $request->email)->first();
        }
        if ($user) {
            if (Hash::check($request->password, $user->password)) {
                if ($request->type === 'owner' && $user['verified'] != 1) {
                    return response()->json(['msg' => 'Please Verify your email', 'data' => null, 'success' => false], 200);
                }
                $token = $user->createToken('PayParkOwner')->accessToken;
                // $user['device_token'] = $request->device_token;
                // $user->save();
                $user['token'] = $token;
                return response()->json(['msg' => 'lOGIN ', 'data' => $user, 'success' => true], 200);
            } else {
                return response()->json(['message' => 'Password does not match!'], 401);
            }
        } else {
            return response()->json(['message' => 'User not exisit!'], 401);
        }
    }


    public function profileUpdate(Request $request)
    {
        $request->validate([

            'name' => 'bail|required',
            'phone_no' => 'bail|required',
        ]);
        auth()->user()->update($request->all());
        return response()->json(['msg' => 'Profile Updated', 'data' => null, 'success' => true], 200);
    }
    public function passwordUpdate(Request $request)
    {
        $request->validate([
            'password' => 'bail|required|confirmed|min:6',
        ]);
        auth()->user()->update($request->all());
        return response()->json(['msg' => 'Password is changed', 'data' => null, 'success' => true], 200);
    }
    public function settingUpdate(Request $request)
    {
        auth()->user()->update($request->all());
        return response()->json(['msg' => 'Setting Updated', 'data' => null, 'success' => true], 200);
    }
    public function settingShow($id)
    {
        $pq = ParkingOwner::find($id);

        return response()->json(['msg' => 'Setting Updated', 'data' => $pq, 'success' => true], 200);
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
            'email' => 'bail|required|email|unique:parking_owner,email',
            'name' => 'bail|required',
            'password' => 'bail|required|min:6',
        ]);
        $data =   ParkingOwner::create($request->all());
        $token = $data->createToken('PayParkOwner')->accessToken;
        $data['token'] = $token;
        return response()->json(['msg' => 'Welcome to PayPark', 'data' => $data, 'success' => true], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ParkingOwner  $parkingOwner
     * @return \Illuminate\Http\Response
     */
    public function show(ParkingOwner $parkingOwner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ParkingOwner  $parkingOwner
     * @return \Illuminate\Http\Response
     */
    public function edit(ParkingOwner $parkingOwner)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ParkingOwner  $parkingOwner
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ParkingOwner $parkingOwner)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ParkingOwner  $parkingOwner
     * @return \Illuminate\Http\Response
     */
    public function destroy(ParkingOwner $parkingOwner)
    {
        //
    }
    public function transactionAllInOne($id, $type)
    {

        $date = Carbon::today();
        if ($type === 'week') {
            $data = ParkingBooking::where('space_id', $id)
                ->whereBetween('arriving_time', [$date->startOfWeek()->format('Y-m-d'),  $date->endOfWeek()->format('Y-m-d')])->orderBy('user_id')
                ->get();

            $temp = array();
            foreach ($data as $value) {

                $userCount = ParkingBooking::with(['user'])->where([['space_id', $id], ['user_id', $value['user_id']]])
                    ->whereBetween('arriving_time', [$date->startOfWeek()->format('Y-m-d'),  $date->endOfWeek()->format('Y-m-d')])
                    ->get();
                array_push($temp, [
                    'user' => $userCount[0]['user'],
                    'user_id' => $userCount[0]['user_id'],
                    'total' => $userCount->sum('total_amount')
                ]);
            }
            $coll = collect($temp);
            $unique = $coll->unique('user_id');
            $tempData = array();
            $tempData['grandTotal'] = $unique->sum('total');
            $tempData['data'] = $unique;


            return response()->json(['msg' => null, 'data' => $tempData, 'success' => true], 200);
        } else if ($type === 'day') {
            $data = ParkingBooking::where('space_id', $id)
                ->whereDate('arriving_time', Carbon::today())->orderBy('user_id')
                ->get();
            $temp = array();
            foreach ($data as $value) {
                $userCount = ParkingBooking::with(['user'])->where([['space_id', $id], ['user_id', $value['user_id']]])
                    ->whereDate('arriving_time', Carbon::today())
                    ->get();
                array_push($temp, [
                    'user' => $userCount[0]['user'],
                    'user_id' => $userCount[0]['user_id'],
                    'total' => $userCount->sum('total_amount')
                ]);
            }
            $coll = collect($temp);
            $unique = $coll->unique('user_id');
            $tempData = array();
            $tempData['grandTotal'] = $unique->sum('total');
            $tempData['data'] = array_values($unique->toArray());


            return response()->json(['msg' => null, 'data' => $tempData, 'success' => true], 200);
        } else if ($type === 'month') {


            $data = ParkingBooking::where('space_id', $id)
                ->whereMonth('arriving_time', $date->month)->orderBy('user_id')
                ->get();

            $temp = array();
            foreach ($data as $value) {

                $userCount = ParkingBooking::with(['user'])->where([['space_id', $id], ['user_id', $value['user_id']]])
                    ->whereMonth('arriving_time', $date->month)->whereYear('arriving_time', $date->year)
                    ->get();
                array_push($temp, [
                    'user' => $userCount[0]['user'],
                    'user_id' => $userCount[0]['user_id'],
                    'total' => $userCount->sum('total_amount')
                ]);
            }
            $coll = collect($temp);
            $unique = $coll->unique('user_id');
            $tempData = array();
            $tempData['grandTotal'] = $unique->sum('total');
            $tempData['data'] = array_values($unique->toArray());



            return response()->json(['msg' => null, 'data' => $tempData, 'success' => true], 200);
        } else {
            // galt jawab
        }
        ParkingBooking::where('space_id', $id);
    }


    public function transactionCustom(Request $request, $id)
    {
        $Sdate = Carbon::parse($request->start_date);
        $Edate = Carbon::parse($request->end_date);

        $data = ParkingBooking::where('space_id', $id)
            ->whereBetween('arriving_time', [$Sdate->format('Y-m-d'),  $Edate->format('Y-m-d')])->orderBy('user_id')
            ->get();
        $temp = array();
        foreach ($data as $value) {
            $userCount = ParkingBooking::with(['user'])->where([['space_id', $id], ['user_id', $value['user_id']]])
                ->whereBetween('arriving_time', [$Sdate->format('Y-m-d'),  $Edate->format('Y-m-d')])
                ->get();
            array_push($temp, [
                'user' => $userCount[0]['user'],
                'user_id' => $userCount[0]['user_id'],
                'total' => $userCount->sum('total_amount')
            ]);
        }
        $coll = collect($temp);
        $unique = $coll->unique('user_id');
        $tempData = array();
        $tempData['grandTotal'] = $unique->sum('total');
        $tempData['data'] = $unique;
        return response()->json(['msg' => null, 'data' => $tempData, 'success' => true], 200);
    }

    public function forgotPassword(Request $request)
    {
        $password = rand(100000, 999999);

        $gard =  ParkingGuard::where('email', $request->email)->first();
        if ($gard) {

            $gard->password = $password;
            $gard->save();
            $gard->notify(new SendPassword($password));
            return response()->json(['msg' => 'Password send to your email address', 'data' => null, 'success' => false], 200);
        } else {
            $gard =  ParkingOwner::where('email', $request->email)->first();
            if ($gard) {
                $gard->password = $password;
                $gard->save();
                $gard->notify(new SendPassword($password));
                return response()->json(['msg' => 'Password send to your email address', 'data' => null, 'success' => false], 200);
            }
        }
        return response()->json(['msg' => 'No User Found ', 'data' => null, 'success' => false], 200);
    }
}
