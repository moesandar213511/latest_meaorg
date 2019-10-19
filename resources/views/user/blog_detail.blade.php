@extends('user.site_user.user_master')
@section('title')
    {!! $blog['name'] !!} |{{$websiteinfo['website_name']}}
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
   
    
   
}

</style>
    <div class="text-center">
        <img src="{{asset('user/images/about.jpg')}}" alt="" class="img-fluid div" width="100%">
        <div class="div texts" style="position: relative;top: -100px; z-index: 100;">
            <h2 class="aab" style="color: #fff; margin-top: -100px;font-size: 48px;" >Blog-Detail</h2>
            <div class="breadcrumbs">
                <ul>
                    <li><a href="index.html" style="color:#fff!important;">Home</a></li>
                    <li>Blog-Detail</li>
                </ul>
            </div>
        </div>
    </div>
      <!-- Start blog-posts Area -->
			<section class="blog-posts-area section-padding">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 post-list blog-post-list">
                                <div class="single-post">
                                    <img class="img-fluid" src="{{$blog['photo_url']}}" alt="" style="width:100%;height:400px;" class="img-responsive">
                                    <ul class="tags">
                                        {{--<li><a href="#">Art</a></li>--}}
                                        {{--<li><a href="#">Technology</a></li>--}}
                                        {{--<li><a href="#">Fashion</a></li>--}}
                                        <li>{{substr($blog['created_at'],0,10)}}</li>
                                    </ul>
                                    
                                    <h2>
                                        {!! $blog['name'] !!}
                                    </h2>
                                    
                                    <div class="content-wrap">
                                        <p>
                                            {!! $blog['text'] !!}
                                        </p>

                                    </div>
                                    
    
                                {{-- <div class="bottom-meta">
                                        <div class="user-details row align-items-center">
                                            <div class="social-wrap col-lg-6">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                                </ul>
                                                
                                            </div>
                                        </div>
                                    </div> --}}
                                
                                <div class="sharethis-inline-share-buttons" data-url="http://localhost/mon_commerce/public/blog/{{$blog->id}}"></div>
    
                                <!-- Start comment-sec Area -->
                                <!-- <section class="comment-sec-area py-5">
                                    <div class="container">
                                        <div class="row flex-column">
                                            <h5 class="text-uppercase pb-80">05 Comments</h5>
                                            <br>
                                            <div class="comment-list">
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="thumb">
                                                            <img src="assets/images/c1.jpg" alt="">
                                                        </div>
                                                        <div class="desc">
                                                            <h5><a href="#">Emilly Blunt</a></h5>
                                                            <p class="date">December 4, 2017 at 3:12 pm </p>
                                                            <p class="comment">
                                                                Never say goodbye till the end comes!
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="reply-btn">
                                                           <a href="" class="btn-reply text-uppercase">reply</a> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="comment-list left-padding">
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="thumb">
                                                            <img src="assets/images/c2.jpg" alt="">
                                                        </div>
                                                        <div class="desc">
                                                            <h5><a href="#">Emilly Blunt</a></h5>
                                                            <p class="date">December 4, 2017 at 3:12 pm </p>
                                                            <p class="comment">
                                                                Never say goodbye till the end comes!
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="reply-btn">
                                                           <a href="" class="btn-reply text-uppercase">reply</a> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="comment-list left-padding">
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="thumb">
                                                            <img src="assets/images/c3.jpg" alt="">
                                                        </div>
                                                        <div class="desc">
                                                            <h5><a href="#">Emilly Blunt</a></h5>
                                                            <p class="date">December 4, 2017 at 3:12 pm </p>
                                                            <p class="comment">
                                                                Never say goodbye till the end comes!
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="reply-btn">
                                                           <a href="" class="btn-reply text-uppercase">reply</a> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="comment-list">
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="thumb">
                                                            <img src="assets/images/c4.jpg" alt="">
                                                        </div>
                                                        <div class="desc">
                                                            <h5><a href="#">Emilly Blunt</a></h5>
                                                            <p class="date">December 4, 2017 at 3:12 pm </p>
                                                            <p class="comment">
                                                                Never say goodbye till the end comes!
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="reply-btn">
                                                           <a href="" class="btn-reply text-uppercase">reply</a> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="comment-list">
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="thumb">
                                                            <img src="assets/images/c5.jpg" alt="">
                                                        </div>
                                                        <div class="desc">
                                                            <h5><a href="#">Emilly Blunt</a></h5>
                                                            <p class="date">December 4, 2017 at 3:12 pm </p>
                                                            <p class="comment">
                                                                Never say goodbye till the end comes!
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="reply-btn">
                                                           <a href="" class="btn-reply text-uppercase">reply</a> 
                                                    </div>
                                                </div>
                                            </div>                                                                                                                                                                
                                        </div>
                                    </div>    
                                </section> -->
                                <!-- End comment-sec Area -->
                                
                                <!-- Start commentform Area -->
                                {{--<div class="commentform-area py-5">--}}
                                        {{--<form action="#">--}}
                                                {{--<div class="left">--}}
                                                    {{--<input type="text" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" required>--}}
                                                    {{--<input type="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" required>--}}
                                                    {{--<input type="text" placeholder="Enter subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter subject'" required>--}}
                                                {{--</div>--}}
                                                {{--<div class="right">--}}
                                                    {{--<textarea name="message" cols="20" rows="7"  placeholder="Enter Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" required></textarea>--}}
                                                {{--</div>--}}
                                                {{--<button type="submit" class="template-btn">subscribe now</button>--}}
                                            {{--</form>--}}
                                {{--</div>--}}
                                <!-- End commentform Area -->
    
    
                                </div>																		
                            </div>
                            <div class="col-lg-4 sidebar mt-5 mt-lg-0">
                                    <div class="single-widget search-widget">
                                    <form class="example" action="{{url('/search_blog')}}" style="margin:auto;max-width:300px" method="post">
                                            {{csrf_field()}}
                                        <input type="text" placeholder="Search Posts" name="search_blog" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Blogs'" required>
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </form>							
                                    </div>
                
                                    
                
                                    <div class="single-widget recent-posts-widget">
                                        <h4 class="title">Recent Blogs</h4>
                                        <div class="blog-list ">
                                            @foreach($latest_news as $item)
                                            <div class="single-recent-post d-flex flex-row">
                                                <div class="recent-thumb">
                                                    <a href="{{url('/blog/'.$item['id'])}}"><img class="img-fluid" src="{{$item['photo_url']}}" alt="" style="width:100px;height:80px" class="img-responsive"></a>
                                                </div>
                                                <div class="recent-details">
                                                    <a href="{{url('/blog/'.$item['id'])}}">
                                                        <h4>
                                                            {!! $item['name'] !!}
                                                        </h4>
                                                    </a>
                                                    <p>
                                                        {!! substr($item['created_at'],0,10) !!}
                                                    </p>
                                                </div>
                                            </div>
                                            <br>                                  @endforeach
                                        </div>								
                                    </div>		
                                </div>
                        </div>
                    </div>	
            </section>
                <!-- End blog-posts Area -->
@endsection