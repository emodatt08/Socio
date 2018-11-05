<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'posts';
    protected $dates = [
        'created_at',
        'updated_at'
    ];
    private $like_count = null;
    private $comment_count = null;
    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }
    public function media(){
        return $this->hasMany('App\PostMedia', 'post_id', 'id');
    }
    public function comments(){
        return $this->hasMany('App\PostComment', 'post_id', 'id');
    }
    public function likes(){
        return $this->hasMany('App\Like', 'post_id', 'id');
    }
    public function getLikeCount(){
        if ($this->like_count == null){
            $this->like_count = $this->likes()->count();
        }
        return $this->like_count;
    }
    public function getCommentCount(){
        if ($this->comment_count == null){
            $this->comment_count = $this->comments()->count();
        }
        return $this->comment_count;
    }
    public function checkOwner($user_id){
        if ($this->user_id == $user_id)return true;
        return false;
    }
    public function hasImage(){
        return $this->has_image;
    }
    public function checkLike($user_id){
        if ($this->likes()->where('like_user_id', $user_id)->get()->first()){
            return true;
        }else{
            return false;
        }
    }
}
