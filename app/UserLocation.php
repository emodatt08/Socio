<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserLocation extends Model
{
    protected $table = 'user_locations';
    protected $primaryKey = 'user_id';
    public $incrementing = false;
    public $timestamps = false;
    public function city(){
        return $this->belongsTo('App\City', 'city_id');
    }
    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }

}
