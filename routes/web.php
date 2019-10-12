<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('test','Controller@home');

// For admin
Auth::routes();
Route::get('/admin', 'HomeController@index');
Route::get('logout', 'Auth\LoginController@logout');


Route::group(['middleware' => ['auth','admin']], function () {

    Route::get('/admin/blog','AdminController@blog');

    // member
    Route::get('admin/member','MemberController@index');
    Route::post('admin/insert_member', 'MemberController@store');
    Route::get('admin/get_all_member', 'MemberController@get_all_member');
    Route::get('admin/delete_member/{id}', 'MemberController@destroy');  
    Route::get('admin/member_detail/{id}', 'MemberController@member_detail');
    Route::get('/edit/member/{id}', 'MemberController@edit');
    Route::post('/update_member', 'MemberController@update_member'); 

    // main category
    Route::get('admin/main_category','CategoryController@show_main');
    Route::post('admin/insert_main_category', 'CategoryController@store_main');
    Route::get('admin/get_all_main_category', 'CategoryController@get_all_main_category');
    Route::post('/edit/main_category/{id}','CategoryController@edit_main');
    Route::post('/update/main_category','CategoryController@update_main');
    Route::get('/delete/main_category/{id}', 'CategoryController@destroy_main');

    // sub category
    Route::get('admin/sub_category','CategoryController@show_sub');
    Route::post('admin/insert_sub_category', 'CategoryController@store_sub');
    Route::get('admin/get_all_sub_category', 'CategoryController@get_all_sub_category');
    Route::post('/edit/sub_category/{id}','CategoryController@edit_sub');
    Route::post('/update/sub_category','CategoryController@update_sub');
    Route::get('/delete/sub_category/{id}', 'CategoryController@destroy_sub');

    //    blog
    Route::get('/admin/blog','BlogController@index');
    Route::post('/insert/blog','BlogController@store');
    Route::post('/get_all_blog','BlogController@get_all_blog');
    Route::post('/edit/blog/{id}','BlogController@edit');
    Route::post('/update/blog','BlogController@update');
    Route::post('/delete/blog/{id}','BlogController@destroy');

    //    event
    Route::get('/admin/event','EventController@index');
    Route::post('/insert/event','EventController@store');
    Route::post('/get_all_event','EventController@get_all_event');
    Route::post('/edit/event/{id}','EventController@edit');
    Route::post('/update/event','EventController@update');
    Route::post('/delete/event/{id}','EventController@destroy');

});


//for member dashboard
Route::group(['middleware' => ['auth', 'member']], function () {

    Route::get('member/event', function(){
        return view('admin.site_admin.member.event')->with(['url' => 'event']);
    });

    Route::get('member/company', 'CompanyController@index');
    Route::post('member/insert_company', 'CompanyController@store');
    Route::get('member/get_all_company', 'CompanyController@get_all_company');
    Route::get('member/company_detail/{id}', 'CompanyController@company_detail');
    Route::get('member/delete_company/{id}', 'CompanyController@destroy');
    Route::get('member/company_photos/{id}', 'CompanyController@destroy');
    Route::post('member/edit_company/{id}', 'CompanyController@edit');
    Route::post('member/update_company', 'CompanyController@update');
    Route::get('member/company_photodetail/{id}', 'CompanyController@photo_detail');
    Route::get('member/company_onephoto/{id}', 'CompanyController@company_onephoto');
    Route::post('member/update_photos', 'CompanyController@update_photos');

});

Auth::routes();

// For UI
Route::get('/', 'UIController@index');
Route::get('/companies', 'UIController@company_list');
Route::get('/company/{id}', 'UIController@company_profile');
Route::get('category/company/{cat_id}', 'UIController@category_company');
Route::get('/about', 'UIController@about');
Route::get('/category', 'UIController@category');
Route::get('/gallery', 'UIController@gallery');
Route::get('/blog', 'UIController@blog');
Route::get('/blog/{id}', 'UIController@blog_detail');
Route::get('/contact', 'UIController@contactus');
Route::get('/event', 'UIController@event');
Route::get('/event/{id}', 'UIController@event_single');

// Route::get('/home', 'HomeController@index')->name('home');
