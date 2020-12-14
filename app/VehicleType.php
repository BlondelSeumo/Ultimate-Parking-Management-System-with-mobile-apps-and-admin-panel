<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VehicleType extends Model
{
    //
    protected $fillable = [
        'title', 'image', 'status'
    ];
    protected $table = 'vehicle_type';
    protected $appends = ['imageUri'];
    public function getImageUriAttribute()
    {
        return url('upload/') . '/' . $this->attributes['image'];
    }
}
