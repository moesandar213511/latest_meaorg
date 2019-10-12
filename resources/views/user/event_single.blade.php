@extends('user.site_user.user_master')
@section('title')
    {{$event['title']}} |{{$websiteinfo['website_name']}}
@endsection
@section('header')
    <div class="page-title text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2>Event Details</h2>
                    <p>There spirit beginning bearing the open at own every give appear in third you sawe two boys</p>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('content')
   <section class="blog-posts-area section-padding">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 post-list blog-post-list">
                                 <article class="post-course">
                                <div class="row">
                                    <div class="col-md-4 col-sm-5">
                                        <div class="content-pad single-event-meta">
                                            <div class="item-thumbnail">
                                                <img src="{{$event['photo_url']}}" alt="image">
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
                                                        <span class="ph-no">{{$event['event_category']}}</span>
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
                                        <form class="example" action="#" style="margin:auto;max-width:300px">
                                            <input type="text" placeholder="Search Events" name="search2">
                                            <button type="submit"><i class="fa fa-search"></i></button>
                                        </form>                             
                                    </div>
                
                                    
                
                                    <div class="single-widget recent-posts-widget">
                                        <h4 class="title">Recent Events</h4>
                                        <div class="blog-list ">
                                            @foreach($latest_event as $item)
                                                <div class="single-recent-post d-flex flex-row">
                                                    <div class="recent-thumb">
                                                        <img class="img-fluid" src="{{$item['photo_url']}}" alt="" style="width:100px;">
                                                    </div>
                                                    <div class="recent-details">
                                                        <a href="{{url('/blog_detail'.$item['id'])}}">
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