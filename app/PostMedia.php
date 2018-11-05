<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostMedia extends Model
{
    protected $table = 'post_media';
    public $timestamps = false;
    public function getURL(){
        return url('storage/uploads/posts/'.$this->media_path);
    }
}
