<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Group12_Motorcycle</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">

      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body>

<div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="index.jsp">Home</a>
  <a href="about.jsp">About</a>
  <a href="ShowServlet">Shop</a>
  <a href="contact.jsp">Contact</a>
    <c:if test="${sessionScope.ac.admin == 1}">
    <a href="admin.jsp">Product Manager</a>
  </c:if>
</div>

<div id="main">
      <!-- header section start -->
      <div class="header_section">
        <div class="container-fluid">
         <div class="row">
            <div class="col-sm-4">
               <div class="search_icon"></div>
            </div>
                      
            <div class="col-sm-4">
               		<a class="header-img"  href="index.jsp">
               		 <img class="login-logo" src="images/logo.png" alt="Main menu logo">
        			</a>
            </div>

            <div class="col-sm-4">
               <div class="togle_3">
                  <div class="left_main">
                  <c:if test="${sessionScope.ac != null}"> <!--Session user phan biet khi nao logout, khi nao login-->
                  	<div class="menu_main">
                        <a href="#">Hello ${sessionScope.ac.username}</a>
                     </div>
                     <div class="menu_main">
                        <a href="LogOut"><i class="fa fa-fw fa-user"></i> Logout</a> <!-- Goi Servlet LogOut de xoa session nguoi dung khi logout -->
                     </div>
                  </c:if>
                  <c:if test="${sessionScope.ac == null }">
                  	<div class="menu_main">
                        <a href="login.jsp"><i class="fa fa-fw fa-user"></i> Login</a>
                     </div>
                  </c:if>
                  </div>
                  <div class="middle_main">
                  </div>
                  <div class="right_main">
                     <div class="togle_main"><a class="class=openbtn" onclick="openNav()"><img src="images/togle-menu-icon.png" style="max-width: 100%;"></a></div>
                  </div>
               </div>
               </div>
            </div>
         </div>
      <div class="banner_section layout_padding">
      <div class="container">
      <section >
         <div id="main_slider" class="section carousel slide banner-main" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#main_slider" data-slide-to="0" class="active"></li>
               <li data-target="#main_slider" data-slide-to="1"></li>
               <li data-target="#main_slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <div class="row marginii">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <div class="carousel-sporrt_text ">
                              <h1 class="sport_text"><strong>Casual<br><span style="color: #fff;">Motorcycle</span></strong></h1>
                              <p class="lorem_text">Casual motorcycles take you to everywhere with convenience</p>
                               <button onclick="location.href ='ShowServlet'" class="boynow_bt" >Buy Now</button>
                               <button onclick="location.href ='contact.jsp'" class="contact_bt" >Contact Us</button>
                           </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <div class="img-box">
                              <figure><img src="images/casual.png" style="max-width: 100%;"/></figure>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="container">
                     <div class="row marginii">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <div class="carousel-sporrt_text ">
                              <h1 class="sport_text"><strong>Sports<br><span style="color: #fff;">Motorcycle</span></strong></h1>
                              <p class="lorem_text">Sport motorcycle are designed for everyone who loves speed</p>
                              <button onclick="location.href ='ShowServlet'" class="boynow_bt" >Buy Now</button>
                              <button onclick="location.href ='contact.jsp'" class="contact_bt" >Contact Us</button>
                           </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <div class="img-box">
                              <figure><img src="images/sport.png" style="max-width: 92%;"/></figure>
                           </div>
                        </div>
                     </div>
                  </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="row marginii">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <div class="carousel-sporrt_text ">
                              <h1 class="sport_text"><strong>Touring<br><span style="color: #fff;">Motorcycle</span></strong></h1>
                              <p class="lorem_text">Have a long trip? Don't worry we got you</p>
                               <button onclick="location.href ='ShowServlet'" class="boynow_bt" >Buy Now</button>
                               <button onclick="location.href ='contact.jsp'" class="contact_bt" >Contact Us</button>
                           </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <div class="img-box">
                              <figure><img src="images/touring.png" style="max-width: 114%;"/></figure>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      </div>
      </div>
   </div>
   </div>
   <!-- about section start -->
   <div class="container-fluid">
   <div class="about_section">
      <div class="container">
         <div class="about_img"><img src="images/about-img4.png" style="max-width: 100%;"></div>
         <h2 class="about_text"><strong>About <span style="color: #000;">Us</span></strong></h2>
         <div class="red_bt">
             <button onclick="location.href='about.jsp'" class="read_more" >Read More</button>
         </div>
      </div>
   </div>
   </div>
   <!-- about section end -->
   <!-- our section start -->
   <div class="our_section">
      <div class="container">
         <div class="row">
            <div class="col-sm-12">
               <h1 class="our_text"><strong>Our <span style="color: #000;">Motorcycles</span></strong></h1>
               <p class="about_lorem">We sell all motorcycles you love</p>
            </div>
         </div>
      </div>
      <div class="our_section_2">
         <div class="our_main">
            <div id="my_slider" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
               <div class="carousel-item active">
                   <p class="our_text1"> Casual Motorcycle </p>
                  <img class="d-block w-100" src="images/casual-2-1.png" alt="First slide">
               </div>
               <div class="carousel-item">
                   <p class="our_text1"> Sport Motorcycle </p>
                  <img class="d-block w-100" src="images/sport-2.png" alt="Second slide">
               </div>
               <div class="carousel-item">
                   <p class="our_text1"> Touring Motorcycle </p>
                  <img class="d-block w-100" src="images/touring-2.png" alt="Third slide">
               </div>
            </div>
               <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev">
                 <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                 <span class="sr-only">Previous</span>
               </a>
               <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
                 <span class="carousel-control-next-icon" aria-hidden="true"></span>
                 <span class="sr-only">Next</span>
               </a>
            </div>
          </div>
          <button onclick="location.href='ShowServlet'" class="seemore_bt" >See More</button>
      </div>
   </div>
   <div class="contact_section layout_padding">
      
   </div>
   <!-- our section end -->
   <!-- footer section start -->
   <div class="footer_section layout_padding footer_padding">
      <div class="container">
         <div class="row">
            <div class="col-sm-4">
               <h2 class="important_text">Important Link</h2>
               <div class="footer_menu">
                  <ul>
                     <li><a href="index.jsp">Home</a></li>
                     <li><a href="about.jsp">About Us</a></li>
                     <li><a href="ShowServlet">Gallery</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-sm-4">
               <h2 class="important_text">Social Link</h2>
               <div class="footer_menu">
                  <ul>
                     <li><a href="#">Facebook</a></li>
                     <li><a href="#">Youtube</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-sm-4">
               <h2 class="important_text">Please contact us</h2>
               <p class="footer_lorem_text">We trade only good</p>
            </div>
         </div>   
      </div>
   </div>
   <!-- footer section start -->
   <!-- copyright section start -->
   <div class="copyright_text">Copyright 2022 All Right Reserved By Group12</div>

      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <!-- javascript --> 
      <script src="js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script>
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
       $('#myCarousel').carousel({
            interval: false
        });
      </script>

      <script>
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
};
</script>
   </body>
</html>

