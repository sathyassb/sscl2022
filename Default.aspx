<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/usercontrols/logo-slider.ascx" TagPrefix="uc1" TagName="logoslider" %>


<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceholder" runat="Server">
    <style>
        .about-city {
            height: 760px;
            width: 80%;
            position: relative;
            color: white;j
        }

        .about-city-contents {
            margin: 0;
            position: absolute;
            top: 50%;
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
        }

        .about-city h1 {
            font-size: 30px;
        }

        .about-city h2 {
            font-size: 24px;
            color: #8bbc3e;
        }
        /*Counter*/

        /*-=-=-=-=-=-=-=-=-=-=-=- */
        /* Column Grids */
        /*-=-=-=-=-=-=-=-=-=-=-=- */

        .col_half {
            width: 49%;
        }

        .col_third {
            width: 32%;
        }

        .col_fourth {
            width: 23.5%;
        }

        .col_fifth {
            width: 18.4%;
        }

        .col_sixth {
            width: 15%;
        }

        .col_three_fourth {
            width: 74.5%;
        }

        .col_twothird {
            width: 66%;
        }

        .col_half,
        .col_third,
        .col_twothird,
        .col_fourth,
        .col_three_fourth,
        .col_fifth {
            position: relative;
            display: inline;
            display: inline-block;
            float: left;
            margin-right: 2%;
            margin-bottom: 20px;
        }

        .end {
            margin-right: 0 !important;
        }
        /* Column Grids End */


        .counter {
            padding: 20px 0;
            border-radius: 5px;
        }

        .count-title {
            font-size: 40px;
            font-weight: normal;
            margin-top: 10px;
            margin-bottom: 0;
            text-align: center;
        }

        .count-text {
            font-size: 13px;
            font-weight: normal;
            margin-top: 10px;
            margin-bottom: 0;
            text-align: center;
        }

        .fa-2x {
            margin: 0 auto;
            float: none;
            display: table;
            color: #4ad1e5;
        }
        /*News Scroll */

        .news-scroll {
            height: 340px;
            background-color: #FFF0;
            overflow: hidden;
        }

            .news-scroll ul {
                list-style: none;
                position: relative;
                padding: 0;
            }

            .news-scroll li {
                width: 100%;
                height: 100px;
                background: #f0f0f0;
                border-bottom: 1px solid #eee;
                border-radius: 10px;
                margin-top: 7px;
            }

            .news-scroll h2 {
                padding-top: 10px;
                font-size: 20px;
                margin-left: 10px;
            }

            .news-scroll p {
                text-align: left;
                padding: 10px;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }

            /*End of news scroll*/
        .s7-left {
            margin-top: 140px;
        }

        .tender-info {
            height: 150px;
            overflow: hidden;
        }

            .tender-info img {
                vertical-align: middle;
                border-style: none;
                width: 100%;
                height: auto;
            }

        .single-post-high {
            background: #FFFFFF;
            overflow: hidden;
            box-shadow: 3px 4px 25px #0000001a;
            border-radius: 10px;
            transition: .3s;
        }

        .helpline p {
            margin-top: 20px;
            color: #d63e3e;
            font-size: 19px;
            font-family: 'Heebo';
        }

        .helpline-no {
            margin-top: 15px;
            font-size: 19px;
        }

        .section-nine h3 {
            font-size: 19px;
        }
    </style>

    <section class="section-one">
        <div class="home-primary-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-1 col-12">
                    </div>
                    <div class="col-md-4 col-12 about-city">
                        <div class="about-city-contents">
                            <h1>Shivamogga Smart City Limited</h1>
                            <h2>A Vibrant city nestled as "Gateway of Malnad"</h2>
                            <h5>Shivamogga, located at the heart of the state of Karnataka, is located on the banks of the Tunga River, about 569 m above sea level. </h5>
                        </div>
                    </div>
                    <div class="col-md-7 col-12">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">

                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                                <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                                <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                            </ol>
                            <div class="carousel-inner">

                                <div class="carousel-item">
                                    <img class="bd-placeholder-img" src="assets/images/slider1.jpg">
                                    <div class="container">
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="bd-placeholder-img" src="assets/images/slider2.jpg">
                                    <div class="container">
                                    </div>
                                </div>
                                <div class="carousel-item active">
                                    <img class="bd-placeholder-img" src="assets/images/slider3.jpg">
                                    <div class="container">
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="bd-placeholder-img" src="assets/images/slider4.jpg">
                                    <div class="container">
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <section class="section-two">
        <div class="container">
            <div class="row">
                <div class="col-3 no-padding">
                    <div class="s2-card s2-card-1 p-s2">
                        <i class="fa fa-warning fa-3x"></i>
                        <h4>Integrated Command and Control  Center</h4>
                        <p>Card 1 Description is the 2 line text </p>
                    </div>
                </div>
                <div class="col-3 no-padding">
                    <div class="s2-card s2-card-2 p-s2">
                        <i class="fa fa-warning fa-3x"></i>
                        <h4>Smart Education in Govt. Schools</h4>
                        <p>Smart Education in Govt. Schools</p>
                    </div>
                </div>
                <div class="col-3 no-padding">
                    <div class="s2-card s2-card-3 p-s2">
                        <i class="fa fa-warning fa-3x"></i>
                        <h4>Intelligent Traffic Management System</h4>
                        <p>Intelligent Traffic Management System</p>
                    </div>
                </div>
                <div class="col-3 no-padding">
                    <div class="s2-card s2-card-4 p-s2">
                        <i class="fa fa-warning fa-3x"></i>
                        <h4>Development of Parks, Stadium and amenities </h4>
                        <p>Development of Parks, Stadium and amenities</p>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <section class="section-three">
        <div class="container-fluid">
            <div class="row">
                <div class="col-7 s3-left">
                    <h3>Shivamogga Smart City</h3>
                    <p>
                        Shivamogga Smart City was selected by MoH&UA,GoI in 2nd round of the Smart Cities Challenge on 03.10.2016  and incorporated as Special Purpose vehicle (SPV)
                        <br />

                        Registered Under the Companies Act 2013 on 07.02.2017
                        <br />

                        SSCL was established as an SPV to develop the core  infrastructure in ABD area (Central Business District of Shivamogga ) on retrofitting model as per the guidelines of MoH&UA ,GoI and implementing various infrastructure projects, Parks & open Spaces, Conservancies, ICT projects, Heritage Projects and other allied infra facilities to improve the Urban Service delivery to the Citizens and to enhance the Ease of Living of Shivamogga
                        <br />
                    </p>
                </div>
                <div class="col-5 s3-right">
                    <img src="assets/images/about-bg.jpg" />
                </div>
            </div>
        </div>
    </section>
    <section class="section-four">
        <h3>Project Status</h3>
        <div class="row no-margin">
            <div class="container">
                <div class="wrapper">
                    <div class="counter col_fourth">
                        <i class="fa  fa-flag fa-2x"></i>
                        <h2 class="timer count-title count-number" data-to="21" data-speed="1500"></h2>
                        <p class="count-text ">Projects Completed</p>
                    </div>

                    <div class="counter col_fourth">
                        <i class="fa  fa-hourglass-1 fa-2x"></i>
                        <h2 class="timer count-title count-number" data-to="31" data-speed="1500"></h2>
                        <p class="count-text ">Projects ongoing</p>
                    </div>

                    <div class="counter col_fourth">
                        <i class="fa  fa-briefcase fa-2x"></i>
                        <h2 class="timer count-title count-number" data-to="0" data-speed="1500"></h2>
                        <p class="count-text ">Tender Issued</p>
                    </div>

                    <div class="counter col_fourth end">
                        <i class="fa  fa-file fa-2x"></i>
                        <h2 class="timer count-title count-number" data-to="1" data-speed="1500"></h2>
                        <p class="count-text ">DPR Stage</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section-five">
        <div class="container-fluid">
            <div class="s5-header">
                <img src="assets/images/areaoffocus.png" />
            </div>
        </div>
        <div class="s5-contents">
            <div class="container">
                <div class="row s5-row">
                    <div class="col-12">
                        <h3>Area of Focus</h3>
                    </div>
                    <div class="col-3 no-padding">
                        <div class="s2-card s5-card-1 p-s2">
                            <i class="fa fa-warning fa-3x"></i>
                            <h4>Education</h4>
                            <p></p>
                        </div>
                    </div>
                    <div class="col-3 no-padding">
                        <div class="s2-card s5-card-2 p-s2">
                            <i class="fa fa-warning fa-3x"></i>
                            <h4>Community Spaces</h4>
                            <p>One of the central pillars of an effective smart city is the engagement of common spaces and vitalisation of community assets to create an effective population base</p>
                        </div>
                    </div>
                    <div class="col-3 no-padding">
                        <div class="s2-card s5-card-3 p-s2">
                            <i class="fa fa-warning fa-3x"></i>
                            <h4>Amenities </h4>
                            <p></p>
                        </div>
                    </div>
                    <div class="col-3 no-padding">
                        <div class="s2-card s5-card-4 p-s2">
                            <i class="fa fa-warning fa-3x"></i>
                            <h4>Digital Transformation</h4>
                            <p>Smart cities need to be able to utilise technology and leverage digital space to make urban spaces less cluttered, more coordinated and well connected.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section class="section-six">
        <div class="container">
            <div class="row">
                <div class="col-4">
                    <h3>Latest News</h3>
                    <div class="news-scroll">
                        <ul>
                            <li>
                                <h2>News 1</h2>
                                <p>News 1 Contents</p>
                            </li>
                            <li>
                                <h2>News 2</h2>
                                <p>News 2 Contents</p>
                            </li>
                            <li>
                                <h2>News 3</h2>
                                <p>News 3 Contents</p>
                            </li>
                            <li>
                                <h2>News 4</h2>
                                <p>News 4 Contents</p>
                            </li>
                            <li>
                                <h2>News 5</h2>
                                <p>News 5 Contents</p>
                            </li>
                            <li>
                                <h2>News 6</h2>
                                <p>News 6 Contents</p>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <h3>Smart City Mission</h3>
                    <div class="single-post-high mb-30">
                        <div class="tender-info">
                            <img src="../assets/images/about-bg.jpg">
                        </div>
                        <div class="inst-content-int">
                            <div class="row text ml-2 mr-2">
                                <div class="col-12 mt-4">
                                    <p>
                                        The purpose of the Smart Cities Mission is to drive economic growth and improve the quality of life of people by enabling local area development and harnessing technology, especially technology that leads to Smart outcomes.
                                    </p>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-12 ">
                    <h3>City Highlights</h3>
                    <div class="single-post-high mb-30">
                        <div class="inst-content-int">
                            <div class="row text ml-2 mr-2">
                                <div class="col-12 mt-4">
                                    <p>
                                        City Highlight 1
                                    </p>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="single-post-high mb-30">
                        <div class="inst-content-int">
                            <div class="row text ml-2 mr-2">
                                <div class="col-12 mt-4">
                                    <p>
                                        City Highlight 2
                                    </p>
                                </div>

                            </div>

                        </div>
                    </div>
                    
                    
                    
                </div>
                
            </div>
        </div>
    </section>
    <section class="section-seven">
        <div class="container">
            <div class="row">
                <div class="col-3 s7-left">
                    <h2>Projects</h2>
                    <a href="" class="btn btn-primary">VIEW MORE ></a>
                </div>
                <style
                    >
                    .tenders img{
                       width:1200px;
                       
                    }
                    .tenders
                    {
                        overflow:hidden;
                    }
                </style>
                <div class="col-9 tenders mt-5">
                    <img src="assets/images/tenders.png" />

                    <%--<div id="tenderCarousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-lg-4 col-md-12  mt-5">
                                        <div class="single-post-high mb-30">
                                            <div class="tender-info">
                                                <img src="../assets/images/icon4.jpg">
                                            </div>
                                            <div class="inst-content-int">
                                                <strong>Counselling</strong>
                                                <div class="row text ml-2 mr-2">
                                                    <div class="col-12 mt-4">
                                                        <p>
                                                            Few Counselling Topics 
                                        Few Counselling Topics
                                                        </p>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="col-lg-4 col-md-12  mt-5">
                                    <div class="single-post-high mb-30">
                                        <div class="tender-info">
                                            <img src="../assets/images/icon4.jpg">
                                        </div>
                                        <div class="inst-content-int">
                                            <strong>Counselling</strong>
                                            <div class="row text ml-2 mr-2">
                                                <div class="col-12 mt-4">
                                                    <p>
                                                        Few Counselling Topics 
                                        Few Counselling Topics
                                                    </p>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
                                    <div class="col-lg-4 col-md-12  mt-5">
                                        <div class="single-post-high mb-30">
                                            <div class="tender-info">
                                                <img src="../assets/images/icon4.jpg">
                                            </div>
                                            <div class="inst-content-int">
                                                <strong>Counselling</strong>
                                                <div class="row text ml-2 mr-2">
                                                    <div class="col-12 mt-4">
                                                        <p>
                                                            Few Counselling Topics 
                                        Few Counselling Topics
                                                        </p>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-12  mt-5">
                                        <div class="single-post-high mb-30">
                                            <div class="tender-info">
                                                <img src="../assets/images/icon4.jpg">
                                            </div>
                                            <div class="inst-content-int">
                                                <strong>Counselling</strong>
                                                <div class="row text ml-2 mr-2">
                                                    <div class="col-12 mt-4">
                                                        <p>
                                                            Few Counselling Topics 
                                        Few Counselling Topics
                                                        </p>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-12  mt-5">
                                        <div class="single-post-high mb-30">
                                            <div class="tender-info">
                                                <img src="../assets/images/icon4.jpg">
                                            </div>
                                            <div class="inst-content-int">
                                                <strong>Counselling</strong>
                                                <div class="row text ml-2 mr-2">
                                                    <div class="col-12 mt-4">
                                                        <p>
                                                            Few Counselling Topics 
                                        Few Counselling Topics
                                                        </p>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#tenderCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#tenderCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>--%>
                </div>
            </div>
        </div>
    </section>
    <%--Social Media--%>
    <%--<section class="section-eight">
    </section>--%>
    <section class="section-nine">
        <div class="container">
            <div class="row">
                <div class="col-7">
                    <h2>Contact Us</h2>
                    <p>If you have any questions, we are happy to help</p>
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtName" placeholder="Name" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtEmailAddress" placeholder="Email Address" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtSubject" placeholder="Subject" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtMobileNo" placeholder="Mobile No" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" placeholder="Message" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-primary" Text="Submit" />
                    </div>
                </div>
                <div class="col-5">
                    <h2>Address</h2>
                    <h3>Shivamogga Smart City Limited</h3>

                    <p>
                        1st floor, Corporation Building block 
                        <br />
                        SN Market, Nehru Road,
                        <br />
                        Shivamogga, Karnataka 577201
                    </p>
                    <p>Phone : 08182-279951</p>
                    <p>Email : shimogasmartcity@gmail.com</p>
                    <p>www.shivamoggasmartcity.co.in</p>

                </div>
            </div>
        </div>
    </section>
    <section class="section-parallax"></section>
    <section class="section-ten">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15489.866821047915!2d75.5734478!3d13.9307942!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x27f217467a498191!2sShivamogga%20Smart%20City%20Limited!5e0!3m2!1sen!2sin!4v1633064204308!5m2!1sen!2sin" width="100%" height="100%" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
    </section>
    <section class="section-eleven helpline">
        <div class="container-fluid">
            <div class="row">
                <div class="col-5">
                    <p>Helplines and Emergency Numbers</p>
                </div>
                <div class="col-2 helpline-no">
                    <img src="assets/images/ambulance.png" />
                    Ambulance <strong>108</strong>
                </div>
                <div class="col-2 helpline-no">
                    <img src="assets/images/police-badge.png" />
                    Police <strong>100</strong>
                </div>
                <div class="col-2 helpline-no">
                    <img src="assets/images/vehicle.png" />
                    Fire <strong>101</strong>
                </div>
            </div>
        </div>
    </section>
    <section class="section-tweleve">
        <uc1:logoslider runat="server" ID="logoslider" />


    </section>
    <script>
        (function ($) {
            $.fn.countTo = function (options) {
                options = options || {};

                return $(this).each(function () {
                    // set options for current element
                    var settings = $.extend({}, $.fn.countTo.defaults, {
                        from: $(this).data('from'),
                        to: $(this).data('to'),
                        speed: $(this).data('speed'),
                        refreshInterval: $(this).data('refresh-interval'),
                        decimals: $(this).data('decimals')
                    }, options);

                    // how many times to update the value, and how much to increment the value on each update
                    var loops = Math.ceil(settings.speed / settings.refreshInterval),
                        increment = (settings.to - settings.from) / loops;

                    // references & variables that will change with each update
                    var self = this,
                        $self = $(this),
                        loopCount = 0,
                        value = settings.from,
                        data = $self.data('countTo') || {};

                    $self.data('countTo', data);

                    // if an existing interval can be found, clear it first
                    if (data.interval) {
                        clearInterval(data.interval);
                    }
                    data.interval = setInterval(updateTimer, settings.refreshInterval);

                    // initialize the element with the starting value
                    render(value);

                    function updateTimer() {
                        value += increment;
                        loopCount++;

                        render(value);

                        if (typeof (settings.onUpdate) == 'function') {
                            settings.onUpdate.call(self, value);
                        }

                        if (loopCount >= loops) {
                            // remove the interval
                            $self.removeData('countTo');
                            clearInterval(data.interval);
                            value = settings.to;

                            if (typeof (settings.onComplete) == 'function') {
                                settings.onComplete.call(self, value);
                            }
                        }
                    }

                    function render(value) {
                        var formattedValue = settings.formatter.call(self, value, settings);
                        $self.html(formattedValue);
                    }
                });
            };

            $.fn.countTo.defaults = {
                from: 0,               // the number the element should start at
                to: 0,                 // the number the element should end at
                speed: 1000,           // how long it should take to count between the target numbers
                refreshInterval: 100,  // how often the element should be updated
                decimals: 0,           // the number of decimal places to show
                formatter: formatter,  // handler for formatting the value before rendering
                onUpdate: null,        // callback method for every time the element is updated
                onComplete: null       // callback method for when the element finishes updating
            };

            function formatter(value, settings) {
                return value.toFixed(settings.decimals);
            }
        }(jQuery));

        jQuery(function ($) {
            // custom formatting example
            $('.count-number').data('countToOptions', {
                formatter: function (value, options) {
                    return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
                }
            });

            // start all the timers
            $('.timer').each(count);

            function count(options) {
                var $this = $(this);
                options = $.extend({}, options || {}, $this.data('countToOptions') || {});
                $this.countTo(options);
            }
        });

    </script>
    <script>
        $(function () {
            var tickerLength = $('.news-scroll ul li').length;
            var tickerHeight = $('.news-scroll ul li').outerHeight();
            $('.news-scroll ul li:last-child').prependTo('.news-scroll ul');
            $('.news-scroll ul').css('marginTop', -tickerHeight);
            function moveTop() {
                $('.news-scroll ul').animate({
                    top: -tickerHeight
                }, 1000, function () {
                    $('.news-scroll ul li:first-child').appendTo('.news-scroll ul');
                    $('.news-scroll ul').css('top', '');
                });
            }
            setInterval(function () {
                moveTop();
            }, 6000);
        });
    </script>
</asp:Content>
