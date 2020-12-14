<?php

namespace App\Http\Controllers;

use App\ParkingImage;
use Illuminate\Http\Request;

class ParkingImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        //
        $data = ParkingImage::where('space_id', $id)->get();
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

        if ($request->images) {
            foreach ($request->images as  $value) {

                $name = (new AppHelper)->saveBase64($value);
                ParkingImage::create([
                    'space_id' => $request->space_id,
                    'image' => $name
                ]);
            }
        }
        return response()->json(['msg' => 'Image Upload ', 'data' => null, 'success' => true], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ParkingImage  $parkingImage
     * @return \Illuminate\Http\Response
     */
    public function show(ParkingImage $parkingImage)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ParkingImage  $parkingImage
     * @return \Illuminate\Http\Response
     */
    public function edit(ParkingImage $parkingImage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ParkingImage  $parkingImage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ParkingImage $parkingImage)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ParkingImage  $parkingImage
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        ParkingImage::find($id)->delete($id);
        return response()->json(['msg' => 'Image Deleted ', 'data' => null, 'success' => true], 200);
    }
}
