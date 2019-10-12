<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WebSiteInfo extends Model
{
    protected $fillable=['id','about','history','vision','mission','sign_photo','sign_name','sign_position'];
}
