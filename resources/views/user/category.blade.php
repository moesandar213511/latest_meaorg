@extends('user.site_user.user_master')
@section('title')
    Category |{{$websiteinfo['website_name']}}
@endsection
@section('page_title')
    <div class="page-title text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2>About Us</h2>
                    <p>There spirit beginning bearing the open at own every give appear in third you sawe two boys</p>
                </div>
            </div>
        </div>
    </div>
    @endsection
@section('content')
    <section class="category-area section-padding">
        <div class="container">

            <div class="row">
                @foreach($sub_category as $item)
                    <div class="col-lg-3 col-md-6">
                        <div class="single-category text-center mb-4">
                            <img src="{{$item['logo_url']}}" alt="category">
                            <h4>{{$item['name']}}</h4>
                            <h5>30 Companies</h5>
                            <a href="{{url('company_profile')}}" class="more">More Details >>></a>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="row">
                {{$paginate->links()}}
            </div>

        </div>
    </section>
    <!-- Category Area End -->
@endsection