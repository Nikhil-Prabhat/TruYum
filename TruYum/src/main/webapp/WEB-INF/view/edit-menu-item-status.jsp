<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Editing Status</title>

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

#Menu {
	position: relative;
	left: 1500px;
	color: red;
	font-size: 24px;
}

#myfooter {
	position: relative;
	top: 715px;
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
		<a id="Menu" href="show-menu-list-admin">Menu</a>
	</div>

	<center>
		<div>
			<h1>Edit Menu Item Status</h1>
			<p style="color: green;">Menu Item Details saved successfully.</p>
		</div>
	</center>
	<footer id="myfooter" style="background-color: #d8e5f3">
		<p id="footercontent">Copyright @ 2019</p>

	</footer>


	</div>

</body>
</html>