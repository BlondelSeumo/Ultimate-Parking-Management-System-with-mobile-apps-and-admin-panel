<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminSetting extends Model
{
    //
    protected $fillable = [
        'pp', 'country_code', 'verification', 'notification',
    ];
    protected $table = 'admin_setting';
}
