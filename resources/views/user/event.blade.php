@extends('user.site_user.user_master')
@section('title')
    Event |{{$websiteinfo['website_name']}}
@endsection
@section('page_title')
    <div class="page-title text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2>Event</h2>
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
                    @foreach($events as $item)
                        <div class="blog-listing">
                                <div class="blog-item">
                                    <div class="post-item blog-post-item">
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">
                                                <div class="content-pad">
                                                    <div class="blog-thumbnail">
                                                        <div class="item-thumbnail-gallery">
                                                            <div class="item-thumbnail">
                                                                 <a href="{{url('/event/'.$item['id'])}}">
                                                                <img src="{{$item['photo_url']}}" alt="image">
                                                                <div class="thumbnail-hoverlay main-color-1-bg"></div>
                                                                <div class="thumbnail-hoverlay-cross"></div>
                                                                </a>
                                                            </div>
                                                        </div>            
                                                    </div><!--/blog-thumbnail-->
                                                    <div class="thumbnail-overflow hidden-xs hidden-sm">
                                                        
                                                    </div><!--/thumbnail-overflow-->
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="content-pad">
                                                    <div class="item-content">
                                                        <h3 class="title"><a href="{{url('/event/'.$item['id'])}}" class="main-color-1-hover">{{$item['title']}}</a></h3>
                                                        {{--<div class="item-excerpt blog-item-excerpt">--}}
                                                            {{--<p>{{substr(preg_replace("/&#?[a-z0-9]{2,8};/i","",strip_tags($item['detail'])),0,100)}}</p>--}}
                                                        {{--</div>--}}
                                                        <div class="item-meta blog-item-meta">
                                                            
                                                            <div class="event-time">Date :  {!! $item['date'] !!}</div>
                                                            <div class="event-time">Time :  {!! $item['timing'] !!}</div>
                                                            <div class="event-place">Location : {!! $item['location'] !!}</div>
                                                        </div>
                                                        <a class="button" href="{{url('/event/'.$item['id'])}}">DETAILS<i class="fa fa-angle-right"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!--/post-item-->
                                    </div>
                                </div><!-- /blog-item -->

                               
                            </div><!-- /blog-listing -->
                        @endforeach
                    {{$paginate->links()}}
                </div><!-- /col-md-9 -->
                <div class="col-lg-4 sidebar">
                    <div class="single-widget search-widget">
                        <form class="example" action="#" style="margin:auto;max-width:300px">
                            <input type="text" placeholder="Search Posts" name="search2" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Events'" required>
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