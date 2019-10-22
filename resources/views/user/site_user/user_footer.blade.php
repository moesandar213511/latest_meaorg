<style>
   @media(max-width:991px){
       .single-widget-home ul li{
           display:block;  
           text-align:center;
           margin-left: 0px!important;
       }
   }
</style>
   <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.3&appId=375244603347949&autoLogAppEvents=1"></script>
    <footer class="footer-area section-padding">
            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 ">
                            <div class="single-widget-home mb-5 mb-lg-0">
                                <h3 class="mb-4 text-center">Our Company</h3>
                                <p class="our_company" style="text-align: justify;">{{substr($websiteinfo['about'],0,200)}} ...<br>

                                </p>
                              
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-widget-home mb-5 mb-lg-0">
                                <h3 class="mb-4 footer-mid">Main Categories</h3>
                                <ul>
                                    <li class="mb-2 footer-mid"><a href="{{url('/')}}">Home</a></li>
                                    <li class="mb-2 footer-mid"><a href="{{url('/about')}}">About</a></li>
                                    <li class="mb-2 footer-mid"><a href="{{url('/event')}}">Event</a></li>
                                    <li class="mb-2 footer-mid"><a href="{{url('/blog')}}">News </a></li>
                                    <li class="mb-2 footer-mid"><a href="{{url('/contact')}}">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-widget-home mb-5 mb-lg-0">
                                <h3 class="mb-4 footer-mid">Latest Blogs</h3>
                                <ul>
                                    @for($i=0;$i<3;$i++)
                                    <li class="mb-2 ml-5">
                                     <i class="fa fa-arrow-right"></i>
                                        <a href="{{url('blog/'.$latest_news[$i]['id'])}}">{{$latest_news[$i]['name']}}</a>
                                    </li>
                                    @endfor
                                </ul>
                            </div>
                            
                        </div>
                        <div class="col-md-3">
                            <div class="single-widge-home">
                                <h3 class="mb-4" style="text-align: center;">Facebook</h3>
                                {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3818.6333656034717!2d96.21300891418005!3d16.844535022668932!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c19373aae8dda7%3A0x66b1fddc29486ea!2sGreen%20Hackers%20Institute%20(GHI%20MYANMAR)!5e0!3m2!1sen!2smm!4v1570889069430!5m2!1sen!2smm" width="100%" height="250" frameborder="0" style="border:0;" allowfullscreen=""></iframe> --}}
                                <div class="fb-page" data-href="https://www.facebook.com/%E1%80%99%E1%80%BD%E1%80%94%E1%80%BA%E1%80%90%E1%80%AD%E1%80%AF%E1%80%84%E1%80%BA%E1%80%B8%E1%80%9B%E1%80%84%E1%80%BA%E1%80%B8%E1%80%9E%E1%80%AC%E1%80%B8%E1%80%9C%E1%80%AF%E1%80%95%E1%80%BA%E1%80%84%E1%80%94%E1%80%BA%E1%80%B8%E1%80%9B%E1%80%BE%E1%80%84%E1%80%BA%E1%80%A1%E1%80%9E%E1%80%84%E1%80%BA%E1%80%B8-%E1%80%97%E1%80%9F%E1%80%AD%E1%80%AF-102090737868255/" data-tabs="timeline" data-width="" data-height="200px" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/%E1%80%99%E1%80%BD%E1%80%94%E1%80%BA%E1%80%90%E1%80%AD%E1%80%AF%E1%80%84%E1%80%BA%E1%80%B8%E1%80%9B%E1%80%84%E1%80%BA%E1%80%B8%E1%80%9E%E1%80%AC%E1%80%B8%E1%80%9C%E1%80%AF%E1%80%95%E1%80%BA%E1%80%84%E1%80%94%E1%80%BA%E1%80%B8%E1%80%9B%E1%80%BE%E1%80%84%E1%80%BA%E1%80%A1%E1%80%9E%E1%80%84%E1%80%BA%E1%80%B8-%E1%80%97%E1%80%9F%E1%80%AD%E1%80%AF-102090737868255/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/%E1%80%99%E1%80%BD%E1%80%94%E1%80%BA%E1%80%90%E1%80%AD%E1%80%AF%E1%80%84%E1%80%BA%E1%80%B8%E1%80%9B%E1%80%84%E1%80%BA%E1%80%B8%E1%80%9E%E1%80%AC%E1%80%B8%E1%80%9C%E1%80%AF%E1%80%95%E1%80%BA%E1%80%84%E1%80%94%E1%80%BA%E1%80%B8%E1%80%9B%E1%80%BE%E1%80%84%E1%80%BA%E1%80%A1%E1%80%9E%E1%80%84%E1%80%BA%E1%80%B8-%E1%80%97%E1%80%9F%E1%80%AD%E1%80%AF-102090737868255/"></a></blockquote>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </footer>