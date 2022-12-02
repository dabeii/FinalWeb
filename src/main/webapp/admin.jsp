<%@page contentType="text/html" pageEncoding="UTF-8"%><%= new java.util.Date() %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Add Product</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/manager.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="css/style1.css">
  <style>
    img {
      width: 110px;
      height: 50px;
      position: center;
    }
  </style>
</head>
<body>
<div class="side-bar">
  <div class="logo-name">
    <a class="header-img"  href="index.jsp">
        <img class="login-logo" src="images/logo.png" alt="Main menu logo">
    </a>
  </div>
  <ul class="menu">
    <li><img src="images/manage.png"><a href="admin.jsp" class="active">Manage</a></li>
    <li><img src="images/logout.png"><a href="LogOut" class="active">Log Out</a></li>
  </ul>
</div>
<div class="container">
  <div class="header">
    <div class="nav">
      <div class="search">
        <input type="text" placeholder="Search...">
        <button type="submit"><img src="images/search.png" alt=""></button>
      </div>
    </div>
    <div class="user">
      <div class="img-design">
        <img src="images/user.png" alt="">
      </div>
    </div>
  </div>
  <div class="content">
    <div class="cards">
      <div class="card">
        <div class="box">
          <a href="#addProductModal" class="btn btn-success" data-toggle="modal"> <span>Add Product</span></a>
        </div>
        <div class="icon-design">
          <img src="images/add.png" alt="">
        </div>
      </div>
      <div class="card">
        <div class="box">
          <a href="#editProductModal" class="btn btn-success" data-toggle="modal"> <span>Edit Product</span></a>
        </div>
        <div class="icon-design">
          <img src="images/edit.png" alt="">
        </div>
      </div>
      <div class="card">
        <div class="box">
          <a href="#" class="btn">Delete Item</a>
        </div>
        <div class="icon-design">
          <img src="images/delete.png" alt="">
        </div>
      </div>
    </div>
    <div class="content-ii"></div>
  </div>
</div>
<!--Form add product-->
<div id="addProductModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <form action="add" method="post">
        <div class="modal-header">
          <h4 class="modal-title">Add Product</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label>Product ID</label>
            <input name="pid" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Name</label>
            <input name="name" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Image</label>
            <input name="image" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Price</label>
            <input name="price" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Quantity</label>
            <input name="quantity" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Type</label>
            <input name="type" type="text" class="form-control" required>
          </div>
        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
          <input type="submit" class="btn btn-success" value="Add">
        </div>
      </form>
    </div>
  </div>
</div>
<!--Form edit product-->
<div id="editProductModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <form action="edit" method="post">
        <div class="modal-header">
          <h4 class="modal-title">Edit Product</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label>ID</label>
            <input value="${detail.id}" name="id" type="text" class="form-control" readonly required>
          </div>
          <div class="form-group">
            <label>Product ID</label>
            <input value="${detail.pid}" name="pid" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Name</label>
            <input value="${detail.name}" name="name" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Image</label>
            <input value="${detail.image}" name="image" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Price</label>
            <input value="${detail.price}" name="price" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Quantity</label>
            <input value="${detail.quantity}" name="quantity" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Type</label>
            <input value="${detail.type}" name="type" type="text" class="form-control" required>
          </div>
        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
          <input type="submit" class="btn btn-success" value="Edit">
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
