<?php

namespace App\Http\Controllers;

use App\ParkingGuard;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ParkingGuardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = ParkingGuard::where('owner_id', Auth::user()->id)->get();

        return response()->json(['msg' => null, 'data' => $data, 'success' => true], 200);
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
            'email' => 'bail|required|email|unique:parking_guard,email',
            'name' => 'bail|required',
            'password' => 'bail|required|min:6',
            'phone_no' => 'bail|required'
        ]);
        $reqData = $request->all();
        $reqData['owner_id'] = Auth::user()->id;
        $data =   ParkingGuard::create($reqData);
        // $token = $data->createToken('PayParkOwner')->accessToken;
        // $data['token'] = $token;
        return response()->json(['msg' => 'Guard  added ', 'data' => null, 'success' => true], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ParkingGuard  $parkingGuard
     * @return \Illuminate\Http\Response
     */
    public function show(ParkingGuard $parkingGuard)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ParkingGuard  $parkingGuard
     * @return \Illuminate\Http\Response
     */
    public function edit(ParkingGuard $parkingGuard)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ParkingGuard  $parkingGuard
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ParkingGuard $parkingGuard)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ParkingGuard  $parkingGuard
     * @return \Illuminate\Http\Response
     */
    public function destroy(ParkingGuard $parkingGuard)
    {
        //
    }
    public function availableGuard()
    {
        $available =  ParkingGuard::where('owner_id', Auth::user()->id)->Where('space_id', null)->get();
        return response()->json(['msg' => 'Guard  added ', 'data' => $available, 'success' => true], 200);
    }
}
