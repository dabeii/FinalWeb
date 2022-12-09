<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="DAO.DAO" %>
<%@page import="Uti.Connect2DB" %>
<%@page import="Models.*" %>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Your cart</title>
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
<link rel="stylesheet" href="emptyCart_template/css/style.css">

</head>
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
 					<div class="shoping_bag"><a href="cart.jsp"><img src="images/shopping-bag.png"></a></div>                  </div>
                  <div class="middle_main">
                  </div>
                  <div class="right_main">
                     <div class="togle_main"><a class="class="openbtn" onclick="openNav()"><img src="images/togle-menu-icon.png" style="max-width: 100%;"></a></div>
                  </div>
               </div>
            </div>
         </div>
     </div>
	<div class="site-wrap">
<%
Account acc = (Account) request.getSession().getAttribute("acc");
if(acc != null){
	request.setAttribute("acc",acc);
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list != null)
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = Connect2DB.getConnection();
	DAO d = new DAO();
	cartProduct = d.getCartproduct(cart_list);
	request.setAttribute("cart_list",cart_list);
}

%>

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="ShowServlet">Shop</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Cart</strong>
					</div>
				</div>
			</div>
		</div>
			<div id="content" class="site-section">
				<div class="container">
					<div class="row mb-5">
						<form class="col-md-12" method="post">
							<div class="site-blocks-table">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th class="product-thumbnail">ID</th>
											<th class="product-name">Product</th>
											<th class="product-price">Price</th>
											<th class="product-remove">Remove</th>
										</tr>
									</thead>
									<tbody>
									<% if(cart_list != null)
										{
											for(Cart c:cartProduct)
											{%>
												<tr>
												<td class="product-thumbnail"><a><%=c.getId() %></a></td>
												<td class="product-name">
													<h2 class="h5 text-black"><%=c.getName() %></h2>
												</td>
												<td><%=c.getPrice() %> VND</td>

												<td><a href="RemoveServlet?id=<%=c.getId() %>"
													class="btn btn-primary btn-sm">X</a></td>
											</tr>
											<%}
										}
										%>
									</tbody>
								</table>
							</div>
						</form>
					</div>

					<div class="row">
						<div class="col-md-6">
							<div class="row mb-5">
								<div class="col-md-6">
									<button class="btn btn-primary btn-sm btn-block"
										onclick="window.location='ShowServlet'"
										class="btn btn-outline-primary btn-sm btn-block">Continue
										Shopping</button>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">								
								</div>
								<div class="col-md-8 mb-3 mb-md-0">
								</div>
								<div class="col-md-4">
								</div>
							</div>
						</div>
						<div class="col-md-6 pl-5">
							<div class="row justify-content-end">
								<div class="col-md-7">
									<div class="row">
										<div class="col-md-12 text-right border-bottom mb-5">
										
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-md-6">
											
										</div>
										<div class="col-md-6 text-right">
											
										</div>
									</div>
									<div class="row mb-5">
										<div class="col-md-6">

										</div>
										<div class="col-md-6 text-right">
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<button class="btn btn-primary btn-lg py-3 btn-block"
												onclick="">Proceed To
												Checkout</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<c:if test="${cartList.isEmpty()}">
			<div class="container-fluid  mt-100">
				<div class="row">

					<div class="col-md-12">

						<div class="card">
							<div class="card-body cart">
								<div class="col-sm-12 empty-cart-cls text-center">
									<img
										src="https://media.istockphoto.com/vectors/empty-shopping-bag-icon-online-business-vector-icon-template-vector-id861576608?k=20&m=861576608&s=612x612&w=0&h=UgHaPYlYrsPTO6BKKTzizGQqFgqEnn7eYK9EOA16uDs="
										width="250" height="250" class="img-fluid mb-4 mr-3">
									<h3>
										<strong>Your Cart is Empty</strong>
									</h3>
									<h4>Add something to make us happy :)</h4>
									<a href="shopPage" class="btn btn-primary cart-btn-transform m-3"
										data-abc="true">Continue shopping</a>


								</div>
							</div>
						</div>


					</div>

				</div>

			</div>
		</c:if>

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
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<script>
	function addAmmount(pid) {
		var id = pid;
        $.ajax({
            url: "/FinalProject/addAmmoutAjax",
            type: 'POST',
            data: {
        		productID: id,
            },
            success: function (data) {
            	loadCartAjax();
            },
            error: function (e) {
                console.log(e.message);
                throw e;
            }
        });
	}
	function subAmmount(pid) {
		var id = pid;
        $.ajax({
            url: "/FinalProject/subAmmountAjax",
            type: 'POST',
            data: {
        		productID: id,
            },
            success: function (data) {
               loadCartAjax();
            },
            error: function (e) {
                console.log(e.message);
                throw e;
            }
        });
	}
	function deleteProCart(pid) {
		var id = pid;
        $.ajax({
            url: "/FinalProject/delete_cart_ajax",
            type: 'POST',
            data: {
            	productID: id,
            },
            success: function (data) {
            	loadCartAjax();
            },
            error: function (e) {
                console.log(e.message);
                throw e;
            }
        });
	}
	function loadCartAjax() {
        $.ajax({
            url: "/FinalProject/loadcartAjax",
            type: 'POST',
            data: {
            },
            success: function (data) {
               var row = document.getElementById("content");
               row.innerHTML = data;
            },
            error: function (e) {
                console.log(e.message);
                throw e;
            }
        });
	}
	</script>

</body>
</html>