<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $table = 'cities';
    public $timestamps = false;
    public function country(){
        return $this->belongsTo(\App\Country::class, 'country_id');
    }

}
