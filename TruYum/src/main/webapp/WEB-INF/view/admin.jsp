<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>

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
	top: 580px;
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
			<h1 style="font-size: 40px">Menu Items</h1>

			<table>
				<tr>
					<th style="width: 300px">Name</th>
					<th style="width: 100px">Price</th>
					<th style="width: 100px">Active</th>
					<th style="width: 150px">Date of Launch</th>
					<th style="width: 100px">Category</th>
					<th style="width: 100px">Free Delivery</th>
					<th style="width: 100px">Action</th>
				</tr>

				<c:forEach items="${adminlist }" var="menulist">
					<tr>
						<td style="text-align: center">${menulist.name }</td>
						<td style="text-align: center">${menulist.price }</td>
						<td style="text-align: center"><c:choose>
								<c:when test="${menulist.active }">Yes</c:when>
								<c:otherwise>No</c:otherwise>
							</c:choose></td>
						<td style="text-align: center">${menulist.dateOfLaunch}</td>
						<td style="text-align: center">${menulist.category }</td>
						<td style="text-align: center"><c:choose>
								<c:when test="${menulist.freeDelivery }">Yes</c:when>
								<c:otherwise>No</c:otherwise>
							</c:choose></td>
						<td style="text-align: center"><a href="show-edit-menu-item?id=${menulist.id }">Edit</a></td>
					</tr>


				</c:forEach>

			</table>
	</center>
	<footer id="myfooter" style="background-color: #d8e5f3">
		<p id="footercontent">Copyright @ 2019</p>

	</footer>


	</div>
</body>
</html>