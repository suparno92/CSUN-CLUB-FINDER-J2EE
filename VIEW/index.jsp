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
        <link href="assets/css/materialize2.css" rel="stylesheet">
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
        
        <!-- Bootstrap -->
        <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
        
        
        <!-- shortcodes -->
        <link href="assets/css/shortcodes/shortcodes.css" rel="stylesheet">
        <!-- Main Style CSS -->
        <link href="style.css" rel="stylesheet">    
        <!-- Construction CSS -->
        <link href="assets/css/skins/construction.css" rel="stylesheet">
      
     
        <style type="text/css">
                        .z-depth-1, nav, .card-panel, .card, .toast, .btn, .btn-large, .btn-floating, .dropdown-content, .collapsible, .side-nav {
                                box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12), 0 3px 1px -2px rgba(0, 0, 0, 0.2);
                              }

                              .z-depth-1-half, .btn:hover, .btn-large:hover, .btn-floating:hover {
                                box-shadow: 0 3px 3px 0 rgba(0, 0, 0, 0.14), 0 1px 7px 0 rgba(0, 0, 0, 0.12), 0 3px 1px -1px rgba(0, 0, 0, 0.2);
                              }
                              .white-text {
                                color: #FFFFFF !important;
                              }


                              .btn-floating.btn-large {
                                width: 56px;
                                height: 56px;
                              }

                              .btn-floating.btn-large i {
                                line-height: 56px;
                              }


                              .btn-floating {
                                display: inline-block;
                                color: #fff;
                                position: relative;
                                overflow: hidden;
                                z-index: 1;
                                width: 40px;
                                height: 40px;
                                line-height: 40px;
                                padding: 0;
                                background-color: #26a69a;
                                border-radius: 50%;
                                transition: .3s;
                                cursor: pointer;
                                vertical-align: middle;
                              }

                              .btn-floating i {
                                width: inherit;
                                display: inline-block;
                                text-align: center;
                                color: #fff;
                                font-size: 1.6rem;
                                line-height: 40px;
                              }

                              .btn-floating:hover {
                                background-color: #26a69a;
                              }

                              .btn-floating:before {
                                border-radius: 0;
                              }

                              .btn-floating.btn-large {
                                width: 56px;
                                height: 56px;
                              }

                              .btn-floating.btn-large i {
                                line-height: 56px;
                              }

                              .white-text {
                                color: #FFFFFF !important;
                              }

                              ul {
                                  padding: 0;
                              }
                         .container2 { width: 90%; height: 300px; margin: auto;}
                         .float-right{ float: right;}
                         #info_container{ height: 400px; width: 550px; padding: 6px; background-color: white; display: block; overflow-y: scroll;}
                         
                         #navo2 { height: 30px; width: 100%; line-height: 30px; vertical-align: middle; margin-bottom: 6px; background-color: white; display: block; border-bottom: 1px solid lightgrey;}
                         #navo2-in{ display: inline-block; background-color: white; min-height: 50px; width: 100%; margin-bottom: 6px;}

                                    
                           
                         

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
                            <li class="active"><a href="/">FIND A CLUB</a></li>
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


        <!--page map container start-->
        <section id="map-container">
          <div id="map-canvas"></div>
          <div id="nav">
            <ul class="collapsible accordion">
            <c:forEach var="dept" items="${department}" >
            <li>

                <div class="collapsible-header"> <c:out value="${dept.name}"/> <span class="new badge"> <c:out value="${dept.badge}"/> </span></div>
              <div class="collapsible-body">
                  <c:forEach var="clubs" items="${dept.c}" >
                  <div class="mycontainer">

                        <div class="media2">
                          <img src='<c:out value="${clubs.logo_url}"/>' class="media-object" style="width:100px">
                        </div>
                        <div class="media-body2">
                          <h4 > <c:out value="${clubs.name}"/> </h4>
                          <h5> <c:out value="${clubs.brief}"/> </h5>
                        </div>
                        <div class="media-foot2">

                            <a href="#modal1"  id="${clubs.gps_id}" data-clubid="${clubs.club_id}" class="location" ><i class="material-icons" >place</i></a>
                            <a href="#" class="mymodalt" data="${clubs.videoLink}" id="vid" id="clubvideo" ><i class="material-icons" >video_library</i></a>
                            <a href="#" class="mymodalt-img" id="pic"><i class="material-icons" >perm_media</i></a>



                        </div>



                  </div>
              </c:forEach>
                  </div>
            </li>
            </c:forEach>
          </ul>
          </div>


        </section>
        <!--page title end-->



        <hr>


        <hr>

        <section class="section-padding">
            <div class="container">

             


            </div><!-- /.container -->
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
        
       <!-- Video Modal --> 
       <div class="modal fade" id="mymodal">
      <div class="modal-dialog" role="document">
        <div class="modal-content" id="divVideo">
          <video id="video_grabber" class="responsive-video" controls>
            <source src="none" type="video/mp4">
          </video>
        </div>
      </div>
    </div>
      <!-- Video Modal --> 
      
     <!-- Img Modal --> 
    <div class="modal fade" id="mymodal-img">
      <div class="modal-dialog" role="document">
        <div class="modal-content" id="divImg">
          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
           
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
              <div class="item active">
               <img class="img-responsive" src="http://www.princessclub.ro/wp-content/uploads/2015/07/1.jpg" alt="...">
                <div class="carousel-caption">
                    Having lots of fun.
                  </div>
              </div>
              <div class="item">
                <img class="img-responsive" src="http://placehold.it/1200x600/fffccc/000&text=Two" alt="...">
                <div class="carousel-caption">
                  Another Image 2
                </div>
              </div>
               <div class="item">
                <img class="img-responsive" src="http://placehold.it/1200x600/fcf00c/000&text=Three" alt="...">
                <div class="carousel-caption">
                  Another Image 3
                </div>
              </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
          </div>
        </div>
      </div>
    </div>
     <!-- Img Modal --> 


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
        <script src="https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyC_qy9QdBjjV1w8c4hQ5o52DmAWMact_xg&callback=init"
        async defer></script>
        <script src="assets/js/map.js"></script>

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
            
            $(document).ready(function(){
                $('.mymodalt').click(function(){
                   var newsrc = $(this).attr("data");        

                  $('#divVideo video source').attr("src", newsrc);
                  // video.find("source").attr("src", newsrc);

                 // var test = $('#divVideo video source').attr("src");
                 //  alert(newsrc + "\n" + test);
                 // $('.setVideoLink').attr("src", newsrc);     

                 // var test = $('.setVideoLink').attr("src");

                 // loads the new video src
                 $("#divVideo video")[0].load();
                  $('#mymodal').modal('show');

                });
                
                $('.mymodalt-img').click(function(){             
                          
                  $('#mymodal-img').modal('show');

                });
                
             

                $('.location').click(function(e) {

                 // alert("Hi" + " " + this.id);
                  var clubid = $(this).data('clubid');
                
                 club_infowindow(this.id,clubid);
                });




                 


          
          
          
        });

        </script>
    </body>

</html>
