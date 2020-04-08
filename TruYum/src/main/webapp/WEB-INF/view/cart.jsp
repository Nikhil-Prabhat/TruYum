<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Cart</title>

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
	top: 620px;
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
		<div>
			<h1 style="font-size: 40px">Cart</h1>

			<c:if test="${removecartstatus }">
				<h5 style="color: green;">Item removed from Cart Successfully</h5>
			</c:if>

			<table>
				<tr>
					<th style="width: 200px">Name</th>
					<th style="width: 100px">Free Delivery</th>
					<th style="width: 100px">Price</th>
					<th style="width: 100px"></th>


				</tr>

				<c:forEach items="${cartitems }" var="menulist">
					<tr>
						<td style="text-align: center">${menulist.name }</td>

						<td style="text-align: center"><c:choose>
								<c:when test="${menulist.freeDelivery }">Yes</c:when>
								<c:otherwise>No</c:otherwise>
							</c:choose></td>
						<td style="text-align: center">${menulist.price }</td>


						<td style="text-align: center"><a
							href="remove-cart?menuid=${menulist.id }&userid=${userid}">Delete</a></td>
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