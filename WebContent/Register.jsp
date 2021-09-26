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
<title>Register</title>
<style type="text/css">
.html {
	font-family: Poppins;
}

.form {
	background: #f9f9f982;
	width: 80%;
	padding: 20px 60px 20px 60px;
	text-align: left;
	border-radius: 13px;
	margin: auto;
	margin-top: 30px;
	border: 1px solid black;
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
	width: 60%;
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
	width: 100%;
	padding: 15px 20px;
	margin: 8px 8px 8px 0px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	height: 45px;
}

input[type=text], select {
	width: 100%;
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
			<a class="btn btn-outline-primary" href="Login.jsp"
				style="border-radius: 40px; margin: 10px;">SIGN IN</a>
		</nav>
	</div>
	<br>
	<br>

	<div class="container">
		<h4 style="text-align: center;">Register and find your dream job</h4>
		<div class="form">
			<font size="3" color="red">All fields are required.</font> <br>
			<br>
			<s:form action="registeruser" method="post" theme="css_xhtml">
				<label for="fname">First Name:</label>
				<s:textfield name="fname" />
				<br>
				<label for="lname">Last Name:</label>
				<s:textfield name="lname" />
				<br>
				<label for="pword">Password:</label>
				<s:password name="pword" />
				<br>
				<label for="email">Email ID:</label>
				<s:textfield name="email" />
				<br>
				<label for="qualification">Qualification:</label>
				<s:textfield name="qualification" />
				<br>
				<label for="city">City:</label>
				<s:textfield name="city" />
				<br>
				<p style="text-align: center; color: black; font-weight: 400;">By
					registering with us you agree to our Terms and Conditions</p>
				<center>
					<s:submit value="REGISTER" />
				</center>
			</s:form>
			<br>
			<p style="font-size: 20px;">
				Already have an account? <a href="Login.jsp">SIGN IN</a>
			</p>
		</div>
	</div>
	<br>
	<br>
	<br>
	<s:if test="ctr>0">
		<span style="color: green;"><s:property value="msg" /></span>
	</s:if>

	<s:else>
		<span style="color: red;"><s:property value="msg" /></span>
	</s:else>

</body>
</html>