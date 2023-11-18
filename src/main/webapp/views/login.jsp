<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="we-login-register">
		<div class="form-title">
			<i class="fa fa-key"></i>login 
			<span>sign in now and meet the
				awesome Friends around the world. 
			</span>
			<c:if test="${not empty message }">
				<br>
				<span style=" color: red; margin-top: 10px; font-size: 16px; padding: 4px 10px; background-color: antiquewhite;"> 
					${message }
				</span>
			</c:if>
		</div>
		<form class="we-form" id="form_login" method="post" action="">
			<span id="email_err" style="color: red;"></span><br> <input
				type="text" name="email_login" id="email_login" placeholder="Email"><br>
			<span id="password_err" style="color: red;"></span><br> <input
				type="password" name="password_login" id="password_login"
				placeholder="Password"> <input type="checkbox"
				name="remember"><label>remember me</label>
			<button type="submit" name="submit_login" data-ripple="">sign
				in</button>
			<a class="forgot underline" href="#" title="">forgot password?</a>
		</form>
		<a class="with-smedia facebook" href="#" title="" data-ripple=""><i
			class="fa fa-facebook"></i></a> <a class="with-smedia twitter" href="#"
			title="" data-ripple=""><i class="fa fa-twitter"></i></a> <a
			class="with-smedia instagram" href="#" title="" data-ripple=""><i
			class="fa fa-instagram"></i></a> <a class="with-smedia google" href="#"
			title="" data-ripple=""><i class="fa fa-google-plus"></i></a> <span>don't
			have an account? <a class="we-account underline" href="#" title=""
			class="link-danger" class="btn btn-primary" data-bs-toggle="modal"
			data-bs-target="#exampleModal" data-bs-whatever="@fat">register
				now</a>
		</span>
	</div>
</body>
</html>