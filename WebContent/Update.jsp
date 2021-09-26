<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style type="text/css">
* {
	box-sizing: border-box;
}

.html {
	font-family: Poppins;
}

/* Float four columns side by side */
.column {
	float: left;
	width: 100%;
	padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {
	margin: 0 -5px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
	.column {
		width: 100%;
		display: block;
		margin-bottom: 20px;
	}
}

/* Style the counter cards */
.card {
	border: 1px solid black;
	padding: 16px;
	text-align: left;
	background-color: #f1f1f1;
	padding: 25px;
}

input[type=text], select {
	width: 60%;
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
			<a class="navbar-brand" href="Dashboard.jsp"><img
				src="Image/logo1.png" style="height: 90px;"></a>
		</h6>
		<nav class="my-2 my-md-0 mr-md-3">
			<div class="row">
				<div class="col-sm-12">
					<a class="p-2 text-blue" href="SearchUser.jsp"
						style="text-decoration: none;">Find People</a>
				</div>
			</div>
		</nav>
		<br>
		<nav>
			<a class="btn btn-outline-dark" href="logout"
				style="border-radius: 40px; margin: 10px;">Logout</a>
		</nav>
	</div>
	<br>
	<br>



	<div class="line">
		<div class="container">
			<s:form action="update" method="post" theme="css_xhtml">
				<s:iterator value="beanList">

					<button class="btn btn-primary"
						style="border-radius: 30px; float: right;" type="submit"
						value="update">Save Changes</button>
					<br>
					<br>
					<br>
					<div class="row">
						<div class="column">
							<div class="card">
								<img src="Image/pic.png"
									style="height: 150px; width: 150px; border-radius: 50%;">
								<p style="font-size: 25px;">
									<input type="text" name="Fname" label="First Name"
										value="<s:property value='fname' />" /> <input type="text"
										name="Lname" label="Last Name"
										value="<s:property value='lname' />" />
								</p>
								<p style="font-size: 22px;">
									<input type="text" name="City" label="City"
										value="<s:property value='city' />" />
								</p>
							</div>
						</div>
					</div>

					<div class="column">
						<br>
						<div class="card">
							<h3 style="color: #2e3d8c;">Qualification</h3>
							<p style="font-size: 22px;">
								<input type="text" name="Qualification" label="Qualification"
									value="<s:property value='qualification' />" />
							</p>
						</div>
					</div>
					<br>

					<div class="column">
						<br>
						<div class="card">
							<h3 style="color: #2e3d8c;">Email</h3>
							<p style="font-size: 22px;">
								<s:property value="email" />
							</p>
						</div>
						<br> <br> <br> <br>
					</div>














				</s:iterator>
			</s:form>
		</div>
	</div>

</body>
</html>