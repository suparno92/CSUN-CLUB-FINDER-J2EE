<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="materialize is a material design based mutipurpose responsive template">
        <meta name="keywords" content="material design, card style, material template, portfolio, corporate, business, creative, agency">
        <meta name="author" content="trendytheme.net">

        <title>VM-1</title>

        <!--  favicon -->
        <link rel="shortcut icon" href="assets/img/ico/favicon.png">
        <!--  apple-touch-icon -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/img/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/img/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/img/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/img/ico/apple-touch-icon-57-precomposed.png">

        <link href='https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900' rel='stylesheet' type='text/css'>
        <!-- FontAwesome CSS -->
        <link href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- Material Icons CSS -->
        <link href="assets/fonts/iconfont/material-icons.css" rel="stylesheet">
        <!-- magnific-popup -->
        <link href="assets/magnific-popup/magnific-popup.css" rel="stylesheet">
        <!-- flexslider -->
        <link href="assets/flexSlider/flexslider.css" rel="stylesheet">
        <!-- materialize -->
        <link href="assets/materialize/css/materialize.min.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- shortcodes -->
        <link href="assets/css/shortcodes/shortcodes.css" rel="stylesheet">
        <!-- Main Style CSS -->
        <link href="style.css" rel="stylesheet">
        <!-- Construction CSS -->
        <link href="assets/css/skins/construction.css" rel="stylesheet">

        <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
        <link rel="stylesheet" type="text/css" href="assets/revolution-version4/css/extralayers.css" media="screen">
        <link rel="stylesheet" type="text/css" href="assets/revolution-version4/css/settings.css" media="screen">
        
        <style>
          .container2 { width: 90%; height: 300px; margin: auto;}
           .float-right{ float: right;}
        </style>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body id="top">


        <!-- Top bar -->
        <div class="top-bar black darken-2 visible-md visible-lg">
          <div class="container">
            <div class="row">
              <!-- Social Icon -->
              <div class="col-md-6">
                <!-- Social Icon -->
                <ul class="list-inline social-top light tt-animate btt">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fa fa-tumblr"></i></a></li>
                  <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                  <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                  <li><a href="#"><i class="fa fa-rss"></i></a></li>
                </ul>
              </div>

              <div class="col-md-6 text-right">
                <ul class="topbar-cta no-margin">
                  <li class="mr-20">
                    
                  </li>
                  <li>
                    <c:if test="${empty sessionScope.myuser}">
                      <a href="signin"> Sign In</a>
                     </c:if>
                     <c:if test="${!empty sessionScope.myuser}">
                         <a href="logout" >Logout</a>

                     </c:if>
                  </li>
                </ul>
              </div>
            </div><!-- /.row -->
          </div><!-- /.container -->
        </div><!-- /.top-bar -->

        <!--header start-->
        <header id="header" class="tt-nav nav-center-align">

            <div class="light-header">

                <div class="container mainmenu">
                    <div id="materialize-menu" class="menuzord">

                        <!--logo start-->
                        <a href="/" class="logo-brand">
                            <img src="assets/img/construction/logo2.png" alt=""/>
                        </a>
                        <!--logo end-->

                        <!-- menu start-->
                        <ul class="menuzord-menu border-top" id="menu-list">
                            <li><a href="/">FIND A CLUB</a></li>
                            <li><a href="profile">PROFILE</a></li>
                            <li class="active"><a href="ClubRegistration">ADD YOUR CLUB</a></li>

                        </ul>
                        <!-- menu end-->
                    </div>
                </div>

                <!--alternate menu appear start-->
                <div class="menu-appear-alt" >
                    <div class="container">
                        <div id="materialize-menu-alt" class="menuzord" >
                            <!--alternate menu appearing here ... -->
                        </div>
                    </div>
                </div>
                <!--alternate menu appear end-->

            </div>

        </header>
        <!--header end-->


                <!--page title start-->
                <section class="page-title page-title-bg ptb-70">
                    <div class="container">
                        
                    </div>
                </section>
                <!--page title end-->




        <section class="section-padding">
            <div class="container">

              <div class="text-center mb-80">
                  <h2 class="section-title text-bold">GETTING MORE STUDENTS TO ATTEND YOUR CLUB</h2>
                  <p class="section-sub">CSUN Club Finder is the only interactive website that allows fellow CSUN student to find out what your club is about, where it's meeting, and at what time. This single website connects more students with more clubs!</p>
              </div>


              <div class="row">
                <div class="col-md-4">
                  <article class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                      <img class="activator" src="assets/img/construction/1.jpg">
                    </div>
                    <div class="card-content">
                      <h2 class="entry-title activator text-medium">COLLABORATE </h2>
                    </div>
                    <div class="card-reveal">
                      <span class="card-title close-button"> <i class="material-icons right">&#xE5CD;</i></span>

                      <h2 class="entry-title text-medium"><a href="#">Skilled Professionals</a></h2>
                      <p>Authoritatively grow quality technologies for strategic sources. Dramatically evolve front-end services for functional e-markets. Credibly parallel task multifunctional methods.</p>
                      <a href="#" class="readmore">Read Full Post <i class="fa fa-long-arrow-right"></i></a>
                    </div>
                  </article><!-- /.card -->
                </div><!-- /.col-md-4 -->

                <div class="col-md-4">
                  <article class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                      <img class="activator" src="assets/img/construction/2.jpg">
                    </div>
                    <div class="card-content">
                      <h2 class="entry-title activator text-medium">SHARE INFORMATION</h2>
                    </div>
                    <div class="card-reveal">
                      <span class="card-title close-button"> <i class="material-icons right">&#xE5CD;</i></span>
                      <h2 class="entry-title text-medium"><a href="#">Effective Planning</a></h2>
                      <p>Authoritatively grow quality technologies for strategic sources. Dramatically evolve front-end services for functional e-markets. Credibly parallel task multifunctional methods.</p>
                      <a href="#" class="readmore">Read Full Post <i class="fa fa-long-arrow-right"></i></a>
                    </div>
                  </article><!-- /.card -->
                </div><!-- /.col-md-4 -->

                <div class="col-md-4">
                  <article class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                      <img class="activator" src="assets/img/construction/3.jpg">
                    </div>
                    <div class="card-content">
                      <h2 class="entry-title activator text-medium">FIND SUCCESS</h2>
                    </div>
                    <div class="card-reveal">
                      <span class="card-title close-button"> <i class="material-icons right">&#xE5CD;</i></span>
                      <h2 class="entry-title text-medium"><a href="#">Risk Management</a></h2>
                      <p>Authoritatively grow quality technologies for strategic sources. Dramatically evolve front-end services for functional e-markets. Credibly parallel task multifunctional methods.</p>
                      <a href="#" class="readmore">Read Full Post <i class="fa fa-long-arrow-right"></i></a>
                    </div>
                  </article><!-- /.card -->
                </div><!-- /.col-md-4 -->

              </div><!-- /.row -->

            </div><!-- /.container -->
        </section>


        <section class="dark-bg section-padding">
            <div class="container">

              <div class="text-center mb-80">
                  <h2 class="section-title white-text text-bold">ADD YOUR CLUB TO CSUN CLUB FINDER</h2>
                  <p class="section-sub white-text">If you would like to have your club featured on CSUN Club Finder, please fill out the form below.</p>
              </div>

              <form name="contact-form" id="contactForm" action="sendemail.php" method="POST">

                <div class="row">
                  <div class="col-md-6">

                    <div class="input-field">
                      <input type="text" name="name" class="validate" id="name">
                      <label for="name">First Name*</label>
                    </div>

                  </div><!-- /.col-md-6 -->

                  <div class="col-md-6">

                    <div class="input-field">
                      <input id="email" type="email" name="email" class="validate" >
                      <label for="email" data-error="wrong" data-success="right">Email Address*</label>
                    </div>

                  </div><!-- /.col-md-6 -->
                </div><!-- /.row -->

                <div class="row">
                  <div class="col-md-6">

                    <div class="input-field">
                      <input type="text" name="phone" class="validate" id="phone">
                      <label for="phone">Phone Number</label>
                    </div>

                  </div><!-- /.col-md-6 -->

                  <div class="col-md-6">

                    <div class="input-field">
                      <input id="web" type="text" name="web" class="validate" >
                      <label for="web" data-error="wrong" data-success="right">Your Website</label>
                    </div>

                  </div><!-- /.col-md-6 -->
                </div><!-- /.row -->

                <div class="row">
                  <div class="col-md-6">

                    <div class="input-field">
                      <input type="text" name="phone" class="validate" id="phone">
                      <label for="phone">Phone Number</label>
                    </div>

                  </div><!-- /.col-md-6 -->

                  <div class="col-md-6">

                    <div class="input-field">
                      <input id="web" type="text" name="web" class="validate" >
                      <label for="web" data-error="wrong" data-success="right">Your Website</label>
                    </div>

                  </div><!-- /.col-md-6 -->
                </div><!-- /.row -->


                <div class="input-field">
                  <textarea name="message" id="message" class="materialize-textarea" ></textarea>
                  <label for="message">Your Message</label>
                </div>

                <div class="text-center">
                  <button type="submit" name="submit" class="waves-effect waves-light btn brand-bg text-medium mt-30">Apply</button>
                </div>
              </form>
            </div><!-- /.container -->


        </section>


        <section class="section-padding">

        </section>


        <footer class="footer footer-one">
            <div class="primary-footer dark-bg lighten-1">
                <div class="container2">
                  <div class="container">
                    <a href="#top" class="page-scroll btn-floating btn-large brand-bg back-top waves-effect waves-light tt-animate btt" data-section="#top">
                      <i class="material-icons">&#xE316;</i>
                    </a>

                    <div class="row">
                        <div class="col-md-3 widget clearfix">
                            <h2 class="white-text">About Csun Club Finder</h2>
                            <p>CSUN Club Finder was created over the course of two semesters at California State University, Northridge, by senior CIT students in CIT-480 and 481. It's a work in progress.</p>

                            <ul class="social-link tt-animate ltr">
                              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="#"><i class="fa fa-tumblr"></i></a></li>
                              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                              <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                              <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                              <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div><!-- /.col-md-3 -->

                        <div class="col-md-3 widget float-right">
                            <h2 class="white-text">Imporant links</h2>

                            <ul class="footer-list">
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Terms &amp; Condition</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div><!-- /.col-md-3 -->





                        </div><!-- /.col-md-3 -->
                    </div><!-- /.row -->
                  </div>
                </div><!-- /.container -->
            </div><!-- /.primary-footer -->

            <div class="secondary-footer dark-bg darken-1 text-center">
                <div class="container">
                    <span class="copy-text">Copyright &copy; 2016 <a href="#">Csunclubfinder</a> &nbsp;  | &nbsp;  All Rights Reserved &nbsp;  | &nbsp;  Designed By <a href="#">CIT 481 Team</a></span>
                </div><!-- /.container -->
            </div><!-- /.secondary-footer -->
        </footer>


        <!-- Preloader -->
        <div id="preloader">
          <div class="preloader-position">
            <!--  <img src="assets/img/logo-colored.png" alt="logo" > -->
            <div class="progress">
              <div class="indeterminate"></div>
            </div>
          </div>
        </div>
        <!-- End Preloader -->


        <!-- jQuery -->
        <script src="assets/js/jquery-2.1.3.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/materialize/js/materialize.min.js"></script>
        <script src="assets/js/jquery.easing.min.js"></script>
        <script src="assets/js/smoothscroll.min.js"></script>
        <script src="assets/js/menuzord.js"></script>
        <script src="assets/js/equalheight.js"></script>
        <script src="assets/js/bootstrap-tabcollapse.min.js"></script>
        <script src="assets/js/jquery.inview.min.js"></script>
        <script src="assets/js/jquery.countTo.min.js"></script>
        <script src="assets/js/jquery.shuffle.min.js"></script>
        <script src="assets/js/jquery.stellar.min.js"></script>
        <script src="assets/js/twitterFetcher.min.js"></script>
        <script src="assets/js/imagesloaded.js"></script>
        <script src="assets/js/masonry.pkgd.min.js"></script>
        <script src="assets/flexSlider/jquery.flexslider-min.js"></script>
        <script src="assets/magnific-popup/jquery.magnific-popup.min.js"></script>
        <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
        <script src="assets/revolution-version4/js/jquery.themepunch.tools.min.js"></script>
        <script src="assets/revolution-version4/js/jquery.themepunch.revolution.min.js"></script>
        <script src="assets/js/scripts.js"></script>

        <!-- SLIDER REVOLUTION INIT  -->
        <script type="text/javascript">

            jQuery(document).ready(function() {

                jQuery('.tp-banner').show().revolution({

                        dottedOverlay:"none",
                        delay:8000,
                        startwidth:1170,
                        startheight:600,
                        hideThumbs:200,
                        hideTimerBar:"on",

                        thumbWidth:100,
                        thumbHeight:50,
                        thumbAmount:1,

                        navigationType:"bullet",
                        navigationArrows:"solo",
                        navigationStyle:"preview5",

                        touchenabled:"on",
                        onHoverStop:"off",

                        swipe_velocity: 0.7,
                        swipe_min_touches: 1,
                        swipe_max_touches: 1,
                        drag_block_vertical: false,

                        parallax:"mouse",
                        parallaxBgFreeze:"on",
                        parallaxLevels:[10,7,4,3,2,5,4,3,2,1],

                        keyboardNavigation:"on",


                        shadow:0,
                        fullWidth:"on",
                        fullScreen:"off",

                        spinner:"spinner4"
                });

        }); //ready
        </script>


        <script>
            /**
             * ### HOW TO CREATE A VALID ID TO USE: ###
             * Go to www.twitter.com and sign in as normal, go to your settings page.
             * Go to "Widgets" on the left hand side.
             * Create a new widget for what you need eg "user time line" or "search" etc.
             * Feel free to check "exclude replies" if you don't want replies in results.
             * Now go back to settings page, and then go back to widgets page and
             * you should see the widget you just created. Click edit.
             * Look at the URL in your web browser, you will see a long number like this:
             * 613424231099953152
             * Use this as your ID below instead!
             */

            if ($('#twitterfeed').length > 0) {
                var twitterWidgetConfig = {
                    id: "613424231099953152",
                    domId: "twitterfeed",
                    maxTweets: 2,
                    enableLinks: true,
                    showUser: true,
                    showTime: true,
                    showInteraction: false
                };

                twitterFetcher.fetch(twitterWidgetConfig);
            }

        </script>

    </body>

</html>
