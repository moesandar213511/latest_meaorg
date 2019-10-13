{{--<style>--}}
    {{--.active{--}}
        {{--color: red!important;--}}
        {{--background: red!important;--}}
    {{--}--}}
{{--</style>--}}
<header class="header-area single-page">
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
                            <li class="@if($page=='/blog') active @endif"><a href="{{url('/blog')}}">blog</a></li>
                            <li class="@if($page=='/event') active @endif"><a href="{{url('/event')}}">Event</a>
                            <li class="@if($page=='/contact') active @endif"><a href="{{url('/contact')}}">contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
   @yield('page_title')
</header>