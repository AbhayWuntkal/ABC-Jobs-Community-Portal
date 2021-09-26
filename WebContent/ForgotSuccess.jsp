<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Success</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style type="text/css">
.html {
	font-family: Poppins;
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
		<p style="text-align: center; font-size: 30px; font-weight: 500;">
			<span> Your password has been sent to your email account <s:property
					value="email" /> Please click here to <br> <a
				href="Login.jsp"><button class="btn btn-info">SIGN IN</button></a>
			</span>
		</p>
	</div>
</body>

</html>