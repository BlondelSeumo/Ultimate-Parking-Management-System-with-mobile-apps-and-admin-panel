<?php

namespace App;

use Illuminate\Support\Facades\Hash;
use Laravel\Passport\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class AppUsers extends  Authenticatable
{
    //
    use HasApiTokens, Notifiable;
    


    protected $fillable = [
        'name', 'email', 'phone_no', 'OTP', 'verified', 'status', 'image', 'password', 'device_token'
    ];
    protected $table = 'app_users';
    protected $hidden = [
        'password',
    ];
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
    public function Vehicle()
    {
        return $this->hasMany('App\UserVehicle', 'user_id', 'id');
    }
    public function Reviews()
    {
        return $this->hasMany('App\Review', 'user_id', 'id');
    }
}
