<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ads_webpage extends Model
{
    protected $fillable = [
        'id',
        'ads_id',
        'webpage_id'
    ];
}
