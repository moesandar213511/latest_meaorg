@extends('user.site_user.user_master')
@section('title')
    {{$company['name']}} |{{$websiteinfo['website_name']}}
@endsection

@section('page_title')
    <div class="page-title text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    {{--<h2>{{$company['name']}}</h2>--}}
                    {{--<p>There spirit beginning bearing the open at own every give appear in third you sawe two boys</p>--}}
                </div>
            </div>
        </div>
    </div>
    @endsection

@section('content')
      <!-- Search Area Starts -->
      {{--<br><br><br><br>--}}
    <div class="search-area">
        <div class="search-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="single-job mb-4 d-lg-flex justify-content-between">
                                <div class="job-img align-self-center">
                                    <img src="{{$company['photo_url']}}" alt="job" style="width:200px">
                                </div>
                                <div class="job-text">
                                    <h4>{{$company['name']}}</h4>
                                    <h5>{{$company['subcategory_name']}}</h5>
                                    <ul class="mt-4">
                                        <li class="mb-3"><h5><i class="fa fa-map-marker"></i>{{$company['address']}}</h5></li>
                                        <li class="mb-3"><h5><i class="fa fa-envelope"></i> {{$company['email']}}</h5></li>
                                        <li><h5><i class="fa fa-phone"></i> {{$company['phone']}}</h5></li>
                                    </ul>
                                </div>
                                <div class="job-btn align-self-center">
                                    
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Area End -->
     <div class="container">
         <div class="section-top-border">
             <h3 class="title_color">About Us</h3>
             <div class="row">
                 <div class="col-md-12">
                     <p class="generic-blockquote">{{$company['about-us']}}</p>
                 </div>
             </div>
         </div>
     </div>

    <div class="whole-wrap">
        <div class="container">
            <h3>Gallery</h3>
            <div class="section-top-border">
                <div class="row gallery-item">
                    @foreach($company['company_photos'] as $item)
                    <div class="col-md-3">
                        <a href="{{$item}}" class="img-gal"><div class="single-gallery-image" style="background: url({{$item}});"></div></a>
                    </div>
                        @endforeach

                </div>
            </div>
        </div>
    </div>

    {{--<!-- Employee Area Starts -->--}}
    {{--<section class="employee-area section-padding">--}}
        {{--<div class="container">--}}
            {{--<div class="row">--}}
                {{--<div class="col-lg-12">--}}
                    {{--<div class="section-top text-center">--}}
                        {{--<h2>WHAT SAY OUR CLIENT</h2>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="row">--}}
                {{--<div class="col-lg-12">--}}
                    {{--<div class="employee-slider owl-carousel">--}}
                        {{--<div class="single-slide d-sm-flex">--}}
                            {{--<div class="slide-img employee1">--}}
                                {{--<div class="hover-state">--}}
                                    {{--<div class="hover-text text-center">--}}
                                        {{--<h3>david aron</h3>--}}
                                        {{--<h5>Facebook</h5>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--<div class="slide-text align-self-center">--}}
                                {{--<i class="fa fa-quote-left"></i>--}}
                                {{--<p>Appear, called day. Sixth two after eve moved called winged very heaven two lights let all third gathered.</p>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<div class="single-slide d-sm-flex">--}}
                            {{--<div class="slide-img employee2">--}}
                                {{--<div class="hover-state">--}}
                                    {{--<div class="hover-text text-center">--}}
                                        {{--<h3>david aron</h3>--}}
                                        {{--<h5>Twitter</h5>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--<div class="slide-text align-self-center">--}}
                                {{--<i class="fa fa-quote-left"></i>--}}
                                {{--<p>Appear, called day. Sixth two after eve moved called winged very heaven two lights let all third gathered.</p>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</section>--}}
    {{--<!-- Employee Area End -->--}}

    <div class="whole-wrap">
        <div class="container">
            <div class="section-top-border">
                        <h3 class="title_color">What we do</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <p class="generic-blockquote">{{$company['what-we-do']}}</p>
                            </div>
                        </div>
            </div>
            <div class="section-top-border">
                        <h3 class="title_color">Why you should join us</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <p class="generic-blockquote">{{$company['why-join-us']}}</p>
                            </div>
                        </div>
            </div>
            <div class="section-top-border">
                <h3 class="title_color">Our Vision</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <p class="generic-blockquote">{{$company['vision']}}</p>
                            </div>
                        </div>
            </div>
            <div class="section-top-border">
                <h3 class="title_color">Our Mission</h3>
                <div class="row">
                    <div class="col-md-12">
                        <p class="generic-blockquote">{{$company['mission']}}</p>
                    </div>
                </div>
            </div>

        </div>
    </div>

@endsection