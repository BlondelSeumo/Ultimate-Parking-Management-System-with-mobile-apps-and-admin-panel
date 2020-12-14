<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SpaceZone extends Model
{
    //
    protected $fillable = [
        'space_id', 'owner_id', 'name', 'status',
    ];
    protected $table = 'space_zone';
    public function Slots()
    {
        return $this->hasMany('App\SpaceSlot', 'zone_id', 'id');
    }
}
