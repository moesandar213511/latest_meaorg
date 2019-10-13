<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $fillable = ['id','member_id','logo','name','sub_category_id','email','phone','address','web_url','facebook_url', 'what-we-do', 'why-join-us', 'vision', 'mission', 'about-us','type','ads_date'];
}
