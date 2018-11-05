<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DirectMessage extends Model
{
    protected $table = 'user_direct_messages';
    protected $dates = [
        'created_at',
        'updated_at'
    ];
    public function dataImport($data = [])
    {
        foreach($data as $key => $value) {
            $this->$key = $value;
        }
    }
    public function sender(){
        return $this->belongsTo(\App\User::class, 'sender_user_id');
    }
    public function receiver(){
        return $this->belongsTo(\App\User::class, 'receiver_user_id');
    }

}
