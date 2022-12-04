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
      <title>Contact Us</title>
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
                     <div class="togle_main"><a class="class="openbtn" onclick="openNav()"><img src="images/togle-menu-icon.png" style="max-width: 100%;"></a></div>
                  </div>
               </div>
            </div>
         </div>
     </div>

   <div class="contact_section layout_padding">
      <div class="container">
         <h1 class="contact_text"><strong>Contact Us</strong></h1>
      </div>
            <div class="contact_main">
               <div class="enput_section">
                  <div class="email_box">
                    <div class="input_main">
                       <div class="container">
                          <form action="ContactServlet" method="post">
                          	<h1 class="text-warning">${warn}</h1>
                            <div class="form-group">
                              <input type="text" class="email-bt" placeholder="Name" name="txtname" required>
                            </div>
                            <div class="form-group">
                              <input type="email" class="email-bt" placeholder="Email" name="txtemail" required>
                            </div>
                            <div class="form-group">
                              <input type="text" class="email-bt" placeholder="Phone Number" name="txtphone" required>
                            </div>
                            
                            <div class="form-group">
                                <textarea class="massage-bt" placeholder="Massage" rows="5" id="comment" name="txtmess" required></textarea>
                            </div>
                            <input type="submit" class="btn btn-success" value="Send">
                          </form>   
                       </div>               
                    </div>
                 </div>
               </div>
            </div>
   </div>


   <!-- footer section start -->
   <div class="footer_section layout_padding footer_padding">
      <div class="container">
         <div class="row">
            <div class="col-sm-4">
               <h2 class="important_text">Important Link</h2>
               <div class="footer_menu">
                  <ul>
                     <li><a href="#">Home</a></li>
                     <li><a href="#">About Us</a></li>
                     <li><a href="gallery.jsp.jsp">Gallery</a></li>
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
   <div class="copyright_text">Copyright 2022 All Right Reserved By Group12</div>
   </div>

   </div>

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
}
</script>

   </body>
   </html>