@extends('user.site_user.user_master')
@section('title')
    Gallery |{{$websiteinfo['website_name']}}
@endsection
@section('content')

<style>
.main-menu ul li a{
    text-decoration:none;
}
.main-menu a:hover{
    text-decoration:none!inmportant;
}
    .breadcrumbs ul li {
    display: inline-block;
    position: relative;
    color: #08A8F1;
    font-size: 12px;
    font-weight: 600;

}
footer p{
    font-size:16px!important;
}
footer a{
    font-size:16px!important;
}
footer .single-widget-home li.ml-5{
    margin-left: 60px!important;
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
   
    
   
}

</style>
    <div class="text-center">
        <img src="{{asset('user/images/about.jpg')}}" alt="" class="img-fluid div" width="100%">
        <div class="div texts" style="position: relative;top: -100px; z-index: 100;">
            <h2 class="aab" style="color: #fff; margin-top: -100px;font-size: 48px;" >Gallery</h2>
            <div class="breadcrumbs">
                <ul>
                    <li><a href="index.html" style="color:#fff!important;">Home</a></li>
                    <li>Gallery</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container gallery-container">

        
        <div class="tz-gallery">

            <div class="row">
                @foreach($gallery as $item)
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{$item}}">
                        <img src="{{$item}}" alt="Park" style="width:300px;height:300px;">
                    </a>
                </div>
                    @endforeach
                {{$paginate->links()}}

            </div>

        </div>

    </div>
@endsection