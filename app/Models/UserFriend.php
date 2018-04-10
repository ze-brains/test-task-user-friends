<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserFriend extends Model
{
    protected $fillable = [
        'user_id',
        'friend_id',
    ];

    public function user()
    {
        return $this->belongsToMany('App\Models\User', 'users','user_id');
    }

    public function friend()
    {
        return $this->belongsToMany('App\Models\User', 'users', 'friend_id', 'id');
    }

}
