<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserVehicle extends Model
{

    protected $fillable = [
        'user_id', 'brand', 'model', 'vehicle_no', 'default_vehicle', 'vehicle_type_id'
    ];
    protected $table = 'user_vehicle';
    public function User()
    {
        return $this->belongsTo('App\AppUsers', 'user_id', 'id');
    }
}
