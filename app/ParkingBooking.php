<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ParkingBooking extends Model
{
    //
    protected $fillable = [
        'order_no', 'owner_id', 'space_id', 'user_id', 'vehicle_id', 'payment_type', 'payment_status', 'status', 'arriving_time', 'leaving_time', 'total_amount', 'discount', 'slot_id', 'payment_token'
    ];
    protected $table = 'parking_booking';
    // protected $appends = ['imageUri'];
    // public function getImageUriAttribute()
    // {
    //     return url('upload/') . '/' . $this->attributes['image'];
    // }

    public function User()
    {
        return $this->belongsTo('App\AppUsers', 'user_id', 'id');
    }
    public function Owner()
    {
        return $this->belongsTo('App\ParkingOwner', 'owner_id', 'id');
    }
    public function Space()
    {
        return $this->belongsTo('App\ParkingSpace', 'space_id', 'id');
    }
    public function Vehicle()
    {
        return $this->belongsTo('App\UserVehicle', 'vehicle_id', 'id');
    }
}
