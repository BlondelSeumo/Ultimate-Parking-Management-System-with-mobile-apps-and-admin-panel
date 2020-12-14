<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;

class SubscriptionBuy extends Model
{
    //
    protected $fillable = [
        'owner_id', 'plan_id', 'price', 'start_at', 'end_at', 'sub_id'
    ];
    protected $table = 'subscription_buy';
    protected $appends = ['time_left'];
    public function getTimeLeftAttribute()
    {
        return Carbon::parse($this->attributes['end_at'])->diffForHumans();
    }
    public function Owner()
    {
        return $this->belongsTo('App\ParkingOwner', 'owner_id', 'id');
    }
    protected $dates = ['start_at', 'end_at'];
}
