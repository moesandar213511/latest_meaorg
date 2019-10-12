<?php

namespace App\Http\Controllers;

use App\CustomClass\Path;
use App\Blog;
use App\Member;
use App\CustomClass\BlogData;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.site_admin.admin.blog')->with([
            'url'=>'blog',
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user_id = Auth::user()->id;
        $file = $request->file('photo');
        $fileName = uniqid() . '_' . $file->getClientOriginalName();
        $file->move(public_path() . '/upload/blog/', $fileName);
// return $request->get('text');

        return Blog::create([
            'photo'=>$fileName,
            'name'=>$request->get('name'),
            'text'=>$request->get('text'),
            'user_id'=>$user_id,
            'author'=>$request->get('author')
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Blog::find($id);
        $data['photo_url']=Path::$domain_url."upload/blog/".$data->photo;
        return json_encode($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->get('id');
        if($request->hasFile('photo')){
            $photo = $request->file('photo');
            $photo_name = uniqid().'_'.$photo->getClientOriginalName();
            $photo->move(public_path('upload/blog/'),$photo_name);
            $blog = Blog::find($id);
            $image_path=public_path().'/upload/blog/'.$blog->photo;
            if(file_exists($image_path)){
                unlink($image_path);
            }
            Blog::findOrFail($id)->update([
                'photo'=>$photo_name,
                'name'=>$request->get('name'),
                'text'=>$request->get('text'),
                'author'=>$request->get('author')
            ]);
        }else {
            Blog::findOrFail($id)->update([
                'name'=>$request->get('name'),
                'text'=>$request->get('text'),
                'author'=>$request->get('author')
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blog = Blog::find($id);
        $image_path=public_path().'/upload/blog/'.$blog->photo;
        if(file_exists($image_path)){
            unlink($image_path);
        }
        $blog->delete();
    }

    public function get_all_blog()
    {
        $user_id = Auth::user()->id;
        $blogs=Blog::where('user_id',$user_id)->orderBy('id', 'desc')->get();
        $arr=[];
        foreach ($blogs as $data){
            $blog_data=new BlogData($data->id);
            array_push($arr,$blog_data->getBlogData());
        }
        return json_encode($arr);
    }

    public function show_teacher_blog()
    {
        return view('teacher.teacher_blog')->with([
            'url'=>'blog'
        ]);
    }
}
