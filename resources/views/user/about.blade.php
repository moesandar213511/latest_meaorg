@extends('user.site_user.user_master')
@section('title')
    About|{{$websiteinfo['website_name']}}
    @endsection
@section('header')

@endsection
@section('content')
    <div class="whole-wrap">
        <div class="container">

            <div class="section-top-border">
                <div class="row">
                     <div class="col-md-4">
                        <!-- <div class="banner-bg"></div> -->
                        <div id="demo" class="carousel slide" data-ride="carousel">
                          <!-- The slideshow -->
                          <div class="carousel-inner">
                            <div class="carousel-item active">
                              <img src="{{url('user/images/about1.jpg')}}" alt="Los Angeles" width="100%">
                            </div>
                            <div class="carousel-item">
                              <img src="{{url('user/images/about1.jpg')}}" alt="Chicago" width="100%">
                            </div>
                            <div class="carousel-item">
                              <img src="{{url('user/images/about1.jpg')}}" alt="New York" width="100%">
                            </div>
                          </div>
                        </div>
                     </div>
                    <div class="col-md-8  mt-sm-20 left-align-p">
                        <h3 class="mb-30 text-center">Our History</h3>
                        <p>{{$websiteinfo['history']}}</p>

                    </div>
                </div>

            </div>
        </div>
  </div>


    <!-- Team Area Starts -->
    <section class="team-area section-padding2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h2>Our Member</h2>
                        <p>Who are in extremely love with eco friendly system.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($special_member as $item)
                <div class="col-lg-3 col-sm-6">
                    <div class="single-team mb-5 mb-lg-0">
                        <div class="team-img team-img1">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="team-footer text-center mt-4">
                            <h3>{{$item['name']}}</h3>
                            <h5>{{$item['education']}}</h5>
                        </div>
                    </div>
                </div>
                    @endforeach

            </div>
        </div>
    </section>
    <!-- Team Area End -->


            <!-- End Sample Area -->
            
            <!-- Start Align Area -->
            <div class="whole-wrap">
                <div class="container">
                    <div class="section-top-border">
                        {{--<h3 class="mb-30 title_color text-center">Table</h3>--}}
                        <br>
                        <div class="progress-table-wrap">
                            <div class="progress-table">
                                <div class="table-head">
                                    <div class="serial">No</div>
                                    <div class="country">Name</div>
                                    <div class="visit">Position</div>
                                    <div class="percentage">Phone Number</div>
                                </div>
                                <div style="display:none">{{$i=0}}</div>
                               @foreach($normal_member as $item)
                                    <div class="table-row">
                                        <div class="serial">{{$i++}}</div>
                                        <div class="country">{{$item['name']}}</div>
                                        <div class="visit">{{$item['education']}}</div>
                                        <div class="percentage">{{$item['phone']}}</div>
                                    </div>
                                   @endforeach
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- End Align Area -->

    <!-- Employee Area Starts -->
    <section class="employee-area section-padding">
       
    </section>
    <!-- Employee Area End -->
@endsection