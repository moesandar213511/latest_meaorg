<footer class="footer-area section-padding">
            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 ">
                            <div class="single-widget-home mb-5 mb-lg-0">
                                <h3 class="mb-4">Our Company</h3>
                                <p class="our_company" style="text-align: justify;">{{substr($websiteinfo['about'],0,200)}} ...<br>
                                <a href="{{url('about')}}">Read More</a>
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
                                    <li class="mb-2 footer-mid">
                                        <a href="{{url('blog/'.$latest_news[$i]['id'])}}">{{$latest_news[$i]['name']}}</a>
                                    </li>
                                    @endfor
                                </ul>
                            </div>
                            
                        </div>
                        <div class="col-md-3">
                            <div class="single-widge-home">
                                <h3 class="mb-4" style="text-align: center;">Facebook</h3>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </footer>