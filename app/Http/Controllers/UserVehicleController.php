<?php

namespace App\Http\Controllers;

use App\UserVehicle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserVehicleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $uv = UserVehicle::where('user_id', Auth::user()->id)->get();
        return response()->json(['msg' => null, 'data' => $uv, 'success' => true], 200);
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
        // dd($request->all());
        $request->validate([
            'brand' => 'bail|required',
            'model' => 'bail|required',
            'vehicle_no' => 'bail|required',
        ]);
        $reqData = $request->all();
        $reqData['user_id'] = Auth::user()->id;
        UserVehicle::create($reqData);
        return response()->json(['msg' => 'Thanks', 'data' => null, 'success' => true], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\UserVehicle  $userVehicle
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $uv = UserVehicle::findOrFail($id);
        return response()->json(['msg' => null, 'data' => $uv, 'success' => true], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\UserVehicle  $userVehicle
     * @return \Illuminate\Http\Response
     */
    public function edit(UserVehicle $userVehicle)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\UserVehicle  $userVehicle
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $request->validate([
            'brand' => 'bail|sometimes|required',
            'model' => 'bail|sometimes|required',
            'vehicle_no' => 'bail|sometimes|required',
            'default_vehicle' => 'bail|sometimes|required',
        ]);
        $reqData = $request->all();
        // $reqData['user_id'] = Auth::user()->id;
        if ($request->default_vehicle) {
            UserVehicle::where('user_id', Auth::user()->id)->update(['default_vehicle' => 0]);
        }
        $uv = UserVehicle::findOrFail($id);

        $uv->update($request->all());
        return response()->json(['msg' => 'Updated', 'data' => null, 'success' => true], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\UserVehicle  $userVehicle
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $uv = UserVehicle::find($id);
        $uv->delete();
        return response()->json(['msg' => 'Deleted', 'data' => null, 'success' => true], 200);

        //
    }
}
