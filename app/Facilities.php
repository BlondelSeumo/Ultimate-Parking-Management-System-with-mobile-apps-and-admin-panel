<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;


class Facilities extends Model
{
    //
    protected $fillable = [
        'title', 'image',
    ];
    protected $table = 'facilities';
    protected $appends = ['imageUri'];
    public function getImageUriAttribute()
    {
        return url('upload/') . '/' . $this->attributes['image'];
    }
}
