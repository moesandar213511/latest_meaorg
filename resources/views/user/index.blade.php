@extends('user.site_user.user_master')
@section('title')
    Home |{{$websiteinfo['website_name']}}
@endsection

@section('content')
     <section class="">
        <div class="">
            <div class="">
                <div class=" ">
                    <!-- <div class="banner-bg"></div> -->
                    <div id="demo" class="carousel slide" data-ride="carousel">               
                  
                  <!-- The slideshow -->
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="{{asset('user/images/banner-bg.jpg')}}" alt="Los Angeles" width="100%">
                    </div>
                    <div class="carousel-item">
                      <img src="{{asset('user/images/banner-bg.jpg')}}" alt="Chicago" width="100%">
                    </div>
                    <div class="carousel-item">
                      <img src="{{asset('user/images/banner-bg.jpg')}}" alt="New York" width="100%">
                    </div>
                  </div>
                  
                
                  
                </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner Area End -->

    <!-- Search Area Starts -->
    <div class="search-area">
        <div class="search-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <form action="" onsubmit="search_data()"  class="d-md-flex justify-content-between">
                            {{csrf_field()}}

                            <select id="main_id" name="main_id" onchange="set_sub_category()">
                                {{--<option>Main Category</option>--}}
                                @foreach($main_categories as $data)
                                    <option value="{{$data['id']}}">{{$data['name']}}</option>
                                    @endforeach
                            </select>
                            <select name="sub_id" id="sub_id">
                                @foreach($default_sub_categories as $data)
                                    <option value="{{$data['id']}}">{{$data['name']}}</option>
                                @endforeach
                            </select>
                            <input type="text" id="keyword" name="keyword" placeholder="Search Keyword" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Keyword'" required>
                           {{--<button type="submit" class="template-btn">Search</button>--}}
                            <input type="submit" class="template-btn" value="Searchd">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Area End -->
    <br><br>

    <section class="clearfix history">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 style="font-size: 20px; text-align: center;">{{$websiteinfo['website_name']}}</h1>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <p style="font-size: 16px; text-align: center;" class="text-muted">
                                {{$websiteinfo['about']}}
                            </p>
                                <br>
                            <div class="sign text-center">
                                <img src="{{$websiteinfo['photo_url']}}" class="img-fluid" alt="welcom-img">
                            </div>
                            <br>
                            <div class="name">
                                 <h1 class="dr_name text-center">{{$websiteinfo['sign_name']}}</h1>
                            </div>
                             <div class="name">
                                 <h1 class="dr_name text-center">{{$websiteinfo['sign_position']}}</h1>
                            </div>
                        </div>
                    </div>
                </div>
        </section>

        <section style="background-color: #ececec;padding-top: 50px;padding-bottom: 50px;margin-top: 50px;">
            <div class="container">
                <div class="col-md-6 pull-right">
                    <h3 class="h4">
                        Mission
                    </h3>
                     <p>{!! $websiteinfo['mission'] !!}</p>
                </div>
                <div class="col-md-6">
                    <h3 class="h4">
                        Vision
                    </h3>
                    <p>{!! $websiteinfo['mission'] !!}</p>
                </div>
            </div>
        </section>

    

    <!-- Category Area Starts -->
    <section class="category-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h2>All Company Category</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($sub_category as $item)
                    <div class="col-lg-3 col-md-6">
                        <div class="single-category text-center mb-4">
                            <img src="{{$item['logo_url']}}" alt="category">
                            <h4>{{$item['name']}}</h4>
                            <h5>30 Companies</h5>
                            <a href="{{url('category/company/'.$item['id'])}}" class="more">More Details >>></a>
                        </div>
                    </div>
                @endforeach
            </div>
                <div class="more-job-btn mt-5 text-center">
                    <a href="{{url('/category')}}" class="template-btn">View All Category</a>
                </div>
        </div>
    </section>
    <!-- Category Area End -->

    <section class="aa">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="jobs-title">
                        <h2 style="text-align: center;">Latest News & Event</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="edu2_event_des">
                                <h4>Dec</h4>
                                <p>{!! $latest_news[0]['name'] !!}</p>
                                <ul class="post-option text-left">
                                    <li>"By"<a href="#">Admin</a></li>
                                    <li>{!! substr($latest_news[0]['created_at'],0,10) !!}</li>
                                    {{--<li>21 comments</li>--}}
                                </ul>
                                <a href="{{url('/blog/'.$latest_news[0]['id'])}}" class="secondary-btn">Read More</a>
                                <span>26</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img src="{{$latest_news[0]['photo_url']}}">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-6">
                                <img src="{{$latest_news[1]['photo_url']}}">
                            </div>
                            <div class="col-md-6">
                                <div class="edu2_event_des text-right">
                                    <h4>Dec</h4>
                                    <p>{{$latest_news[1]['name']}}</p>
                                    <ul class="post-option text-right">
                                        <li>"By"<a href="#">Admin</a></li>
                                        <li>{!! substr($latest_news[0]['created_at'],0,10) !!}</li>
                                        {{--<li>21 comments</li>--}}
                                    </ul>
                                    <a href="{{url('blog/'.$latest_news[1]['id'])}}" class="secondary-btn">Read More</a>
                                    <span>26</span>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            <br><br>
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="edu2_event_des">
                                <h4>Dec</h4>
                                <p>{{$latest_event[0]['title']}}</p>
                                <ul class="post-option">
                                    <li>"By"<a href="#">Admin</a></li>
                                    <li>{{substr($latest_event[0]['created_at'],0,10)}}</li>
                                    <li>21 comments</li>
                                </ul>
                                <a href="{{url('event/'.$latest_event[0]['id'])}}" class="secondary-btn">Read More</a>
                                <span>26</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img src="{{$latest_event[0]['photo_url']}}">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="{{$latest_event[1]['photo_url']}}">
                        </div>
                        <div class="col-md-6">
                            <div class="edu2_event_des text-right">
                                <h4>Dec</h4>
                                <p>{{$latest_event[1]['title']}}</p>
                                <ul class="post-option">
                                    <li>"By"<a href="#">Admin</a></li>
                                    <li>{{substr($latest_event[1]['created_at'],0,10)}}</li>
                                    <li>21 comments</li>
                                </ul>
                                <a href="{{url('event/'.$latest_event[1]['id'])}}" class="secondary-btn">Read More</a>
                                <span>26</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
   <br><br>

   {{--<section class="bb">--}}
        {{--<div class="container">--}}
            {{--<div class="row">--}}
                {{--<div class="col-lg-12">--}}
                    {{--<div class="jobs-title">--}}
                        {{--<h2 style="text-align: center;">Latest News & Event</h2>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="row">--}}
                {{--<div class="col-md-12">--}}
                    {{--<div class="row">--}}
                        {{--<div class="col-md-12">--}}
                            {{--<div class="text-center cc">--}}
                                {{--<img src="{{asset('assets/images/new-1.jpg')}}" width="100%">--}}
                                {{--<h1> Dec <small style="font-size: 16px;">26 <sup class="text-lowercase">th</sup></small></h1>--}}
                                {{--<p>Lorem Lipsum Proin Gravide Nibh Vel Velit</p>--}}
                                {{--<ul class="post-option text-center">--}}
                                    {{--<li>"By"<a href="#">Admin</a></li>--}}
                                    {{--<li>03/12/2015</li>--}}
                                    {{--<li>21 comments</li>--}}
                                {{--</ul>--}}
                                {{--<a href="#" class="secondary-btn">Read More</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<br>--}}
            {{----}}
            {{--<div class="row">--}}
                {{--<div class="col-md-12">--}}
                    {{--<div class="row">--}}
                        {{--<div class="col-md-12">--}}
                            {{--<div class="text-center cc">--}}
                                {{--<img src="{{asset('user/images/new-1.jpg')}}" width="100%">--}}
                                {{--<h1> Dec <small style="font-size: 16px;">26 <sup class="text-lowercase">th</sup></small></h1>--}}
                                {{--<p>Lorem Lipsum Proin Gravide Nibh Vel Velit</p>--}}
                                {{--<ul class="post-option text-center">--}}
                                    {{--<li>"By"<a href="#">Admin</a></li>--}}
                                    {{--<li>03/12/2015</li>--}}
                                    {{--<li>21 comments</li>--}}
                                {{--</ul>--}}
                                {{--<a href="#" class="secondary-btn">Read More</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<br>--}}

            {{--<div class="row">--}}
                {{--<div class="col-md-12">--}}
                    {{--<div class="row">--}}
                        {{--<div class="col-md-12">--}}
                            {{--<div class="text-center cc">--}}
                                {{--<img src="{{asset('user/images/new-1.jpg')}}" width="100%">--}}
                                {{--<h1> Dec <small style="font-size: 16px;">26 <sup class="text-lowercase">th</sup></small></h1>--}}
                                {{--<p>Lorem Lipsum Proin Gravide Nibh Vel Velit</p>--}}
                                {{--<ul class="post-option text-center">--}}
                                    {{--<li>"By"<a href="#">Admin</a></li>--}}
                                    {{--<li>03/12/2015</li>--}}
                                    {{--<li>21 comments</li>--}}
                                {{--</ul>--}}
                                {{--<a href="#" class="secondary-btn">Read More</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<br>--}}

            {{--<div class="row">--}}
                {{--<div class="col-md-12">--}}
                    {{--<div class="row">--}}
                        {{--<div class="col-md-12">--}}
                            {{--<div class="text-center cc">--}}
                                {{--<img src="{{asset('user/images/new-1.jpg')}}" width="100%">--}}
                                {{--<h1> Dec <small style="font-size: 16px;">26 <sup class="text-lowercase">th</sup></small></h1>--}}
                                {{--<p>Lorem Lipsum Proin Gravide Nibh Vel Velit</p>--}}
                                {{--<ul class="post-option text-center">--}}
                                    {{--<li>"By"<a href="#">Admin</a></li>--}}
                                    {{--<li>03/12/2015</li>--}}
                                    {{--<li>21 comments</li>--}}
                                {{--</ul>--}}
                                {{--<a href="#" class="secondary-btn">Read More</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<br>--}}

            {{--<div class="row">--}}
                {{--<div class="col-md-12">--}}
                    {{--<div class="row">--}}
                        {{--<div class="col-md-12">--}}
                            {{--<div class="text-center cc">--}}
                                {{--<img src="{{asset('user/images/new-1.jpg')}}" width="100%">--}}
                                {{--<h1> Dec <small style="font-size: 16px;">26 <sup class="text-lowercase">th</sup></small></h1>--}}
                                {{--<p>Lorem Lipsum Proin Gravide Nibh Vel Velit</p>--}}
                                {{--<ul class="post-option text-center">--}}
                                    {{--<li>"By"<a href="#">Admin</a></li>--}}
                                    {{--<li>03/12/2015</li>--}}
                                    {{--<li>21 comments</li>--}}
                                {{--</ul>--}}
                                {{--<a href="#" class="secondary-btn">Read More</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<br>--}}
        {{--</div>--}}
    {{--</section>--}}
   {{--<br><br>--}}
    <!-- Jobs Area Starts -->
    <section class="jobs-area section-padding3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="jobs-title">
                        <h2 style="text-align: center;">Popular Company</h2>
                    </div>
                </div>
            </div>
          
            <div class="row">
                <div class="col-md-8">
                    <div class="main-content">
                        <div class="single-content1">
                            @foreach($popular_company as $item)
                            <div class="single-job mb-4 d-lg-flex justify-content-between">
                                <div class="job-img align-self-center">
                                    <img src="{{$item['photo_url']}}" alt="job" style="max-width:200px">
                                </div>
                                <div class="job-text">
                                    <h4>{{$item['name']}}</h4>
                                    <h5>{{$item['subcategory_name']}}</h5>
                                    <ul class="mt-4">
                                        <li class="mb-3"><h5><i class="fa fa-envelope"></i> {{$item['email']}}, <i class="fa fa-phone"></i> {{$item['phone']}}</h5></li>
                                    </ul>
                                </div>
                                <div class="job-btn align-self-center">
                                    <a href="{{url('company/'.$item['id'])}}" class="third-btn job-btn1">More Detail</a>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="row main-content">
                        <div class="col-md-12">
                        <img src="{{asset('user/images/ad.jpg')}}" alt="" width="100%">
                        </div>
                    </div>
                    <br>
                    <div class="row main-content">
                        <div class="col-md-12">
                            <img src="{{asset('user/images/ad.jpg')}}" alt="" width="100%">
                        </div>
                    </div>
                    <br>
                    {{-- <div class="row main-content">
                        <div class="col-md-12">
                            <img src="assets/images/ad.jpg" alt="" width="100%">
                        </div>
                    </div>
                    <div class="row main-content">
                        <div class="col-md-12">
                            <img src="assets/images/ad.jpg" alt="" width="100%">
                        </div>
                    </div>
                    <div class="row main-content">
                        <div class="col-md-12">
                            <img src="assets/images/ad.jpg" alt="" width="100%">
                        </div>
                    </div> --}}
                </div>
            </div>
            <div class="more-job-btn mt-5 text-center">
                        <a href="{{url('companies')}}" class="template-btn">View All Company</a>
            </div>
        </div>
    </section>
    <!-- Jobs Area End -->

     <!-- Download Area Starts -->
    <section class="download-area section-padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="download-text">
                        <h2>Download the app your mobile today</h2>
                        <p class="py-3">Light earth also land can't. May you midst shall lights blessed in lights Have gathered image morning blessed grass him. Appear female rule all seas she'd winged</p>
                        <div class="download-button d-sm-flex flex-row justify-content-start">
                            <div class="download-btn mb-3 mb-sm-0 flex-row d-flex">
                                <i class="fa fa-apple" aria-hidden="true"></i>
                                <a href="#">
                                    <p>
                                        <span>Available</span> <br>
                                        on App Store
                                    </p>
                                </a>
                            </div>
                            <div class="download-btn dark flex-row d-flex">
                                <i class="fa fa-android" aria-hidden="true"></i>
                                <a href="#">
                                    <p>
                                        <span>Available</span> <br>
                                        on Play Store
                                    </p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 pr-0">
                    <div class="download-img"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- Download Area End -->  
@endsection

@section('js')
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        set_sub_category=function(){
            var main=document.getElementById('main_id');
            var main_id=main.value;
            $.ajax({
                type: 'get',
                url: '{{url("get_sub_category")}}'+'/'+main_id,
                cache:false,
                contentType: false,
                processData: false,
                success: function(result) {
                    var sub=document.getElementById('sub_id');
                    sub.innerHTML="";
                    for(var i=0;i<result.length;i++){
//                        sub.innerHTML+="<option value="+result[i].id+">"+result[i].name+"</option>";
                        sub.options[i] = new Option(result[i].name, result[i].name);
                    }

                    console.log(sub.innerHTML);
                    console.log('hello');

                },
            });
        }
        search_data=function () {
            event.preventDefault();
            var sub=document.getElementById('sub_id');
            var sub_id=sub.value;
            var key=document.getElementById('keyword');
            var keyword=key.value;

            var link='{{url('search/company')}}'+'/'+sub_id+'/'+keyword;
            console.log(link);
            window.open(link,'_self');
        }
    </script>
    @endsection