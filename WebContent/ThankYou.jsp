<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ThankYou</title>
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
	<br>
	<br>

	<div class="container" style="text-align: center;">
		<h1>Congratulations !!</h1>
		<br>
		<h3>your account is created thank you for registering with us <s:property value="Fname" /></h3>
		<br>
		<h2>Login Right away!</h2>
		<br>
		<a href="Login.jsp" style="text-decoration: none; font-size: 5"><button class="btn btn-info">SIGN IN</button></a>
	</div>



</body>
</html>