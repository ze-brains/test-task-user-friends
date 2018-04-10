<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RecommendedFriends extends Model
{
    protected $fillable = [
        'user_id',
        'friend_id',
        'rate',
    ];
}
