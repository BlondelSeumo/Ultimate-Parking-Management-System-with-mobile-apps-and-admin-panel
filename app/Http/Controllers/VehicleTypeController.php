<?php

namespace App\Http\Controllers;

use App\VehicleType;
use Illuminate\Http\Request;

class VehicleTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('vehicleType.index', ['VehicleType' => VehicleType::paginate(15)]);
    }

    public function indexApi()
    {
        //
        return response()->json(['msg' => null, 'data' => VehicleType::where('status', 1)->get(), 'success' => true], 200);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('vehicleType.create');
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
            'title' => 'bail|required|unique:vehicle_type,title',
            'status' => 'bail|required|numeric',
            'image' => 'bail|required|image',

        ]);
        $reqData = $request->all();
        if ($request->image && $request->image != "undefined") {
            $reqData['image'] = (new AppHelper)->saveImage($request);
        }
        VehicleType::create($reqData);
        return redirect()->route('vehicleType.index')->withStatus(__('Vehicle Type added successfully.'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\VehicleType  $vehicleType
     * @return \Illuminate\Http\Response
     */
    public function show(VehicleType $vehicleType)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\VehicleType  $vehicleType
     * @return \Illuminate\Http\Response
     */
    public function edit(VehicleType $vehicleType)
    {
        //
        return view('vehicleType.edit', ['vehicleType' => $vehicleType]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\VehicleType  $vehicleType
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, VehicleType $vehicleType)
    {
        //
        $request->validate([
            'title' => 'bail|required|unique:vehicle_type,title,' . $vehicleType->id . 'id',
            'status' => 'bail|required|numeric',
            'image' => 'bail|nullable|image',

        ]);
        $reqData = $request->all();
        if ($request->image && $request->image != "undefined") {
            $reqData['image'] = (new AppHelper)->saveImage($request);
        } else {
            $reqData['image'] =  $vehicleType->image;
        }
        // Beach::create($reqData);

        $vehicleType->update($reqData);
        //vehicleType::create($request->all());
        return redirect()->route('vehicleType.index')->withStatus(__('Vehicle Type updated successfully.'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\VehicleType  $vehicleType
     * @return \Illuminate\Http\Response
     */
    public function destroy(VehicleType $vehicleType)
    {
        //
        $vehicleType->delete();
        return redirect()->route('vehicleType.index')->withStatus(__('Vehicle Type deleted successfully.'));
    }
}
