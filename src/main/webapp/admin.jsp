<%@page contentType="text/html" pageEncoding="UTF-8"%><%= new java.util.Date() %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin dashboard</title>
  <link rel="stylesheet" href="css/Admin_Style.css">
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
      <li><img src="images/logout.png"><a href="login.jsp" class="active">Log Out</a></li>
    </ul>
  </div>
  <div class="container">
    <div class="header">
      <div class="nav">
        <div class="search">
          <input type="text" placeholder="Search...">
          <button type="submit"> <img src="images/search.png" alt=""></button>
        </div>
      </div>
      <div class="user">
        <i class="bell"><img src="images/Bell.png" alt=""></i>
        <div class="img-design">
          <img src="images/user.png" alt="">
        </div>
      </div>
    </div>
    <div class="content">
      <div class="cards">
        <div class="card">
          <div class="box">
            <a href="Add.html" class="btn">Add Item</a>
          </div>
          <div class="icon-design">
            <img src="images/add.png" alt="">
          </div>
        </div>
          <div class="card">
            <div class="box">
              <a href="Edit.html" class="btn">Edit Item</a>
            </div>
            <div class="icon-design">
              <img src="images/edit.png" alt="">
            </div>
          </div>
            <div class="card">
              <div class="box">
                <a href="Delete.html" class="btn">Delete Item</a>
              </div>
              <div class="icon-design">
                <img src="images/delete.png" alt="">
              </div>
            </div>
      </div>
        <div class="content-ii"></div>
    </div>
  </div>
</body>
</html>
