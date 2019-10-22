<?php

namespace App\Http\Controllers;

use App\Blog;
use App\Company;
use App\CustomClass\BlogData;
use App\CustomClass\CompanyData;
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
use Illuminate\Support\Facades\DB;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    function test(){
         $total_company=DB::select('SELECT COUNT(*) AS total_company FROM `companies` WHERE sub_category_id=4');

         return $total_company[0]->total_company;

    }

    function get_sub_category($id){
        $sub=SubCategory::where('main_id',$id)->get();
        $sub_categories=SubcategoryData::getCustomLimitSubCategory($sub);
        return $sub_categories;
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
