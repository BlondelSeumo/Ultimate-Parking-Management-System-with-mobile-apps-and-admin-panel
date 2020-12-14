<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    //
    protected $fillable = [
        'user_id', 'space_id', 'star', 'description'
    ];
    protected $table = 'review';
    public function User()
    {
        return $this->belongsTo('App\AppUsers', 'user_id', 'id');
    }
    public function Space()
    {
        return $this->belongsTo('App\ParkingSpace', 'space_id', 'id');
    }
}
