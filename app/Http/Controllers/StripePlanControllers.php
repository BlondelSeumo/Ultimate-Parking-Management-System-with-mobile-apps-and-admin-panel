<?php

namespace App\Http\Controllers;

use App\SubscriptionBuy;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use \Stripe as Stripe;

class StripePlanControllers extends Controller
{

    public function __construct()
    {
        // dd(env('STRIPE_SECRET'));
        try {
            //code...
            Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
        } catch (\Throwable $th) {
            //throw $th;
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = [];
        $data['data'] = [];
        try {
            $data =  Stripe\Plan::all();
            foreach ($data as  $value) {
                $value['product'] = Stripe\Product::retrieve($value['product']);
            }
        } catch (\Throwable $th) {
            //throw $th;
        }

        return view('plan.index', ['plan' => $data['data']]);
    }

    public function indexApi()
    {
        # code...
        try {

            $tempData = array();
            $data =  Stripe\Plan::all();
            foreach ($data as  $value) {
                $value['product'] = Stripe\Product::retrieve($value['product']);
            }
            $tempData['plan'] = $data['data'];
            if (Auth::user()->customer_id !== null) {
                $card =  Stripe\Customer::allSources(
                    Auth::user()->customer_id

                );
                $tempData['card'] = $card['data'];
                $tempData['customer_data'] = Stripe\Customer::retrieve(Auth::user()->customer_id);
                $tempData['subscription_data'] = SubscriptionBuy::where('owner_id', Auth::user()->id)->orderBy('id', 'desc')->get()->first();
            }
        } catch (\Throwable $th) {
            //throw $th;
        }

        // cards
        return response()->json(['msg' => null, 'data' =>  $tempData, 'success' => true], 200);
    }

    public function addNewCard(Request $request)
    {
        try {
            if (Auth::user()->customer_id === null) {
                $customer =  Stripe\Customer::create([
                    'name' => Auth::user()->name,
                    'email' =>  Auth::user()->email,
                ]);
                if ($customer) {
                    auth()->user()->update(['customer_id' => $customer['id']]);

                    Stripe\Customer::createSource(
                        $customer['id'],
                        ['source' => $request->id]
                    );
                    return response()->json(['msg' => 'Thanks', 'data' => null, 'success' => true], 200);
                } else {
                    //somthog wrong wtir
                    return response()->json(['msg' => 'SomthingWrong', 'data' => null, 'success' => true], 200);
                }
            } else {
                Stripe\Customer::createSource(
                    Auth::user()->customer_id,
                    ['source' => $request->id]
                );
                return response()->json(['msg' => 'Thanks', 'data' => null, 'success' => true], 200);
            }
        } catch (\Throwable $th) {
            //throw $th;
        }
        return response()->json(['msg' => 'SomthingWrong', 'data' => null, 'success' => true], 200);
    }
    public function changeDefaultStore(Request $request)
    {
        try {
            Stripe\Customer::update(
                Auth::user()->customer_id,
                ['default_source' => $request->id]
            );
        } catch (\Throwable $th) {
            //throw $th;
        }
        return response()->json(['msg' => 'donne', 'data' => null, 'success' => true], 200);
    }
    public function buySubscription($id)
    {
        try {
            $data =  Stripe\Subscription::create([
                'customer' => Auth::user()->customer_id,
                'items' => [['plan' => $id]],
            ]);
            SubscriptionBuy::create([
                'owner_id' => Auth::user()->id,
                'plan_id' => $data['id'],
                'sub_id' =>  $id,
                'price' => $data['plan']['amount'] / 100,
                'start_at' => Carbon::parse($data['current_period_start']),
                'end_at' => Carbon::parse($data['current_period_end']),
            ]);
        } catch (\Throwable $th) {
            //throw $th;
        }
        return response()->json(['msg' => 'donne', 'data' => null, 'success' => true], 200);
    }
    public function deleteCard($id)
    {
        try {

            Stripe\Customer::deleteSource(
                Auth::user()->customer_id,
                $id
            );
        } catch (\Throwable $th) {
            //throw $th;
        }
        return response()->json(['msg' => 'donne', 'data' => null, 'success' => true], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('plan.create');
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

        try {
            $data = \Stripe\Plan::create([
                'amount' => $request->amount * 100,
                'currency' => 'usd',
                'interval' => $request->interval,
                'interval_count' => $request->interval_count,
                'product' => ['name' => $request->name],
            ]);
            return redirect()->route('plan.index')->withStatus(__('Plan Added '));
        } catch (\Throwable $th) {
            //throw $th;
            return redirect()->route('plan.index')->withStatus(__('Something Went Wrong '));
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }
    public function viewBuyer()
    {
        # code...
        $data =  SubscriptionBuy::with(['owner'])->get();
        return view('plan.buyerList', ['plan' => $data]);
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $data;
        try {

            $data = Stripe\Plan::retrieve($id);
            $data['product'] = Stripe\Product::retrieve($data['product']);
        } catch (\Throwable $th) {
            //throw $th;
        }
        return view('plan.edit', ['plan' => $data]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {


        try {
            $data = Stripe\Plan::update(
                $id,
                [
                    'amount' => $request->amount * 100,
                    'currency' => 'usd',
                    'interval' => $request->interval,
                    'interval_count' => $request->interval_count,

                ]
            );
            Stripe\Product::update(
                $request->product_id,
                ['name' => $request->name]
            );
            return redirect()->route('plan.index')->withStatus(__('Plan Updated '));
        } catch (\Throwable $th) {
            //throw $th;
            return redirect()->route('plan.index')->withStatus(__('Something Went Wrong '));
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        try {
            //code...
            $plan = Stripe\Plan::retrieve(
                $id
            );
            $plan->delete();
            return redirect()->route('plan.index')->withStatus(__('Plan Deleted'));
        } catch (\Throwable $th) {
            //throw $th;
            return redirect()->route('plan.index')->withStatus(__('Something Went Wrong '));
        }
    }
}
