<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empty Cart</title>
<head>
<style>
#mydiv1 {
	background-color: #80dfff;
	padding: 10px;
}

#heading1 {
	display: inline;
	position: relative;
	bottom: 10px;
	color: white;
}

img {
	position: relative;
	left: 10px;
}

#Cart {
	position: relative;
	left: 1550px;
	color: red;
	font-size: 24px;
}

#Menu {
	position: relative;
	left: 1500px;
	color: red;
	font-size: 24px;
}

#myfooter {
	position: relative;
	top: 710px;
	height: 40px;
}

#footercontent {
	position: relative;
	top: 10px;
}
</style>
</head>


<body>
	<div id="mydiv1">
		<h1 id="heading1">truYum</h1>
		<img src="restau.jpg" alt="image not loaded" height=60px width=60px>
		<a id="Menu" href="show-menu-list-customer">Menu</a> <a id="Cart"
			href="show-cart?custid=1">Cart</a>
	</div>

	<center>
		<h1>Cart</h1>
		<h5 style="color: gray">
			No items in cart. Use 'Add to Cart' option in <a
				href="show-menu-list-customer">Menu Item List</a>
		</h5>

	</center>
	<footer id="myfooter" style="background-color: #d8e5f3">
		<p id="footercontent">Copyright @ 2019</p>

	</footer>


	</div>
</body>
</html>