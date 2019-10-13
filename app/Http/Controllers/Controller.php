<?php

namespace App\Http\Controllers;

use App\Blog;
use App\CustomClass\BlogData;
use App\CustomClass\SubcategoryData;
use App\CustomClass\WebSiteInfo;
use App\CustomClass\WebSiteInfoData;
use App\SubCategory;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use App\Contact;
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    function test(){
        return BlogData::getLatestBlog(3);

    }

    function home_page(){

    }

    public function store(Request $request){
        Contact::create([
            'name'=>$request->get('name'),
            'email'=>$request->get('email'),
            'subject'=>$request->get('subject'),
            'message'=>$request->get('message')
        ]);

        return redirect('contact')->with('msg','success');


    }
}
