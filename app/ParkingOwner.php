<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Laravel\Passport\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class ParkingOwner  extends Authenticatable
{
    //
    use HasApiTokens, Notifiable;
    protected $fillable = [
        'name', 'email', 'phone_no', 'image', 'password', 'verified', 'status', 'subscription_status', 'customer_id', 'stripe_pk', 'stripe_sk'
    ];
    protected $hidden = [
        'password',
    ];
    protected $table = 'parking_owner';
    protected $appends = ['imageUri'];
    public function getImageUriAttribute()
    {
        if (isset($this->attributes['image'])) {

            return url('upload/') . '/' . $this->attributes['image'];
        }
    }
    public function setPasswordAttribute($value)
    {
        // dd($value);
        $this->attributes['password'] = Hash::make($value);
    }
    public function Spaces()
    {
        return $this->hasMany('App\ParkingSpace', 'owner_id', 'id');
    }
}
