@extends('user.site_user.user_master')
@section('title')
    Gallery |{{$websiteinfo['website_name']}}
@endsection
@section('header')
     <header class="header-area single-page">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="logo-area" style="padding-top: 10px!important;">
                        <a href="index.html" style="font-size: 22px!important;font-weight: bold; color: #0a3!important">Green Hackers</a>
                    </div>
                    <div class="col-lg-10">
                        <div class="custom-navbar">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>  
                        <div class="main-menu main-menu-light">
                            <ul>
                            <li class="active"><a href="{{url('/')}}">home</a></li>
                            <li><a href="{{url('/about')}}">about us</a></li>
                            <li><a href="{{url('/company')}}">company</a></li>
                            <li><a href="{{url('/gallery')}}">Gallery</a></li>
                            <li><a href="{{url('/blog')}}">blog</a></li>
                            <li><a href="{{url('/event')}}">Event</a>
                            <li><a href="{{url('/contactus')}}">contact</a></li>
                        </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-title text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <h2>Gallery</h2>
                        <p>There spirit beginning bearing the open at own every give appear in third you sawe two boys</p>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->
@endsection
@section('content')
    <div class="container gallery-container">

        
        <div class="tz-gallery">

            <div class="row">
                @foreach($gallery as $item)
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{$item}}">
                        <img src="{{$item}}" alt="Park" style="max-height: 300px">
                    </a>
                </div>
                    @endforeach
                {{$paginate->links()}}

            </div>

        </div>

    </div>
@endsection