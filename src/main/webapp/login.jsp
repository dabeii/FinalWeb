<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/Login_Style.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Sign in</title>
</head>
<body>
<div class = "container">
    <div class="container-left">
        <img class="login-logo" src="images/logo.png" alt="logo">
        <img class="login-image-1" src="images/login.png" alt="man">
    </div>
    <div class="container-right">
	  <a href="index.jsp"> Back to HomePage  </a>
        <form action=LoginServlet method="post">
            <h1>OUR SPEEDY</h1>
            <p class="welcome">Welcome back !!!</p>
            <p class="sign-in">Sign in</p>
            <div class="txt_field">
                <input type="text" name=txtName >
                <span></span>
                <label>Email</label>
            </div>
            <div class="txt_field">
                <input type="password" name=txtPassword >
                <span></span>
                <label>Password</label>
            </div>
            <div class="pass">Forgot Password?</div>
            <input type="submit" value="Login">
            <div class="signup_link">
                I don’t have an account ? <a href="signup.jsp">Sign up</a>
            </div>
        </form>
    </div>
    <div class="clear"></div>
    <hr class="line-login">
</div>
</body>
</html>