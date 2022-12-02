<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/Login_Style.css">
    <title>Sign in</title>
</head>
<body>
<div class = "container">
    <div class="container-left">
        <a class="header-img"  href="index.jsp">
                    <img class="login-logo" src="images/logo.png" alt="Main menu logo">
        </a>
        <img class="login-image-1" src="images/sport-4.png" alt="man">
    </div>
    <div class="container-right">
        <form action=LoginServlet method="post">
            <h1>OUR SPEEDY</h1>
            <p class="welcome">Welcome back !!!</p>
            <p class="sign-in">Sign in</p>
            <p class="text-warning">${warn}</p>
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