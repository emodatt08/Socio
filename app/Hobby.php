<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hobby extends Model
{
    protected $table = 'hobbies';
    public $timestamps = false;
    protected $fillable = [
        'name'
    ];
}
