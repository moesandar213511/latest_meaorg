<?php

namespace App\Http\Controllers;

use App\Blog;
use App\Company;
use App\CustomClass\Path;
use App\Event;
use App\Gallery;
use App\MainCategory;
use App\Member;
use App\WebSiteInfo;
use App\Ads;
use App\Ads_webpage;
use App\CustomClass\BlogData;
use App\CustomClass\CompanyData;
use App\CustomClass\EventData;
use App\CustomClass\MemberData;
use App\CustomClass\SubcategoryData;
use App\CustomClass\WebSiteInfoData;
use App\CustomClass\AdsData;
use App\SubCategory;
use Illuminate\Http\Request;

class UIController extends Controller
{
    public function index(){
        // $ads_photo = Ads::all();
        $ads_list = Ads_webpage::where('webpage_id',1)->get();
        $arr = [];
        foreach ($ads_list as $data) {
            $ads_data = new AdsData($data->ads_id);
            array_push($arr, $ads_data->getAdsData());
        }
        //  return $arr;

        $website_info=WebSiteInfoData::getWebSiteInfo();
        $subcategory=SubCategory::paginate(8);
        $subcategorydata=SubcategoryData::getCustomLimitSubCategory($subcategory);
        $latest_news=BlogData::getLatestBlog(6);
        $latest_event=EventData::getLatestEvent(6);
        $company=Company::all();
        $sortedcompany=CompanyData::getCustomCompany($company);
        $popular_company=array_slice($sortedcompany, 0, 10);

        $main_categories=MainCategory::all();
        $default_sub_categories=SubCategory::where('main_id',$main_categories[0]['id'])->get();

//        return $subcategorydata;
        return view('user.index')->with([
            'websiteinfo'=>$website_info,
            'sub_category'=>$subcategorydata,
            'latest_news'=>$latest_news,
            'latest_event'=>$latest_event,
            'popular_company'=>$popular_company,
            'main_categories'=>$main_categories,
            'default_sub_categories'=>$default_sub_categories,
            'page'=>'home',
            // 'ads_photo' => $ads_photo,
            'ads_array' => $arr
        ]);
    }
    public function company_list(){
        $ads_list = Ads_webpage::where('webpage_id', 3)->get();
        $arr = [];
        foreach ($ads_list as $data) {
            $ads_data = new AdsData($data->ads_id);
            array_push($arr, $ads_data->getAdsData());
        }


        $ads_photo = Ads::all();
        $website_info=WebSiteInfoData::getWebSiteInfo();
        $latest_news=BlogData::getLatestBlog(4);

        $companies=Company::orderBy('id','desc')->paginate(10);
        $company_list=CompanyData::getCustomCompany($companies);

        return view('user.company_list')->with([
            'websiteinfo'=>$website_info,
            'latest_news'=>$latest_news,
            'ads_photo' => $ads_photo,
            'companies'=>$company_list,
            'paginate'=>$companies,
            'page'=>'company',
            'ads_array' => $arr
        ]);
    }

    public function search_company($sub_id,$keyword){
        $website_info=WebSiteInfoData::getWebSiteInfo();
        $latest_news=BlogData::getLatestBlog(4);

        $company=Company::where('sub_category_id',$sub_id)->where('name', 'LIKE', "%{$keyword}%")->paginate(10);
        $result=CompanyData::getCustomCompany($company);
        return view('user.company_list')->with([
            'websiteinfo'=>$website_info,
            'latest_news'=>$latest_news,
            'page'=>'company',
            'companies'=>$result,
            'paginate'=>$company,
            'banner_title'=>'Result For '.$keyword,
        ]);
    }

    public function category_company($id){
        $website_info=WebSiteInfoData::getWebSiteInfo();
        $latest_news=BlogData::getLatestBlog(4);
        
        $companies=Company::where('sub_category_id',$id)->paginate(10);
        $company_list=CompanyData::getCustomCompany($companies);

        return view('user.company_list')->with([
            'websiteinfo'=>$website_info,
            'latest_news'=>$latest_news,

            'companies'=>$company_list,
            'paginate'=>$companies,
            'page'=>'company'
        ]);
    }
    public function company_profile($id){
        $website_info=WebSiteInfoData::getWebSiteInfo();
        $latest_news=BlogData::getLatestBlog(4);
        $obj=new CompanyData($id);

        return view('user.company_profile')->with([
            'websiteinfo'=>$website_info,
            'latest_news'=>$latest_news,

            'company'=>$obj->getCompanyData(),
            'page'=>'company'
        ]);

    }
     public function about(){
        $ads_list = Ads_webpage::where('webpage_id', 1)->get();
        $arr = [];
        foreach ($ads_list as $data) {
            $ads_data = new AdsData($data->ads_id);
            array_push($arr, $ads_data->getAdsData());
        }

         $website_info=WebSiteInfoData::getWebSiteInfo();
         $latest_news=BlogData::getLatestBlog(4);

         $special_member_paginate=Member::where('type','special')->paginate(8);
         $special_member=MemberData::getCustomMember($special_member_paginate);
         $normal_member_paginate=Member::where('type','normal')->paginate(8);
         $normal_member=MemberData::getCustomMember($normal_member_paginate);

        return view('user.about')->with([
            'websiteinfo'=>$website_info,
            'latest_news'=>$latest_news,

            'special_paginate'=>$special_member_paginate,
            'normal_paginate'=>$normal_member_paginate,
            'special_member'=>$special_member,
            'normal_member'=>$normal_member,
            'page'=>'about'
        ]);
    }
     public function category(){
         $website_info=WebSiteInfoData::getWebSiteInfo();
         $latest_news=BlogData::getLatestBlog(4);

         $subcategory=SubCategory::paginate(8);
         $subcategorydata=SubcategoryData::getCustomLimitSubCategory($subcategory);

         return view('user.category')->with([
             'websiteinfo'=>$website_info,
             'latest_news'=>$latest_news,

             'sub_category'=>$subcategorydata,
            'paginate'=>$subcategory,
             'page'=>'category'
//             'page'=>'home'
         ]);
    }
     public function gallery(){
         $website_info=WebSiteInfoData::getWebSiteInfo();
         $latest_news=BlogData::getLatestBlog(4);

         $gallery=Gallery::paginate(9);

         $arr=[];
         foreach ($gallery as $item){
             array_push($arr,Path::$domain_url.'upload/photo/'.$item['photo']);
         }

        return view('user.gallery')->with([
            'websiteinfo'=>$website_info,
            'latest_news'=>$latest_news,
            'gallery'=>$arr,
            'page'=>'gallery',
            'paginate'=>$gallery
        ]);
    }

     public function blog_detail($id){
         $website_info=WebSiteInfoData::getWebSiteInfo();
         $latest_news=BlogData::getLatestBlog(6);

         $obj=new BlogData($id);
         $blog=$obj->getBlogData();
        return view('user.blog_detail')->with([
            'websiteinfo'=>$website_info,
            'latest_news'=>$latest_news,
            'blog'=>$blog,
            'page'=>'blog'
        ]);
    }
     public function contactus(){
         $website_info=WebSiteInfoData::getWebSiteInfo();
         $latest_news=BlogData::getLatestBlog(6);
        return view('user.contactus')->with([
            'websiteinfo'=>$website_info,
            'latest_news'=>$latest_news,
            'page'=>'contact'
        ]);
    }
     public function event(){
        $ads_list = Ads_webpage::where('webpage_id', 6)->get();
        $arr = [];
        foreach ($ads_list as $data) {
            $ads_data = new AdsData($data->ads_id);
            array_push($arr, $ads_data->getAdsData());
        }

        $ads_photo = Ads::all();
         $website_info=WebSiteInfoData::getWebSiteInfo();
         $latest_news=BlogData::getLatestBlog(4);
         $latest_event=EventData::getLatestEvent(6);

         $events=Event::orderBy('id','desc')->paginate(5);
         $events_data=EventData::getCustomEvent($events);

         return view('user.event')->with([
             'websiteinfo'=>$website_info,
             'latest_news'=>$latest_news,
             'latest_event'=>$latest_event,
            'ads_photo' => $ads_photo,
             'events'=>$events_data,
             'paginate'=>$events,
             'page'=>'event',
             'ads_array' => $arr
         ]);
    }
    public function blog(){
        $ads_list = Ads_webpage::where('webpage_id', 5)->get();
        $arr = [];
        foreach ($ads_list as $data) {
            $ads_data = new AdsData($data->ads_id);
            array_push($arr, $ads_data->getAdsData());
        }

        $ads_photo = Ads::all();
        $website_info=WebSiteInfoData::getWebSiteInfo();
        $latest_news=BlogData::getLatestBlog(6);

        $blogs=Blog::orderBy('id','desc')->paginate(5);
        $blog_data=BlogData::getCustomBlog($blogs);

        return view('user.blog')->with([
            'websiteinfo'=>$website_info,
            'latest_news'=>$latest_news,
            'blogs'=>$blog_data,
            'paginate'=>$blogs,
            'page'=>'blog',
            'ads_photo' => $ads_photo,
            'ads_array' => $arr
        ]);
    }
     public function event_single($id){
         $website_info=WebSiteInfoData::getWebSiteInfo();
         $latest_news=BlogData::getLatestBlog(6);

         $latest_event=EventData::getLatestEvent(6);

         $obj=new EventData($id);
         $event=$obj->getEventData();
         return view('user.event_single')->with([
             'websiteinfo'=>$website_info,
             'latest_news'=>$latest_news,
             'latest_event'=>$latest_event,

             'event'=>$event,
             'page'=>'event'
         ]);
    }
    public function search_event(Request $request)
    {
        $website_info = WebSiteInfoData::getWebSiteInfo();
        $web_info = WebSiteInfo::all();
        $latest_news = BlogData::getLatestBlog(6);
        $latest_event = EventData::getLatestEvent(6);

        $search_event = $request->get('search_event');
        $search_events = Event::where('title', 'LIKE', "%$search_event%")->get();
        $search_event_arr = [];
        foreach ($search_events as $data) {
            $search_events_data = new EventData($data->id);
            array_push($search_event_arr, $search_events_data->getEventData());
        }
        // return $search_event_arr;
        return view('user.search_event')->with([
            'websiteinfo' => $website_info,
            'latest_news' => $latest_news,
            'web_info' => $web_info,
            'latest_event' => $latest_event,
            'search_event_arr' => $search_event_arr,
            'page' => 'event'
        ]);
    }
    public function search_blog(Request $request)
    {
        $website_info = WebSiteInfoData::getWebSiteInfo();
        $web_info = WebSiteInfo::all();
        $latest_news = BlogData::getLatestBlog(6);
        $latest_event = EventData::getLatestEvent(6);

        $search_blog = $request->get('search_blog');
        $search_blogs = Blog::where('name', 'LIKE', "%$search_blog%")->get();
        $search_blog_arr = [];
        foreach ($search_blogs as $data) {
            $search_blogs_data = new BlogData($data->id);
            array_push($search_blog_arr, $search_blogs_data->getBlogData());
        }
        // return $search_blog_arr;
        return view('user.search_blog')->with([
            'websiteinfo' => $website_info,
            'latest_news' => $latest_news,
            'web_info' => $web_info,
            'latest_event' => $latest_event,
            'search_blog_arr' => $search_blog_arr,
            'page' => 'blog'
        ]);
    }
}
