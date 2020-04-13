<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empty Cart</title>
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
						<li><a href="show-menu-list-customer"><span
								class="glyphicon glyphicon-gift"></span>Menu</a></li>
						<li><a href="show-cart?custid=1"><span
								class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>

					</ul>

				</div>

			</div>

		</nav>

	</div>


	<center>
		<h1 style="font-family:Times New Roman;">Cart</h1>
		<h5 style="color: gray;font-family:Times New Roman;">
			No items in cart. Use 'Add to Cart' option in <a
				href="show-menu-list-customer">Menu Item List</a>
		</h5>

	</center>
	<footer class="container-fluid text-center"
		style="top: 40px; position: relative;">
		<p class="text-danger">Copyright @ 2019</p>
	</footer>
</body>
</html>