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
                            <div class="blog-listing">
                            @if(count($search_event_arr) > 0)
                                @foreach($search_event_arr as $search_data)
                                <div class="blog-item">
                                    <div class="post-item blog-post-item">
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">
                                                <div class="content-pad">
                                                    <div class="blog-thumbnail">
                                                        <div class="item-thumbnail-gallery">
                                                            <div class="item-thumbnail">
                                                                 <a href="{{url('/event/'.$search_data['id'])}}">
                                                                 <img src="{{$search_data['photo_url']}}" alt="image">
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
                                                        <h3 class="title"><a href="{{url('/event/'.$search_data['id'])}}" class="main-color-1-hover">{{$search_data['title']}}</a></h3>
                                                       
                                                        <div class="item-meta blog-item-meta">
                                                             <div class="event-time">Date :  {!! $search_data['date'] !!}</div>
                                                            <div class="event-time">Time :  {!!$search_data['timing']!!}</div>
                                                            <div class="event-place">Location : {!!$search_data['location']!!}</div>
                                                        </div>
                                                        <a class="button" href="{{url('/event/'.$search_data['id'])}}">DETAILS<i class="fa fa-angle-right"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!--/post-item-->
                                    </div>
                                </div><!-- /blog-item -->
                                @endforeach 
                            @else 
                            <h3>Result Not Found !</h3>                          
                            @endif
                            </div><!-- /blog-listing -->
                        </div><!-- /col-md-9 -->
                <div class="col-lg-4 sidebar">
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
                                        <a href="{{url('/event/'.$search_data['id'])}}"><img class="img-fluid" src="{{$item['photo_url']}}" alt="" style="width:100px;"></a>
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