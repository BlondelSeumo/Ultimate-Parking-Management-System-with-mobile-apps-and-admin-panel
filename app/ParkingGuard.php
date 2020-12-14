<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Laravel\Passport\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class ParkingGuard extends Authenticatable
{
    //
    use HasApiTokens, Notifiable;
    protected $fillable = [
        'owner_id', 'name', 'email', 'phone_no', 'image', 'status', 'password', 'space_id'
    ];
    protected $table = 'parking_guard';
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
}
