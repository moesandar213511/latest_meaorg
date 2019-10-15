<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ads extends Model
{
    protected $fillable = [
        'id',
        'photo',
        'link',
        's_date',
        'e_date'
    ];
}
