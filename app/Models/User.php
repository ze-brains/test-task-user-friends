<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    public function usersFriends()
    {
        return $this->hasMany('App\Models\UserFriend', 'user_id', 'id');
    }

    public function userFriendUsers()
    {
        return $this->hasMany('App\Models\UserFriend', 'friend_id', 'id');
    }

}
