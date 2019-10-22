@extends('user.site_user.user_master')
@section('title')
    {{$event['title']}} |{{$websiteinfo['website_name']}}
@endsection
@section('css')
    <script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=5da47a4026f4f800126d341a&product=inline-share-buttons" async="async"></script>
@endsection
@section('content')
    <style>
    .breadcrumbs ul li {
    display: inline-block;
    position: relative;
    color: #08A8F1;
    font-size: 12px;
    font-weight: 600;

}
.breadcrumbs ul li:not(:last-child)::after {
    display: inline-block;
    position: relative;
    content: '/';
    margin-left: 6px;
    font-size: 12px;
    font-weight: 600;
    color: #FFFFFF;
    line-height: 0.75;

}
@media(min-width: 991px){
    header li a{
        font-size: 12px!important;
    }
}
@media(min-width: 991px) and (max-width: 1200px){
    .texts{
        top: 100px;
    }
}
@media(max-width: 991px){
    img.div{
        height:35vh!important;
        margin-top: 100px!important;
    }
    h2{
        display: inline-block;
    }
    .whole-wrap{
        margin-top: 0px!important;
    }
    .blog-posts-area{
        margin-top: -120px;
    }
    .custom-sidebar{
      margin-top: 20px;
    }
   
    
   
}

</style>
    <div class="text-center">
        <img src="{{asset('user/images/about.jpg')}}" alt="" class="img-fluid div" width="100%">
        <div class="div texts" style="position: relative;top: -100px; z-index: 100;">
            <h2 class="aab" style="color: #fff; margin-top: -100px;font-size: 48px;" >Event</h2>
            <div class="breadcrumbs">
                <ul>
                    <li><a href="index.html" style="color:#fff!important;">Home</a></li>
                    <li>Event-Detail</li>
                </ul>
            </div>
        </div>
    </div>
   <section class="blog-posts-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-8 post-list blog-post-list">
                        <article class="post-course">
                    <div class="row">
                        <div class="col-md-4 col-sm-5">
                            <div class="content-pad single-event-meta">
                                <div class="item-thumbnail">
                                    <div>
                                        <img src="{{$event['photo_url']}}" alt="image" style="height:250px;" class="img-responsive">
                                    </div>
                                </div><!--/item-thumbnail-->
                            </div>
                        </div>

                        <div class="col-md-8">
                            <div class="content-pad single-course-detail">
                                <div class="course-detail">
                                    <h2>{{$event['title']}}</h2><br>

                                    <div class="course-info row content-pad">
                                        <div class="col-md-6 col-sm-6 v1">
                                            <h4 class="text small-text" style="font-size: 13px!important">Date</h4>
                                            <p>{{$event['date']}}</p>
                                            <h4 class="text small-text" style="font-size: 13px!important">Address</h4>
                                            {{$event['location']}}
                                        </div>

                                        <div class="col-md-6 col-sm-6">
                                            <h4 class="text small-text" style="font-size: 13px!important">Time</h4>
                                            <p>{{$event['timing']}}</p>
                                        </div>
                                    </div><!--/course-info-->

                                    <div class="content-content">
                                        <h4>MORE DETAIL</h4>
                                        <div class="content-dropcap v1">
                                            <p>{!! $event['detail'] !!}</p>
                                        </div>

                                        <div class="event-more-detail">

                                            @if($event['fee']!=null)
                                                <h6 class="text">Fee</h6>
                                                <span class="ph-no">{{$event['phone']}}</span>
                                                @endif
                                            <h6 class="text">Event Type</h6>
                                            <span class="ph-no">{{$event['event_category']}}</span><br><br><br>

                                                <div class="sharethis-inline-share-buttons" data-url="http://localhost/mon_commerce/public/event/{{$event->id}}"></div>    
                                        </div>                           
                                    </div><!--/content-content-->
                                </div><!--/course-detail-->
                            </div><!--/single-content-detail-->         
                        </div>
                    </div>
                </article>
                    
                </div>
                <div class="col-lg-4 sidebar mt-5 mt-lg-0">
                        <div class="single-widget search-widget">
                            <form class="example" action="{{url('/search_event')}}" style="margin:auto;max-width:300px" method="post">
                                {{csrf_field()}}
                            <input type="text" placeholder="Search Posts" name="search_event" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Events'" required>
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>                            
                        </div>
    
        
                        <div class="single-widget recent-posts-widget">
                            <h4 class="title">Recent Events</h4>
                            <div class="blog-list ">
                                @foreach($latest_event as $item)
                                    <div class="single-recent-post d-flex flex-row">
                                        <div class="recent-thumb">
                                            <a href="{{url('/event/'.$item['id'])}}"><img class="img-fluid" src="{{$item['photo_url']}}" alt="" style="width:100px;"></a>
                                        </div>
                                        <div class="recent-details">
                                            <a href="{{url('/event/'.$item['id'])}}">
                                                <h4>
                                                    {!! $item['title'] !!}
                                                </h4>
                                            </a>
                                            <p>
                                                {!! substr($item['created_at'],0,10) !!}
                                            </p>
                                        </div>
                                    </div>
                                @endforeach
                                                                
                            </div>                              
                        </div>      

                        

                    </div>
            </div>
        </div>  
    </section>
@endsection