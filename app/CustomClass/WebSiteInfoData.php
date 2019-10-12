<?php
/**
 * Created by PhpStorm.
 * User: Alintan
 * Date: 12-Oct-19
 * Time: 8:35 AM
 */

namespace App\CustomClass;


use App\WebSiteInfo;

class WebSiteInfoData
{

    public static function getWebSiteInfo()
    {
        $website_data=WebSiteInfo::find(1);
        $website_data->photo_url=Path::$domain_url.'user/images/'.$website_data['sign_photo'];
        return $website_data;
    }
}