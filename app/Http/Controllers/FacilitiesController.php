<?php

namespace App\Http\Controllers;

use App\Facilities;
use Illuminate\Http\Request;

class FacilitiesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('facilities.index', ['facilities' => Facilities::paginate(15)]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('facilities.create');
    }
    public function indexApi()
    {
        //
        return response()->json(['msg' => null, 'data' => Facilities::all(), 'success' => true], 200);
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
            'title' => 'bail|required|unique:facilities,title',

            'image' => 'bail|required|image',

        ]);
        $reqData = $request->all();
        if ($request->image && $request->image != "undefined") {
            $reqData['image'] = (new AppHelper)->saveImage($request);
        }
        Facilities::create($reqData);
        return redirect()->route('facilities.index')->withStatus(__('Parking Facility added successfully.'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Facilities  $facilities
     * @return \Illuminate\Http\Response
     */
    public function show(Facilities $facilities)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Facilities  $facilities
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $facilities = Facilities::findOrFail($id);

        return view('facilities.edit', ['facilities' => $facilities]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Facilities  $facilities
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //

        $request->validate([
            'title' => 'bail|required|unique:facilities,title,' . $id . 'id',

            'image' => 'bail|nullable|image',

        ]);
        $facilities = Facilities::findOrFail($id);

        $reqData = $request->all();
        if ($request->image && $request->image != "undefined") {
            $reqData['image'] = (new AppHelper)->saveImage($request);
        } else {
            $reqData['image'] = $facilities->image;
        }
        // Beach::create($reqData);

        $facilities->update($reqData);
        //vehicleType::create($request->all());
        return redirect()->route('facilities.index')->withStatus(__('Parking Facility updated successfully.'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Facilities  $facilities
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $facilities = Facilities::findOrFail($id);
        $facilities->delete();
        return redirect()->route('facilities.index')->withStatus(__('Parking Facility deleted successfully.'));
    }
}
