<?php


namespace App\CustomClass;


use App\Event;

class EventData
{

    private $id;
    private $event_data;

    function __construct($event_id) {
        $event=Event::findOrFail($event_id);
        $this->id=$event->id;
        $this->setEventData($event);
    }

    /**
     * @return mixed
     */
    public function getEventData()
    {
        $this->event_data['photo_url']=Path::$domain_url.'/upload/event/'.$this->event_data['photo'];

        return $this->event_data;
    }

    /**
     * @param mixed $blog_data
     */
    private function setEventData($event_data)
    {
        $this->event_data = $event_data;
    }


    public static function getLatestEvent($count){
        $datas=Event::orderBy('id', 'DESC')->take($count)->get();
        $arr=[];
        foreach ($datas as $item){
            $obj=new EventData($item->id);
            array_push($arr,$obj->getEventData());
        }
        return $arr;
    }

    public static function getCustomEvent($datas){
        $arr=[];
        foreach ($datas as $item){
            $obj=new EventData($item->id);
            array_push($arr,$obj->getEventData());
        }
        return $arr;
    }


}