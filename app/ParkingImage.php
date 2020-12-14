<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ParkingImage extends Model
{
    //
    protected $fillable = [
        'space_id', 'image',
    ];
    protected $table = 'parking_image';
    protected $appends = ['imageUri'];
    public function getImageUriAttribute()
    {
        return url('upload/') . '/' . $this->attributes['image'];
    }
}
