<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditMenu</title>

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
	top: 415px;
	height: 40px;
}

#footercontent {
	position: relative;
	top: 10px
}

.mydivclass {
	display: inline;
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

	<div id="mydiv1">
		<h1 id="heading1">truYum</h1>
		<img src="restau.jpg" alt="image not loaded" height=60px width=60px>
		<a id="Menu" href="show-menu-list-admin">Menu</a>
	</div>

	<div>
		<center>


			<form:form id="myform" action="edit-menu-item" method="post"
				modelAttribute="menuitem">
				<h1 style="font-size: 40px">Edit Menu Item</h1>
				<table cellspacing="10">
					<tr>
						<td colspan="4"><h5>Name</h5> <form:input path="name"
								size="100" />
							<form:errors path="name" cssClass="error" /></td>
					</tr>




					<tr>
						<td><h5>Price (Rs.)</h5> <form:input path="price" />
							<form:errors path="price" cssClass="error" /></td>


						<td><h5>Active</h5> <form:radiobutton path="active"
								value="true" />Yes <form:radiobutton path="active"
								value="false" />No</td>


						<td><h5>Date of Launch</h5> <form:input path="dateOfLaunch" type="date"/>
						<form:errors path="dateOfLaunch"  type="date" cssClass="error" />
							</td>


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
					
					<form:hidden path="id"/>



				</table>



			</form:form>

		</center>


		<footer id="myfooter" style="background-color: #d8e5f3">
			<p id="footercontent">Copyright @ 2019</p>

		</footer>

	</div>
</body>
</html>