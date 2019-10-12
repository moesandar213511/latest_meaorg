<?php

namespace App\Http\Controllers;

use App\CustomClass\Path;
use App\CustomClass\EventData;
use App\Event;
use Illuminate\Http\Request;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.site_admin.admin.event')->with([
            'url'=>'event'
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
        $file = $request->file('photo');
        $fileName = uniqid() . '_' . $file->getClientOriginalName();
        $file->move(public_path() . '/upload/event/', $fileName);

        Event::create([
            'photo'=>$fileName,
            'title'=>$request->get('title'),
            'fee'=>$request->get('fee'),
            'date'=>$request->get('date'),
            'timing'=>$request->get('timing'),
            'location'=>$request->get('location'),
            'event_category'=>$request->get('category'),
            'detail'=>$request->get('detail')
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
        $data = Event::find($id);
        $data['photo_url']=Path::$domain_url."upload/event/".$data->photo;
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
            $photo->move(public_path('upload/event/'),$photo_name);
            $event = Event::find($id);
            $image_path=public_path().'/upload/event/'.$event->photo;
            if(file_exists($image_path)){
                unlink($image_path);
            }
            Event::findOrFail($id)->update([
                'photo'=>$photo_name,
                'title'=>$request->get('title'),
                'fee'=>$request->get('fee'),
                'date'=>$request->get('date'),
                'timing'=>$request->get('timing'),
                'location'=>$request->get('location'),
                'event_category'=>$request->get('category'),
                'detail'=>$request->get('detail')
            ]);
        }else {
            Event::findOrFail($id)->update([
                'title'=>$request->get('title'),
                'fee'=>$request->get('fee'),
                'date'=>$request->get('date'),
                'timing'=>$request->get('timing'),
                'location'=>$request->get('location'),
                'event_category'=>$request->get('category'),
                'detail'=>$request->get('detail')
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
        $event = Event::find($id);
        $image_path=public_path().'/upload/event/'.$event->photo;
        if(file_exists($image_path)){
            unlink($image_path);
        }
        $event->delete();
    }

    public function get_all_event()
    {
        $events=Event::orderBy('id', 'desc')->get();
        $arr=[];
        foreach ($events as $data){
            $event_data=new EventData($data->id);
            array_push($arr,$event_data->getEventData());
        }
        return json_encode($arr);
    }
}
