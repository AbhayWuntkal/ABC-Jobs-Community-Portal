<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style type="text/css">
.html {
	font-family: Poppins;
}

.form {
	background: #ffffff;
	width: 100%;
	padding: 0px 0px 0px 30px;
	text-align: left;
	border-radius: 3px;
	margin: auto;
	margin-top: 30px;
	border: 1px solid black;
	box-shadow: rgba(0, 0, 0, 0.35) 5px 5px 5px;
}

.form label {
	margin-top: 0;
	display: block;
	color: black;
	text-align: left;
	font-family: Sans-Serif;
	font-weight: 600;
}

input[type=submit] {
	width: 85%;
	height: 50px;
	background: #2e3d8c;
	color: #f4f6f6;
	margin: 8px 8px 8px 0px;
	border: none;
	border-radius: 7px;
	cursor: pointer;
	font-size: 18px;
}

input[type=password], select {
	width: 85%;
	padding: 15px 20px;
	margin: 8px 8px 8px 0px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	height: 45px;
}

input[type=text], select {
	width: 85%;
	padding: 15px 20px;
	margin: 8px 8px 8px 0px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	height: 45px;
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
		<nav>
			<a class="btn btn-outline-primary" href="Register.jsp"
				style="border-radius: 40px; margin: 10px;">SIGN UP</a>
		</nav>
		<nav>
			<a href="Login.jsp" style="text-decoration: none; float: right;"><button
					type="button" class="btn btn-primary" style="border-radius: 30px; color: white;">Login
					as Programmer</button></a>
		</nav>
	</div>
	<br>
	<br>

	<div class="container">
		<h2 style="font-weight: bolder; color: #2e3d8c; text-align: center;">Admin
			Login</h2>
		<div class="form">
			<div class="row">
				<div class="col-sm-12 col-md-5" style="padding-top: 30px;">
				<h3 style="font-weight: 700; color: #2e3d8c;">Hey!! Ready to rock ? </h3>
				<br>
				<br>
					<s:form action="adminLogin" method="post" theme="css_xhtml">
						<label for="email">Username:</label>
						<s:textfield  name="uname"
							placeholder="Enter Your User name" />
							<br>
							<label for="email">Password</label>
						<s:password name="a_pword" placeholder="Enter Your User name" />
						<br>
						<s:submit value="Login" />
					</s:form>
				</div>
				<div class="col-sm-12 col-md-5 col-md-4">
					<img src="Image/admin.png"
						style="height: 100%; width: 150%; padding-right: 30px;">
				</div>
			</div>
		</div>
	</div>


</body>
</html>