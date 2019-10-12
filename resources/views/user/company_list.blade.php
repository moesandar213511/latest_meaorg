@extends('user.site_user.user_master')
@section('title')
    Company |{{$websiteinfo['website_name']}}
@endsection
@section('page_title')
    <div class="page-title text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <!-- <div class="page_link">
                        <a href="index.html">Home</a>
                        <a href="elements.html">Elements</a>
                    </div> -->
                    <h2>Companies Category Details</h2>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('content')
         <section class="jobs-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    @foreach($companies as $data)
                    <div class="single-job mb-4 d-lg-flex justify-content-between">
                        <div class="job-text">
                            <h4>{{$data['name']}}</h4>
                            <ul class="mt-4">
                               <ul class="mt-4">
                                <li class="mb-3"><h5><i class="fa fa-map-marker"></i> {{$data['address']}}</h5></li>
                                <li class="mb-3"><h5><i class="fa fa-phone"></i> {{$data['phone']}}</h5></li>
                                <li class="mb-3"><h5><i class="fa fa-envelope"></i> {{$data['email']}}</h5></li>
                            </ul>
                        </div>
                        <div class="job-img align-self-center">
                            <img src="{{$data['photo_url']}}" alt="job" style="max-width: 100px;">
                        </div>
                        <div class="job-btn align-self-center">
                            <a href="{{url('company/'.$data['id'])}}" class="third-btn">More Details</a>
                            
                        </div>
                    </div>
                   @endforeach
                </div>
            </div>
            
        </div>
    </section> 
@endsection