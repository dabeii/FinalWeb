<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <link rel="stylesheet" href="css/SignUp_Style.css">

</head>
<body>
<div class = "container">
    <div class="container-left">
        <a class="header-img"  href="index.jsp">
                    <img class="login-logo" src="images/logo.png" alt="Main menu logo">
        </a>
        <img class="login-image-1"  src="images/sport.png" alt="man">
    </div>
    <div class="container-right">

        <form action=SignUpServlet method="post" id="formDangKy">
            <h1>Sport Motorcycle</h1>
            <p class="welcome">Welcome back !!!</p>
            <p class="sign-in" style="font-size: 30px">Create an account</p>
            <div class="flex_txt_field">
               
            </div>
			<a class="text-warning">${warn}</a>
			<a class="text-warning">${warn2}</a>
            <div class="txt_field" id="txtEmail">
                <input type="text" name="txtName" required>
                <span></span>
                <label>Email</label>
            </div>

            <div class="flex_txt_field">
                <div class="txt_field"  >
                    <input type="text" name="txtPassword" required>
                    <span></span>
                    <label>Password</label>
                </div>
                <div class="txt_field" >
                    <input type="text" name="txtRepassword" required>
                    <span></span>
                    <label>Confirm password</label>
                </div>
            </div>
            <div class="note">By Creating an account, you agree to our User
                Agreement and acknowledge reading our User Privacy.</div>
            <input type="submit" value="Create an account">
            <div class="signup_link">
                Already a member ? <a href="login.jsp">Sign in</a>
            </div>
        </form>
    </div>
    <div class="clear"></div>
    <hr class="line-login">
</div>

</body>
</html>