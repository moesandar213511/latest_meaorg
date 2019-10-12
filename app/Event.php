<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable = [
        'id',
        'photo',
        'title',
        'fee',
        'date',
        'timing',
        'location',
        'event_category',
        'detail'
    ];
}
