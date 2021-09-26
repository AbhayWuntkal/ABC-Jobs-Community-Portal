<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Access</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
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
	
	
	
	
	
	<div class="container" style="text-align: center;">
		<s:if test="noData==true">
			<table>
				<thead class="thread-dark">
					<tr>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Email</th>
						<th scope="col">Qualification</th>
						<th scope="col">City</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<s:iterator value="beanList">
					<tr>
						<td><s:property value="fname" /></td>
						<td><s:property value="lname" /></td>
						<td><s:property value="email" /></td>
						<td><s:property value="qualification" /></td>
						<td><s:property value="city" /></td>
						<td><a
							href="deleterecord.action?Email=<s:property value="email"/>">
								<button class="button-delete">Delete</button>
						</a></td>
					</tr>
				</s:iterator>
			</table>
		</s:if>
		<s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else>
	</div>
</body>
</html>