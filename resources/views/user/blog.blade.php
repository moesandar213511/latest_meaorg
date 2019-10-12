@extends('user.site_user.user_master')
@section('title')
    News|{{$websiteinfo['website_name']}}
@endsection
@section('page_title')
    <div class="page-title text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2>Blog</h2>
                    <p>There spirit beginning bearing the open at own every give appear in third you sawe two boys</p>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('content')
     <!-- Start blog-posts Area -->
    <section class="blog-posts-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 post-list blog-post-list">
                    @foreach($blogs as $item)
                        <div class="single-post">
                            <img class="img-fluid" src="{{$item['photo_url']}}" alt="" width="100%">
                            <ul class="tags">
                                {{--<li><a href="#">Art, </a></li>--}}
                                {{--<li><a href="#">Technology, </a></li>--}}
                                {{--<li><a href="#">Fashion</a></li>--}}
                                <li>{{substr($item['created_at'],0,10)}}</li>
                            </ul>
                            <a href="{{url('/blog/'.$item['id'])}}">
                                <h2>
                                    {{$item['name']}}
                                </h2>
                            </a>
                            <p>
                                {{substr(preg_replace("/&#?[a-z0-9]{2,8};/i","",strip_tags($item['text'])),0,300)}}
                            </p>
                            {{--<div class="bottom-meta">--}}
                                {{--<div class="user-details row align-items-center">--}}
                                    {{--<div class="comment-wrap col-lg-6">--}}
                                        {{--<ul>--}}

                                            {{--<li><a href="#"><span class="lnr lnr-bubble"></span> 06 Comments</a></li>--}}
                                        {{--</ul>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                        </div>
                        @endforeach
                    {{$paginate->links()}}
                </div>


                <div class="col-lg-4 sidebar">
                    <div class="single-widget search-widget">
                        <form class="example" action="#" style="margin:auto;max-width:300px">
                            <input type="text" placeholder="Search Posts" name="search2" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Blogs'" required>
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>								
                    </div>

                    

                    <div class="single-widget recent-posts-widget">
                        <h4 class="title">Recent Blogs</h4>
                        <div class="blog-list ">
                            @foreach($latest_news as $item)
                                <div class="single-recent-post d-flex flex-row">
                                    <div class="recent-thumb">
                                        <img class="img-fluid" src="{{$item['photo_url']}}" alt="" style="width:100px;">
                                    </div>
                                    <div class="recent-details">
                                        <a href="{{url('/blog_detail'.$item['id'])}}">
                                            <h4>
                                                {!! $item['name'] !!}
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
    <!-- End blog-posts Area -->

@endsection