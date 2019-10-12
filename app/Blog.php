<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $fillable = [
        'id',
        'photo',
        'name',
        'text',
        'user_id',
        'author'
    ];
}
