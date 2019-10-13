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
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3818.6333656034717!2d96.21300891418005!3d16.844535022668932!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c19373aae8dda7%3A0x66b1fddc29486ea!2sGreen%20Hackers%20Institute%20(GHI%20MYANMAR)!5e0!3m2!1sen!2smm!4v1570889069430!5m2!1sen!2smm" width="100%" height="250" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </footer>