<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Following extends Model
{
    protected $table = 'user_following';
    public $timestamps = false;
    public function follower(){
        return $this->belongsTo('App\User', 'follower_user_id');
    }
    public function following(){
        return $this->belongsTo('App\User', 'following_user_id');
    }
    public function getAllow(){
        return $this->allow;
    }
}
