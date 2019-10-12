<?php


namespace App\CustomClass;

use App\MainCategory;
use App\SubCategory;
use App\User;

class SubcategoryData
{

    private $id;
    private $sub_cat_data;

    function __construct($sub_cat_id) {
        $sub_cat=SubCategory::findOrFail($sub_cat_id);
        $this->id=$sub_cat->id;
        $this->setSubcategoryData($sub_cat);
    }

    /**
     * @return mixed
     */
    public function getSubcategoryData()
    {
        $main_cat_id = $this->sub_cat_data['main_id'];
        $main_cat = MainCategory::findOrFail($main_cat_id);
        $this->sub_cat_data['main_cat_name']=$main_cat->name;
        $this->sub_cat_data['logo_url']=Path::$domain_url.'upload/category_logo/'.$this->sub_cat_data->logo;
        $this->total_company=30;

        return $this->sub_cat_data;
    }

    /**
     * @param mixed $blog_data
     */
    private function setSubcategoryData($sub_cat_data)
    {
        $this->sub_cat_data = $sub_cat_data;
    }

    public static function getCustomLimitSubCategory($datas){
        $arr=[];
        foreach ($datas as $item){
            $obj=new SubcategoryData($item->id);
            array_push($arr,$obj->getSubcategoryData());
        }
        return $arr;
    }

}