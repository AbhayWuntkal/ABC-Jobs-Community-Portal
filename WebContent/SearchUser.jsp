<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Search People</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<style type="text/css">
* {
	box-sizing: border-box;
}
/* Float four columns side by side */
.column {
	float: left;
	width: 100%;
	padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row1 {
	margin: 0 -5px;
}

/* Clear floats after the columns */
.row1:after {
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
	width: 990px;
}

.html {
	font-family: Poppins;
}

input[type=text], select {
	width: 100%;
	padding: 15px 20px;
	margin: 8px 8px 8px 0px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 50px;
	box-sizing: border-box;
	height: 52px;
}

input[type=submit] {
	width: 60%;
	height: 50px;
	background: #2e3d8c;
	color: #f4f6f6;
	margin: 8px 8px 8px 0px;
	border: none;
	border-radius: 50px;
	cursor: pointer;
	font-size: 18px;
}
</style>
</head>
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
	<br>



	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-8">
				<s:form action="SearchUser" method="search" theme="css_xhtml">
					<s:textfield name="Search"
						placeholder="Try to search with First or Last name." />
			</div>
			<div class="col-md-4">
				<s:submit style="" value="Find" />
			</div>
			<br> <br>
			</s:form>

			<s:if test="noData==true">
				<s:iterator value="beanList">
					<a href="UserProfile.action?email=<s:property value="email"/>">
						<br> <br>


						<div class="row1">
							<div class="column">
								<div class="card">
									<img src="Image/pic.png"
										style="height: 150px; width: 150px; border-radius: 50%;">
									<div>
										<p style="font-size: 25px;">
											<s:property value='fname' />
											<s:property value='lname' />
										</p>
									</div>
								</div>
							</div>

						</div>

					</a>
				</s:iterator>

			</s:if>
			<s:else>
				<div style="color: red;"></div>
			</s:else>
			<s:if test="insert>0">
				<span style="color: red;"><s:property value="msgs" /></span>
			</s:if>
			<s:else>
				<span style="color: red;"><s:property value="msgs" /></span>
			</s:else>
		</div>
	</div>


</body>
</html>