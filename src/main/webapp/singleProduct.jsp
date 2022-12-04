<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Shop</title>
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
	<link rel="stylesheet" href="fonts/icomoon/style.css">

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">


	<link rel="stylesheet" href="css/aos.css">

	<link rel="stylesheet" href="css/style.css">

	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>About Us</title>
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
<body>
<div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="index.jsp">Home</a>
  <a href="about.jsp">About</a>
  <a href="ShowServlet">Shop</a>
    <c:if test="${sessionScope.ac.admin == 1}">
    <a href="admin.jsp">Product Manager</a>
  </c:if>
</div>
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
                     <div class="shoping_bag"><img src="images/shopping-bag.png"></div>
                  </div>
                  <div class="right_main">
                     <div class="togle_main"><a class="class="openbtn" onclick="openNav()"><img src="images/togle-menu-icon.png" style="max-width: 100%;"></a></div>
                  </div>
               </div>
            </div>
         </div>
     </div>
	<div class="site-wrap">

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="ShowServlet">Products</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">${detail.name}</strong>
					</div>
				</div>
			</div>
		</div>
		<c:if test="${mess != null }">
			<div class="alert alert-success">${mess}</div>
		</c:if>
		<form action="addCart?pid=${detail.pid}" method="post">
			<div class="site-section">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<img src="${detail.image}" alt="Image" class="img-fluid">
						</div>
						<div class="col-md-6">
							<h4>Type: ${detail.type}</h4>
							<h2 class="text-black">${detail.name}</h2>
							<p>
								<strong class="text-primary h4">${detail.price} VND</strong>
							</p>
							<div class="mb-5">
								<div class="input-group mb-3" style="max-width: 120px;">
									<div class="input-group-prepend">
										<button class="btn btn-outline-primary js-btn-minus"
											type="button">&minus;</button>
									</div>
									<input name="ammount" type="text"
										class="form-control text-center" value="1" placeholder=""
										aria-label="Example text with button addon"
										aria-describedby="button-addon1">
									<div class="input-group-append">
										<button class="btn btn-outline-primary js-btn-plus"
											type="button">&plus;</button>
									</div>
								</div>

							</div>
							<p>
								<button type="submit" class="buy-now btn btn-sm btn-primary">
									Add To Cart</button>
								<!--  <a href="addCart?pid=${detail.pid}"
								class="buy-now btn btn-sm btn-primary">Add To Cart</a>-->
							</p>

						</div>
					</div>
				</div>
			</div>
		</form>

		<!--
		<div class="site-section border-bottom" data-aos="fade">
			<div class="container">
				<div class="row justify-content-center mb-5">
					<div class="col-md-7 site-section-heading text-center pt-4">
						<h2>Review</h2>
					</div>
				</div>
			</div>
		</div>
		<!-->
	</div>
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
               <p class="footer_lorem_text">We sell only good</p>
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