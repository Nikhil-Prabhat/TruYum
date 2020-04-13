<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditMenu</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.affix {
	top: 0;
	width: 100%;
	z-index: 9999 !important;
}

.affix+.container-fluid {
	padding-top: 70px;
}

.navbar {
	margin-bottom: 0;
	background-color: #422057FF;
	min-height: 70px;
	z-index: 9999;
	border: 0;
	font-size: 14px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #f4511e !important;
	background-color: #fff !important;
}

.mybutton {
	background-color: #0099ff;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

#myform {
	position: relative;
	margin: 10px 10px 10px 10px;
	style ="text-align: center";
}

.error {
	color: red;
}
</style>
</head>
<body>

	<div class="container-fluid"
		style="background-color: #FFFFFF; font-family: Comic Sans MS;">
		<div class="container text-center">
			<h1 class="text-success">TruYum</h1>
			<h3 class="text-danger">The World's Fine Restaurant</h3>
		</div>

		<nav class="navbar navbar-inverse" data-spy="affix"
			data-offset-top="250">
			<div class="container-fluid">

				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavBar">

						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>

					</button>
					<a class="navbar-brand" href="#"> <img
						src="/restaurant-logo-design-vector-10067826.jpg"
						class="img-circle" alt="Logo"
						style="width: 60px; bottom: 10px; position: relative;">
					</a>
				</div>

				<div class="collapse navbar-collapse" id="myNavBar">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="show-menu-list-admin"><span
								class="glyphicon glyphicon-gift"></span>Menu</a></li>

					</ul>

				</div>

			</div>

		</nav>

	</div>

	<div>
		<center>


			<form:form id="myform" action="edit-menu-item" method="post"
				modelAttribute="menuitem">
				<h1 style="font-size: 40px;font-family:Times New Roman;">Edit Menu Item</h1>
				<table cellspacing="10">
					<tr>
						<td colspan="4"><h5>Name</h5> <form:input path="name"
								size="100" /> <form:errors path="name" cssClass="error" /></td>
					</tr>




					<tr>
						<td><h5>Price (Rs.)</h5> <form:input path="price" /> <form:errors
								path="price" cssClass="error" /></td>


						<td><h5>Active</h5> <form:radiobutton path="active"
								value="true" />Yes <form:radiobutton path="active"
								value="false" />No</td>


						<td><h5>Date of Launch</h5> <form:input path="dateOfLaunch"
								type="date" /> <form:errors path="dateOfLaunch" type="date"
								cssClass="error" /></td>


						<td><h5>Category</h5> <form:select path="category">
								<form:options items="${categoryList }" />
							</form:select></td>

					</tr>

					<tr>
						<td colspan="4"><form:checkbox path="freeDelivery" />Free
							Delivery<form:errors path="freeDelivery" cssClass="error" /></td>


					</tr>

					<tr>
						<td colspan="4"><form:button class="mybutton" type="submit"
								value="Save">Save</form:button></td>

					</tr>

					<form:hidden path="id" />



				</table>



			</form:form>

		</center>

		<footer class="container-fluid text-center"
			style="top: 40px; position: relative;">
			<p class="text-danger">Copyright @ 2019</p>
		</footer>
</body>
</html>