<?php

namespace App\Http\Controllers;

use App\SpaceSlot;
use Illuminate\Http\Request;

class SpaceSlotController extends Controller
{
    //
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'bail|required',

        ]);
        SpaceSlot::findOrFail($id)->update($request->all());
        return response()->json(['msg' => 'Updated', 'data' =>  null, 'success' => true], 200);
    }
    public function delete($id)
    {

        try {
            //code...
            SpaceSlot::findOrFail($id)->forceDelete();
        } catch (\Throwable $th) {
            SpaceSlot::findOrFail($id)->delete();
            //throw $th;
        }
        return response()->json(['msg' => 'Updated', 'data' =>  null, 'success' => true], 200);
    }
}
