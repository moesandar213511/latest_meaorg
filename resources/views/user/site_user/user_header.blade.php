{{--<style>--}}
    {{--.active{--}}
        {{--color: red!important;--}}
        {{--background: red!important;--}}
    {{--}--}}
{{--</style>--}}

<!-- <header class="header-area single-page">
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="logo-area" style="padding-top: 10px!important;">
                    <a href="{{url('/')}}" style="font-size: 22px!important;font-weight: bold; color: #0a3!important">{{$websiteinfo['website_name']}}</a>
                </div>
                <div class="col-lg-8">
                    <div class="custom-navbar">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <div class="main-menu main-menu-light">
                        <ul>
                            <li class="@if($page=='/') active @endif"><a href="{{url('/')}}">home</a></li>
                            <li class="@if($page=='/about') active @endif"><a href="{{url('/about')}}">about us</a></li>
                            <li class="@if($page=='/company') active @endif"><a href="{{url('/companies')}}">company</a></li>
                            <li class="@if($page=='/gallery') active @endif"><a href="{{url('/gallery')}}">Gallery</a></li>
                            <li class="@if($page=='/blog') active @endif"><a href="{{url('/blog')}}">News</a></li>
                            <li class="@if($page=='/event') active @endif"><a href="{{url('/event')}}">Event</a>
                            <li class="@if($page=='/contact') active @endif"><a href="{{url('/contact')}}">contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
   @yield('page_title')
</header> -->
    <style>
          .active a {
            color: #08A8F1!important;
            font-weight:6000px;
            
  }
    @media(min-width: 991px){
    header li a{
        font-size: 12px!important;
    }
}
      
        @media(max-width: 991px) and (min-width: 676px){
          .fixed-top .custom-navbar{
            margin-top: 50px;
          }  
        }
        @media(max-width: 676px) and (min-width: 575px){
          .fixed-top .custom-navbar{
            margin-top: 50px;
          }  
       }
        .fixed-top{
            background-color: #ffffff;
        }
        @media(max-width:991px){
            .logo-area a img{
                width:250px;
            }
        }
    </style>
<header class="header-area main-header fixed-top">

        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-lg-4">

                    <div class="logo-area" style="padding-top: 0px!important;">
                        <a href="{{url('/')}}"><img src="{{asset('/images/monlogo.png')}}" width="300px"></a>
                    </div>
                </div>
                <div class="col-md-9 col-sm-6 col-lg-8">
                    <div class="custom-navbar">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>  
                    <div class="main-menu">
                        <ul>
                            <li class="@if($page=='home') active @endif"><a href="{{url('/')}}">home</a></li>
                            <li class="@if($page=='about') active @endif"><a href="{{url('/about')}}">about us</a></li>
                            <li class="@if($page=='company') active @endif"><a href="{{url('/companies')}}">company</a></li>
                            <li class="@if($page=='gallery') active @endif"><a href="{{url('/gallery')}}">Gallery</a></li>
                            <li class="@if($page=='blog') active @endif"><a href="{{url('/blog')}}">News</a></li>
                            <li class="@if($page=='event') active @endif"><a href="{{url('/event')}}">Event</a>
                            <li class="@if($page=='contact') active @endif"><a href="{{url('/contact')}}">contact</a></li>         
                        </ul>
                    </div>
                </div>
            </div>
        </div>
</header>