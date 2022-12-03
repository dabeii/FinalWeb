<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
  <a href="shop.jsp">Shop</a>
  <a href="contact.jsp">Contact</a>
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
               <div class="logo"><img src="images/logo.png"></div>
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
		<div class="site-section">
			<div class="container">

				<div class="row mb-5">
					<div class="col-md-9 order-2">

						<div class="row">
							<div class="col-md-12 mb-5">
								<div class="float-md-left mb-4">
									<h2 class="text-black h5"></h2>
								</div>
								
							</div>
						</div>

						<div id="content" class="row mb-5">
							<c:forEach items="${listP}" var="o">
								<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
									<div class="block-4 text-center border">
										<figure class="block-4-image">
											<a href="detailPage?productID=${o.pid}"><img
												src="${o.image}" alt="Image placeholder" class="img-fluid"></a>
										</figure>
										<div class="block-4-text p-4">
											<h3>
												<a href="detailPage?productID=${o.pid}">${o.name}</a>
											</h3>
											<p class="mb-0">Finding perfect shoes</p>
											<p class="text-primary font-weight-bold">$${o.price}</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>

						<div id="pagingContent" class="row" data-aos="fade-up">
							<div class="col-md-12 text-center">
								<div class="site-block-27">
									<ul>
										<c:if test="${cateID != null }">
											<c:if test="${(tag - 1) > 0}">
												<li><a href="category?cateID=${cateID}&p=${tag - 1}">&lt;</a></li>
											</c:if>
											<c:forEach begin="1" end="${endP}" var="i">
												<li class="${tag == i ? 'active':''}"><a
													href="category?cateID=${cateID}&p=${i}">${i}</a></li>
											</c:forEach>
											<c:if test="${(tag + 1) <= endP}">
												<li><a href="category?cateID=${cateID}&p=${tag + 1}">&gt;</a></li>
											</c:if>
										</c:if>

										<c:if test="${cateID == null }">
											<c:if test="${(tag - 1) > 0 && cateID == null}">
												<li><a href="shopPage?p=${tag - 1}">&lt;</a></li>
											</c:if>
											<c:forEach begin="1" end="${endP}" var="i">
												<li class="${tag == i ? 'active':''}"><a
													href="shopPage?p=${i}">${i}</a></li>
											</c:forEach>
											<c:if test="${(tag + 1) <= endP && cateID == null}">
												<li><a href="shopPage?p=${tag + 1}">&gt;</a></li>
											</c:if>
										</c:if>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-3 order-1 mb-5 mb-md-0">
						<div class="border p-4 rounded mb-4">
							<h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
							<ul class="list-unstyled mb-0">
								<c:forEach items="${categoryList}" var="o">
									<li class="mb-1"><a href="category?cateID=${o.cateID }"><span>${o.cateName}</span></a>
										<span class="text-black ml-auto"></span></li>
								</c:forEach>
							</ul>
						</div>

						<div class="border p-4 rounded mb-4">
							<div class="mb-4">
								<h3 class="mb-3 h6 text-uppercase text-black d-block">Filter
									by Price</h3>
							</div>
							<div class="form-check mb-3">
								<input onchange="searchByPriceUnder200()" type="radio"
									class="form-check-input" id="under100"
									name="materialExampleRadios"> <label
									class="form-check-label text-uppercase card-link-secondary d-block"
									for="under100">Under $200</label>
							</div>
							<div class="form-check mb-3">
								<input onchange="searchByPrice200To300()" type="radio"
									class="form-check-input" id="100200"
									name="materialExampleRadios"> <label
									class="form-check-label text-uppercase card-link-secondary d-block"
									for="100200">$200 to $300</label>
							</div>
							<div class="form-check mb-3">
								<input onchange="searchByPriceAbove300()" type="radio"
									class="form-check-input" id="200above"
									name="materialExampleRadios"> <label
									class="form-check-label text-uppercase card-link-secondary d-block"
									for="200above">$300 & Above</label>
							</div>
							<form>
								<div class="d-flex align-items-center mt-4 pb-1">
									<div class="md-form md-outline my-0">
										<input oninput="searchByPriceMinToMax()" id="priceMin"
											type="text" class="form-control mb-0"> <label
											for="priceMin">$ Min</label>
									</div>
									<p class="px-2 text-muted">-</p>
									<div class="md-form md-outline my-0">
										<input oninput="searchByPriceMinToMax()" id="priceMax"
											type="text" class="form-control mb-0"> <label
											for="priceMax">$ Max</label>
									</div>
								</div>
							</form>
							<div class="mb-4">
								<form action="searchAjax" method="post"
									class="site-block-top-search">
									<span class="icon icon-search2"></span> <input
										oninput="searchByName(this)" name="txt" type="text"
										class="form-control border-0" placeholder="Search">
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/main.js"></script>

	<script>
		function searchByName(param) {
			var txtSearch = param.value;
			$.ajax({
				url : "/FinalProject/searchAjax",
				type : 'POST',
				data : {
					txt : txtSearch
				},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML = data;
				},
				error : function(e) {
					console.log(e.message);
				}
			});
		}
		function loadLastestAjax() {
			$.ajax({
				url : "/FinalProject/load_lastest_ajax",
				type : 'POST',
				data : {},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML = data;
				},
				error : function(e) {
					console.log(e.message);
				}
			});
		}
		function searchByPriceUnder200() {
			$.ajax({
				url : "/FinalProject/searchAjaxPriceUnder200Shop",
				type : 'POST',
				data : {},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML = data;
				},
				error : function(e) {
					console.log(e.message);
				}
			});
		}
		function searchByPrice200To300() {
			$.ajax({
				url : "/FinalProject/searchByPrice200To300Shop",
				type : 'POST',
				data : {},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML = data;
				},
				error : function(e) {
					console.log(e.message);
				}
			});
		}
		function searchByPriceAbove300() {
			$.ajax({
				url : "/FinalProject/searchAjaxPriceAbove300Shop",
				type : 'POST',
				data : {},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML = data;
				},
				error : function(e) {
					console.log(e.message);
				}
			});
		}
	    function searchByPriceMinToMax(){
	        var numMin = document.getElementById("priceMin").value;
	        var numMax = document.getElementById("priceMax").value;
	        $.ajax({
	            url: "/FinalProject/searchAjaxPriceMinToMax",
	            type: "get", //send it through get method
	            data: {
	                priceMin: numMin,
	                priceMax: numMax
	            },
	            success: function (data) {
	                var row = document.getElementById("content");
	                row.innerHTML = data;
	            },
	            error: function (xhr) {
	                //Do Something to handle error
	            }
	        });
	    }
	</script>
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
                     <li><a href="shop.jsp">Gallery</a></li>
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