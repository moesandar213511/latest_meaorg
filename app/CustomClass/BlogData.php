<?php


namespace App\CustomClass;


use App\Blog;
use App\User;

class BlogData
{

    private $id;
    private $blog_data;

    function __construct($blog_id) {
        $blog=Blog::findOrFail($blog_id);
        $this->id=$blog->id;
        $this->setBlogData($blog);
    }

    /**
     * @return mixed
     */
    public function getBlogData()
    {
        $this->blog_data['photo_url']=Path::$domain_url.'/upload/blog/'.$this->blog_data['photo'];

        $user_id = $this->blog_data['user_id'];
        $user = User::findOrFail($user_id);
        $this->blog_data['user_name']=$user->name;

        return $this->blog_data;
    }

    /**
     * @param mixed $blog_data
     */
    private function setBlogData($blog_data)
    {
        $this->blog_data = $blog_data;
    }


    public static function getLatestBlog($count){
        $datas=Blog::orderBy('id', 'DESC')->take($count)->get();
        $arr=[];
        foreach ($datas as $item){
            $obj=new BlogData($item->id);
            array_push($arr,$obj->getBlogData());
        }
        return $arr;
    }

    public static function getCustomBlog($datas){
        $arr=[];
        foreach ($datas as $item){
            $obj=new BlogData($item->id);
            array_push($arr,$obj->getBlogData());
        }
        return $arr;
    }

}