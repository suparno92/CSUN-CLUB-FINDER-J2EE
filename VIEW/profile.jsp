
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
        <link href="assets/css/materialize22.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- shortcodes -->
        <link href="assets/css/shortcodes/shortcodes.css" rel="stylesheet">
        <!-- Main Style CSS -->
        <link href="style.css" rel="stylesheet">
        <!-- Construction CSS -->
        <link href="assets/css/skins/construction.css" rel="stylesheet">

        <style type="text/css">
                 .upcomming { height: 201px;  width: 99%; padding-left: 1%;background-color: white; margin-bottom: 10px; border-bottom: 1px solid lightgrey;}
                 #map-container2{ height: 1180px ; width: 80%; margin: 0 auto; padding-top: 20px; display: block;  background-color: white; margin-top: 1px; z-index: 0;border:none;   }

                      #map-canvas2 {  height: 100% ; width:100%; z-index: 0; border:none;
                               background-color: white; margin-top: 4px; overflow: hidden;

                              }

                            #map-canvas-left {
                              height: 98% ; width:35%; z-index: 0;  border: none;  border: 1px solid lightgrey; padding: 10px;
                               background-color: white; float: left; overflow: hidden;
                             }

                               #map-canvas-left-2 { float: left; height: 80% ; width:100%; background-color: white; overflow-y: scroll;  z-index: 0;

                               }

                             #map-canvas-right {
                               height: 80% ; width:58%; z-index: 0;
                                background-color: white;
                                border: 1px solid lightgrey;
                               float: right;

                              }

                              #navo2-top {height: 40px;line-height: 40px; vertical-align: middle; font-size: 14px; text-align: center; width: 100%; color: white; background-color:#2d2d2d; display: block; padding-left: 10px; margin-bottom: 6px; box-shadow: 0 3px 6px rgba(182, 182, 182, 0.75);}
                                #navo2 {height: 50px; width: 100%; background-color: white; display: block; padding: 6px;border-bottom: 1px solid lightgrey;}
                                #navo2-in {min-height: 150px; width: 100%; color: #515151;background-color: white; display: inline-block; padding: 15px; border-left: 6px solid green;}


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
                         video.responsive-video {
                            max-width: 100%;
                            height: auto;
                          }

                          #loader-img{

                            background: url('img/loader.gif') no-repeat;
                            display:block;
                            height: 400px;
                            line-height: 400px;
                            vertical-align: middle;
                            width: 20%;
                            margin: auto;
                          }


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
                            <li class="active"><a href="profile">PROFILE</a></li>
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
        <section id="map-container2">
          <div id="map-canvas2" >
            <div id="map-canvas-left" >
              <div class="border-bottom-tab" >
                     <ul class="nav nav-tabs">
                   	<li class="active">
                         <a href="#1" data-toggle="tab">Profile Overview</a>
                   			</li>
                   			<li><a href="#2" data-toggle="tab">Add Events</a>
                   			</li>

                   		</ul>

                   	<div class="tab-content ">
                         <div class="tab-pane active" id="1">
                             <h3></h3>
                             <table class="table">
                               <thead>
                                 <tr>
                                   <th><button type="button" class="btn btn-primary "  data-toggle="modal" href="#mymodal-location">Update Club Profile</button> </th>

                                 </tr>
                               </thead>
                               <tbody>
                                 <tr>
                                   <td><span class="profile-headers"> Club Logo</span><br>  <div class="media2">
                                     <img src='<c:out value="${myclub.logo_url}"/>' class="media-object" style="width:100px"><br>
                                     <h5> change logo </h5>
                                     <form method="POST" action="mediaupload" enctype="multipart/form-data" >
                                         <input type="file" name="logo_url" id="logo_url" > <br>
                                     <input type="submit" class="btn" value="Upload" name="upload" id="upload"  />
                                     </form>
                                   </div>

                                 </td>

                                 </tr>
                                 <tr>
                                   <td><span class="profile-headers"> Club Name</span><br> <span class="des"> <c:out value="${myclub.name}"/>  </span></td>

                                 </tr>
                                 <tr>
                                   <td><span class="profile-headers"> Admin Name</span><br> <span class="des"> <c:out value="${myuser.firstname}"/>  </span></td>

                                 </tr>
                                 <tr>
                                   <td><span class="profile-headers"> Email address</span><br> <span class="des"><c:out value="${myuser.email}"/></span></td>

                                 </tr>
                                 <tr>
                                 <td><span class="profile-headers"> Mission Statement</span><br> <span class="des"> <c:out value="${myclub.brief}"/> </span></td>

                                 </tr>
                                 <tr>
                                     <td><span class="profile-headers"> Video</span><br>   <a href="#" class="mymodalt" data="${myclub.videoLink}" id="vid" id="clubvideo" ><i class="material-icons" >video_library</i></a><br>
                                     <form method="POST" action="videoupload" enctype="multipart/form-data" >
                                         <input type="file"  accept="video/mp4" name="video_url" id="video_url"  > <br>
                                     <input type="submit" class="btn" value="Upload Video" name="uploadvideo" id="upload"  />
                                     </form>
                                     </td>

                                 </tr>
                                 <tr>
                                     <td><span class="profile-headers"> Current Building:</span><span class="des"> ${location_name}</span><h5> Change Location:</h5>
                                        <form method="POST" action="ajaxfront">
                                        <select name='new_location'>
                                        <c:forEach var="building" items="${location}">
                                        <option value='${building.key}' >${building.value}</option>
                                        </c:forEach>
                                        </select>
                                        <input type="submit" class="btn-default" value="Set" />
                                       </form>

                                    </td>
                                </tr>
                              </tbody>
                             </table>
                   	    </div>
                   	    <div class="tab-pane" id="2">
                             <h3>Create an Event.</h3>
                             <form action="ajaxfront" method="post">

                               <div class="input-field">
                                  <h4>Title</h4>
                                 <input type="text" name="title" class="form-control" id="title" pattern=".{1,150}" title="150 characters max" required>
                               </div><br>
                               <div class="form-group">
                                 <h4>Which Day?</h4>
                                 <input type="date" name="date" class="form-control" id="min-date" min="" required>
                               </div>
                               <div class="form-group">
                                   <h4>What time?</h4>
                                 <input type="time" name="time" class="form-control" id="time" required>
                               </div>
                               <div class="form-group">
                                  <h4>Room No.</h4>
                                 <input type="text" name="room_no" class="form-control" id="room" pattern=".{1,12}" title="12 characters max" required>
                               </div>
                               <div class="input-field">
                                  <h4>Description</h4>
                                  <textarea class="form-control" name="description" id="description" rows="8" pattern=".{1,300}" required title="300 characters max"></textarea>
                                </div>

                                <input type="hidden" name="addevent" value="addevent"><br>

                               <button type="submit" class="btn btn-primary" value="Submit">Submit</button>
                             </form>
                   				</div>
                           <div class="tab-pane" id="3">
                             <h3> blank tab</h3>
                   				</div>
                   			</div>
                     </div>




            </div>
            <div id="map-canvas-right" >

                <div id="navo2-top">


                  <strong>UPCOMING EVENTS</strong>


                      </div>



                      <div id="map-canvas-left-2">

                       <div class="upcomming">

                         <div id="loader-img"></div>

                      <!-- Single button -->

                       </div>

                      </div>

            </div>
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

        <div class="modal fade" id="modalProfile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel">Edit Info</h3>
              </div>
              <div class="modal-body">
                <table class="table">
                  <thead>
                    <tr>
                      <th></th>

                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><span class="profile-headers"> Club Logo</span><br>  <div class="media2">
                        <img src='<c:out value="${myclub.logo_url}"/>' class="media-object" style="width:100px"><br>

                      </div>

                    </td>

                    </tr>
                    <tr>
                      <td><span class="profile-headers"> Club Name</span><br>  <input type="text" name="title_new" id="title_new" class="form-control" placeholder='<c:out value="${myclub.name}"/>' pattern=".{1,40}" title="name is too long" autofocus></td>

                    </tr>
                    <tr>
                      <td><span class="profile-headers"> Admin Name</span><br> <span class="des"> <c:out value="${myuser.firstname}"/>  </span></td>

                    </tr>
                    <tr>
                      <td><span class="profile-headers"> Email address</span><br> <span class="des"><c:out value="${myuser.email}"/></span></td>

                    </tr>
                    <tr>
                    <td><span class="profile-headers"> Mission Statement</span><br>   <textarea class="form-control"  placeholder='<c:out value="${myclub.brief}"/>' name="brief_new" id="brief_new" rows="3" pattern=".{1,300}" required title="desciption is too long"></textarea> </span></td>

                    </tr>
                    <tr>
                      <td><span class="profile-headers"> Video</span><br>   <a href="#modal1" id="vid"><i class="material-icons" >video_library</i></a></td>

                    </tr>

                 </tbody>
                </table>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="saveChanges()">Save changes</button>
              </div>
            </div>
          </div>
        </div>
      <div class="modal fade" id="mymodal">
      <div class="modal-dialog" role="document">
        <div class="modal-content" id="divVideo">
          <video id="video_grabber" class="responsive-video" controls>
            <source src="none" type="video/mp4">
          </video>
        </div>
      </div>
    </div>

    <div class="modal fade" id="mymodal-location">
      <div class="modal-dialog" role="document">
        <div class="modal-content" >

             <table class="table">
                  <thead>
                    <tr>
                        <th>
                            Location: <select name='new_location'>
                            <c:forEach var="building" items="${location}">
                            <option value='${building.key}' >${building.value}</option>
                            </c:forEach>
                            </select>
                        </th>

                    </tr>
                  </thead>

        </div>
      </div>
    </div>




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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_qy9QdBjjV1w8c4hQ5o52DmAWMact_xg&callback=initMap"
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

        </script>
        <script type="text/javascript">


      $(document).ready(function(){
          $('.mymodalt').click(function(){
            var newsrc = $(this).attr("data");

          $('#divVideo video source').attr("src", newsrc);



            // video.find("source").attr("src", newsrc);

           // var test = $('#divVideo video source').attr("src");
           //  alert(newsrc + "\n" + test);
           // $('.setVideoLink').attr("src", newsrc);

           // var test = $('.setVideoLink').attr("src");

            //loads the new video src
          $("#divVideo video")[0].load();
           $('#mymodal').modal('show');

          });


          var now = new Date(),
          minDate = now.toISOString().substring(0,10);
          $('#min-date').prop('min', minDate);


        });


    //$('[data-toggle="modal"]').click(function(e) {
     // alert("hi");
     //   e.preventDefault();
      //      $("#modalProfile").modal();


     // });



    function logout(){

        var formData = {logout : "logout" };


          $.ajax({
               type: "post",
               url: "ajaxfront",
               data: formData,
               success: function (response) {


               }
             });


       }




    //  $('.dropdown-menu #edit').on("click", function(e){
    //        e.preventDefault();
    //        alert("Confirm addition to Meeting2" + this.id);
    //    });
      $(document).ready(function() {
        var id = "true";
        var formData = {upcomming : id};

           $("#loader-img").show();
        setTimeout( function(){
          $("#loader-img").hide();
          $.ajax({
               type: "post",
               url: "ajaxfront",
               data: formData,
               success: function (response) {

                    $(".upcomming").html(response);


               }
             })
          },1000);

       }




       );

        function edit(obj){

             var id = obj.id;

             var user_response = window.confirm("Editing .. " + id);
             $("#loader-img").show();
             $(".upcomming").html("<p></p>");

             var formData = {editpost : id};
             setTimeout( function(){
               $("#loader-img").hide();

             $.ajax({
                  type: "post",
                  url: "test.php",
                  data: formData,
                  success: function (response) {

                       $(".upcomming").html(response);


                  }
                })
              },1000);

        }
         function deletepost(obj){

             var id = obj.id;

             var user_response = window.confirm("Deleting .. " + id);

             var formData = {delete_meeting_id : id};
             $.ajax({
                  type: "post",
                  url: "ajaxfront",
                  data: formData,
                  success: function (response) {

                       $(".upcomming").html(response);


                  }
                });

        }

                function saveChanges() {

                 // alert("Save function reached"  );
                    var values = {
                            new_event : "new_event",
                            title_new: document.getElementById('title_new').value,
                            brief_new: document.getElementById('brief_new').value,

                    };
                    $.ajax({
                        type: "post",
                        url: "ajaxfront",
                        data: values,
                        success: function() {
                            location.reload();
                        }
                    });


                }







        //  $('#deletelink').click(function(){ deletepost(); return false; });





      </script>
    </body>

</html>
