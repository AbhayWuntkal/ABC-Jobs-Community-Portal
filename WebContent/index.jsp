<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>Home</title>
<style type="text/css">
.html {
	font-family: Poppins;
}

hr.style-four {
	height: 12px;
	border: 0;
	box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);
}
</style>
</head>
<body>

	<div
		class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
		<h6 class="my-0 mr-md-auto font-weight-normal ">
			<a class="navbar-brand" href="index.jsp"><img
				src="Image/logo1.png" style="height: 90px;"></a>
		</h6>
		<nav class="my-2 my-md-0 mr-md-3">
			<div class="row">
				<div class="col-sm-12">
					<a class="p-2 text-blue" href="Register.jsp"
						style="text-decoration: none;">Find People</a>
				</div>
			</div>
		</nav>
		<nav>
			<a class="btn btn-outline-primary" href="Register.jsp"
				style="border-radius: 40px; margin: 10px;">SIGN UP</a>
		</nav>
		<br>

		<nav>
			<a class="btn btn-outline-primary" href="Login.jsp"
				style="border-radius: 40px; margin: 10px;">SIGN IN</a>
		</nav>

	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-6"
				style="margin-top: 100px; font-weight: 500;">
				<p style="font-size: 48px;">
					<span>Welcome to ABC JOBS your professional community</span>
				</p>
			</div>
			<div class="col-sm-12 col-md-6">
				<img src="Image/home.png" style="height: 100%; width: 120%;">
			</div>
		</div>
	</div>

	<br>
	<br>
	<hr
		style="height: 12px; border: 0; box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);">
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-7">
				<img src="Image/friend.gif" style="height: 90%; width: 100%;">
			</div>
			<div class="col-sm-12 col-md-5"
				style="font-weight: 400; margin-top: 40px;">
				<p style="font-size: 48px;">Help us find people</p>
				<p style="font-size: 48px;">you know</p>
				<a href="Register.jsp"><button class="btn btn-primary"
						style="border-radius: 40px; padding: 10px;">Find People</button></a>
			</div>
		</div>
	</div>
	<br>
	<br>
	<hr
		style="height: 12px; border: 0; box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);">
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-6"
				style="margin-top: 100px; font-weight: 400;">
				<p style="font-size: 48px;">Join your colleagues,</p>
				<p style="font-size: 48px;">classmates, and</p>
				<p style="font-size: 48px;">friends on Abc jobs.</p>
				<a href="Register.jsp"><button class="btn btn-primary"
						style="border-radius: 40px; padding: 10px;">Get Started</button></a>
			</div>
			<div class="col-sm-12 col-md-6">
				<img src="Image/join.gif" style="height: 100%; width: 120%;">
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	
</body>

</html>