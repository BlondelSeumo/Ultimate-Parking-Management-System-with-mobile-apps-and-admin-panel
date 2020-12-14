<?php

namespace App\Http\Controllers;

use App\SpaceSlot;
use App\SpaceZone;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SpaceZoneController extends Controller
{
    //
    public function zoneForSpace($id)

    {
        # code...
        $spaceZone =   SpaceZone::with('slots')->where('space_id', $id)->get();
        return response()->json(['msg' => null, 'data' => $spaceZone, 'success' => true], 200);
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'bail|required',

        ]);
        SpaceZone::findOrFail($id)->update($request->all());
        return response()->json(['msg' => 'Updated', 'data' =>  null, 'success' => true], 200);
    }
    public function delete($id)
    {

        $data = SpaceSlot::where('zone_id', $id)->get();
        foreach ($data as $key => $value) {
            try {
                //code...
                SpaceSlot::find($value->id)->forceDelete();
            } catch (\Throwable $th) {
                $value->zone_id = null;
                $value->update();
                $value->delete();
                //throw $th;
            }
        }
        SpaceZone::findOrFail($id)->delete();


        return response()->json(['msg' => 'Deleted', 'data' =>  null, 'success' => true], 200);
    }
    public function store(Request $request)
    {
        # code...
        $zoneData = SpaceZone::create([
            'space_id' => $request->space_id,
            'owner_id' => Auth::user()->id,
            'name' => $request->name
        ]);
        $slot = [];
        for ($i = 0; $i < (int) $request->size; $i++) {
            # code...
            $slot[] = [
                'zone_id' => $zoneData->id,
                'space_id' => $request->space_id,
                'name' => $zoneData['name'] . ' ' . $i,
                'position' => $i,
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ];
        }

        SpaceSlot::insert($slot);
        return response()->json(['msg' => 'Boom', 'data' =>  null, 'success' => true], 200);
    }
}
