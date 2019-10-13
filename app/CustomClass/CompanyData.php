<?php


namespace App\CustomClass;

use App\Company;
use App\Gallery;
use App\SubCategory;

class CompanyData
{

    private $id;
    private $company_data;

    function __construct($company_id)
    {
        $company = Company::findOrFail($company_id);
        $this->id = $company->id;
        $this->setCompanyData($company);
    }

    /**
     * @return mixed
     */
    public function getCompanyData()
    {
        $this->company_data['photo_url']=Path::$domain_url.'/upload/logo/'.$this->company_data['logo'];

        $company_id = $this->company_data['id'];
        $gallery = Gallery::where('company_id',$company_id)->get();
        $gallery_photo=[];
        foreach($gallery as $item){
            array_push($gallery_photo,Path::$domain_url.'/upload/photo/'.$item->photo);
        }
        $this->company_data['company_photos'] = $gallery_photo;

        $sub_category_id = $this->company_data['sub_category_id'];
        $sub_category = SubCategory::findOrFail($sub_category_id);
        $this->company_data['subcategory_name']=$sub_category->name;


        return $this->company_data;
    }

    /**
     * @param mixed $blog_data
     */
    private function setCompanyData($company_data)
    {
        $this->company_data = $company_data;
    }



    public static function getRandomCompany($count){
        $datas=Company::all()->random($count);
        $arr=[];
        foreach ($datas as $item){
            $obj=new CompanyData($item->id);
            array_push($arr,$obj->getCompanyData());
        }
        return $arr;
    }

    public static function getCustomCompany($datas){
        $datas=self::sort_companies_by_companytype($datas);
        $arr=[];
        foreach ($datas as $item){
            $obj=new CompanyData($item->id);
            array_push($arr,$obj->getCompanyData());
        }
        return $arr;
    }

    private static function sort_companies_by_companytype($companies_arr){
        $free_company=[];
        $paid_company=[];
        foreach ($companies_arr as $company){
            if($company['type']=="ads"){
                array_push($paid_company,$company);
            }
            else{
                array_push($free_company,$company);
            }
        }
        shuffle($free_company);
        shuffle($paid_company);
        $arr=array_merge($paid_company,$free_company);
        return $arr;
    }


}
