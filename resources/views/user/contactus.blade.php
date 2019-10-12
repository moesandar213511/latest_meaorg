@extends('user.site_user.user_master')
@section('title')
    Contact |{{$websiteinfo['website_name']}}
@endsection
@section('header')
    <div class="page-title text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2>Contact Us</h2>
                    <p>There spirit beginning bearing the open at own every give appear in third you sawe two boys</p>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('content')
    <!-- Map Area Starts -->
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3818.6333656034717!2d96.21300891418005!3d16.844535022668932!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c19373aae8dda7%3A0x66b1fddc29486ea!2sGreen%20Hackers%20Institute%20(GHI%20MYANMAR)!5e0!3m2!1sen!2smm!4v1570889069430!5m2!1sen!2smm" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
    </section>
    <!-- Map Area End -->

<br><br>
    <!-- Contact Form Starts -->
    <section class="contact-form section-padding3">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 mb-5 mb-lg-0">
                    <div class="d-flex">
                        <div class="into-icon">
                            <i class="fa fa-home"></i>
                        </div>
                        <div class="info-text">
                            <h4>{{$websiteinfo['address']}}</h4>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="into-icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="info-text">
                            <h4>{{$websiteinfo['phone']}}</h4>
                            <p>Mon to Fri 9am to 6 pm</p>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="into-icon">
                            <i class="fa fa-envelope-o"></i>
                        </div>
                        <div class="info-text">
                            <h4>s{{$websiteinfo['email']}}</h4>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <form action="#">
                        <div class="left">
                            <input type="text" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" required>
                            <input type="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" required>
                            <input type="text" placeholder="Enter subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter subject'" required>
                        </div>
                        <div class="right">
                            <textarea name="message" cols="20" rows="7"  placeholder="Enter Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" required></textarea>
                        </div>
                        <button type="submit" class="template-btn">contact now</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Form End -->
@endsection