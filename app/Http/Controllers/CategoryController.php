<?php

namespace App\Http\Controllers;

use App\CustomClass\SubcategoryData;
use App\MainCategory;
use App\SubCategory;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    
    public function show_main()
    {
        return view('admin.site_admin.admin.main_category')->with([
            'url'=>'main_category'
        ]);
    }

    public function store_main(Request $request)
    {
        MainCategory::create([
            'name'=>$request->get('name')
        ]);
    }

    public function get_all_main_category()
    {
        $main_cat = MainCategory::orderBy('id','desc')->get();
        return json_encode($main_cat);
    }

    public function edit_main($id)
    {
        $data = MainCategory::find($id);
        return json_encode($data);
    }

    public function update_main(Request $request)
    {
        $id = $request->get('id');
            MainCategory::findOrFail($id)->update([
                'name'=>$request->get('name'),
            ]);
    }

    public function destroy_main($id)
    {
        MainCategory::find($id)->delete();
    }


    public function show_sub()
    {
        $main_cat = MainCategory::all();
        return view('admin.site_admin.admin.sub_category')->with([
            'url'=>'sub_category',
            'main_cats'=>$main_cat
        ]);
    }

    public function store_sub(Request $request)
    {
        SubCategory::create([
            'name'=>$request->get('name'),
            'main_id'=>$request->get('main_category'),
            'logo'=>$request->get('logo')
        ]);
    }

    public function get_all_sub_category()
    {
        $sub_cats = SubCategory::orderBy('id','desc')->get();
        $arr=[];
        foreach ($sub_cats as $data){
            $sub_cat_data=new SubcategoryData($data->id);
            array_push($arr,$sub_cat_data->getSubcategoryData());
        }
        return json_encode($arr);
    }

    public function edit_sub($id)
    {
        $sub_cat_obj = new SubcategoryData($id);
        $sub_cat = $sub_cat_obj->getSubcategoryData();
        return json_encode($sub_cat);
    }

    public function update_sub(Request $request)
    {
        $id = $request->get('id');
            SubCategory::findOrFail($id)->update([
                'name'=>$request->get('name'),
                'main_id'=>$request->get('main_category'),
                'logo'=>$request->get('logo')
            ]);
    }

    public function destroy_sub($id)
    {
        SubCategory::find($id)->delete();
    }

}
