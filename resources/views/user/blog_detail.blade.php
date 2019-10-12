@extends('user.site_user.user_master')
@section('title')
    {!! $blog['name'] !!} |{{$websiteinfo['website_name']}}
@endsection
@section('page_title')
    <div class="page-title text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2>Single Blog</h2>
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
                                <div class="single-post">
                                    <img class="img-fluid" src="{{asset('user/images/p1.jpg')}}" alt="">
                                    <ul class="tags">
                                        {{--<li><a href="#">Art</a></li>--}}
                                        {{--<li><a href="#">Technology</a></li>--}}
                                        {{--<li><a href="#">Fashion</a></li>--}}
                                        <li>{{substr($blog['created_at'],0,10)}}</li>
                                    </ul>
                                    <a href="#">
                                        <h2>
                                            {!! $blog['name'] !!}
                                        </h2>
                                    </a>
                                    <div class="content-wrap">
                                        <p>
                                            {!! $blog['text'] !!}
                                        </p>

                                    </div>
                                    
    
                                <div class="bottom-meta">
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
                                    </div>
    
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
                                        <form class="example" action="#" style="margin:auto;max-width:300px">
                                            <input type="text" placeholder="Search Blogs" name="search2">
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
                                                    <a href="{{url('/blog_detail')}}">
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