<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RecommendedFriend extends Model
{
    protected $fillable = [
        'user_id',
        'friend_id',
        'rate',
    ];

}
