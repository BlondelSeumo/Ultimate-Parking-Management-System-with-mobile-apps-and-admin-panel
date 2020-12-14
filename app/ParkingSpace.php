<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ParkingSpace extends Model
{
    //
    protected $fillable = [
        'owner_id', 'vehicle_types', 'title', 'description', 'facilities', 'address', 'lat', 'lng', 'price_par_hour', 'phone_number', 'available_all_day', 'offline_payment', 'verified', 'status', 'close_time', 'open_time'
    ];
    protected $table = 'parking_space';

    public function getFacilitiesDataAttribute()
    {
        return Facilities::whereIn('id', json_decode($this->attributes['facilities']))->get(['id', 'title', 'image']);
    }
    public function getAvgRatingAttribute()
    {
        $revData = Review::where('space_id', $this->attributes['id'])->get();
        $star = $revData->sum('star');
        if ($star > 0) {
            return $star / count($revData);
        }
        return 'N/A';
    }
    public function getVehicleTypeDataAttribute()
    {
        return VehicleType::where('status', 1)->whereIn('id', explode(',', $this->attributes['vehicle_types']))->get(['id', 'title', 'image']);
    }
    public function Images()
    {
        return $this->hasMany('App\ParkingImage', 'space_id', 'id');
    }
    public function Reviews()
    {
        return $this->hasMany('App\Review', 'space_id', 'id');
    }
    public function Zones()
    {
        return $this->hasMany('App\SpaceZone', 'space_id', 'id');
    }
    public function Guards()
    {
        return $this->hasMany('App\ParkingGuard', 'space_id', 'id');
    }
    public function ParkingOwner()
    {
        return $this->belongsTo('App\ParkingOwner', 'owner_id', 'id');
    }
    public function getFacilitiesAttribute()
    {
        return  json_decode($this->attributes['facilities']);
    }
    public function setFacilitiesAttribute($value)
    {
        $this->attributes['facilities'] = json_encode($value);
    }
}
