<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $table = 'countries';
    public $primaryKey = 'id';
    public $fillable =  [
            'code3l',
            'code2l',
            'name',
            'name_official',
            'flag32',
            'flag128',
            'latitude',
            'longitude',
            'zoom',
            'status'
        ];
}
