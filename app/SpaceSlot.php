<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SpaceSlot extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'zone_id', 'space_id', 'name', 'position',
    ];
    protected $table = 'space_slot';
    public function Zone()
    {
        return $this->belongsTo('App\SpaceZone', 'zone_id', 'id');
    }
}
