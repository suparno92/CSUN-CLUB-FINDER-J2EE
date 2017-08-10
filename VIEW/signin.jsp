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
        <link href="assets/bootstrap/bootstrap.css" rel="stylesheet">
        <!-- shortcodes -->
        <link href="assets/css/shortcodes/shortcodes.css" rel="stylesheet">
        <!-- Main Style CSS -->
        <link href="style.css" rel="stylesheet">
        <!-- Construction CSS -->
        <link href="assets/css/skins/construction.css" rel="stylesheet">

        <style>

          .input-field input[type=date]:focus + label,
          .input-field input[type=text]:focus + label,
          .input-field input[type=email]:focus + label,
          .input-field input[type=password]:focus + label {
            color: #e91e63;
          }

          .input-field input[type=date]:focus,
          .input-field input[type=text]:focus,
          .input-field input[type=email]:focus,
          .input-field input[type=password]:focus {
            border-bottom: 2px solid #e91e63;
            box-shadow: none;
          }
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
                    <a href="signin"> Sign In</a>
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
                            <li> <a href="profile">PROFILE</a></li>
                            <li><a href="ClubRegistration">ADD YOUR CLUB</a></li>

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
          <section class="section-padding"></section>


        <!--page map container start-->
        <section id="map-container">
          <main>
        <center>
            <!-- <img class="responsive-img" style="width: 100px;" src="" /> -->
          <div class="section"></div>

          <h5 class="indigo-text">Please, login into your account</h5>
          <div class="section"></div>

          <div class="container">
            <div class="z-depth-1 grey lighten-4 row" style="display: inline-block; padding: 32px 48px 30px 48px; border: 1px solid #EEE;">

              <form class="col s12" action="ajaxfront" method="post">
                <div class='row'>
                  <div class='col s12'>
                  </div>
                </div>

                <div class='row'>
                  <div class='input-field col s12'>
                    <input type="text" name="email" class="form-control" pattern=".{1,40}" title="email is too long" required autofocus />
                    <label for='email'>Enter your email</label>
                  </div>
                </div>

                <div class='row'>
                  <div class='input-field col s12'>
                    <input type="password" name="password" class="form-control" pattern=".{4,14}"  title="14 max characters" required />
                    <label for='password'>Enter your password</label>
                  </div>
                  <input  type="hidden" name="login" value="login">  
                  <label style='float: right;'>
                   <a class='pink-text' href='#!'><b>Forgot Password?</b></a>
    		  </label>
                </div>

                <br>
                <center>
              <div class='row'>
                <button type='submit' class='col s12 btn btn-large waves-effect indigo'>Login</button>
              </div>
            </center>
          </form>
        </div>
      </div>
      <a href="#!">Create account</a>
    </center>

    <div class="section"></div>
    <div class="section"></div>
  </main>


        </section>
        <!--page title end-->




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
        <script src="assets/js/imagesloaded.js"></script>
        <script src="assets/js/equalheight.js"></script>
        <script src="assets/js/bootstrap-tabcollapse.min.js"></script>
        <script src="assets/js/jquery.inview.min.js"></script>
        <script src="assets/js/jquery.countTo.min.js"></script>
        <script src="assets/js/jquery.shuffle.min.js"></script>
        <script src="assets/js/jquery.stellar.min.js"></script>
        <script src="assets/js/twitterFetcher.min.js"></script>
        <script src="assets/js/masonry.pkgd.min.js"></script>
        <script src="assets/flexSlider/jquery.flexslider-min.js"></script>
        <script src="assets/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/scripts.js"></script>



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
