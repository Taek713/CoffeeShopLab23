<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/list.css" />

<title>Insert title here</title>
</head>
<body>
<%@include file="partials/header.jsp"%>
	<style>
header {
	font-size: 200%;
	color: white;
	text-align: center;
}

body {
	background-size: 80px 60px;
	background: url("https://cdn.wallpapersafari.com/33/58/U5ysx0.jpg")
		no-repeat;
	background-size: 100%;
	text-align: center;
	color: white;
}

table {
	align-content: center;
}

a:link {
	color: orange;
	font-size: 125%;
}

a:visited {
	color: purple;
	font-size: 125%;
}

a:hover {
	color: hotpink;
	font-size: 125%;
}

a:active {
	color: green;
	font-size: 125%;
}
</style>


	<h1>Items</h1>
	<table border="1">
		<tr>
			<th>Item ID</th>
			<th>Item Name</th>
			<th>Item Description</th>
			<th>Item Price</th>
			<th>Item Quantity</th>

		</tr>
		<c:forEach var="menuItem" items="${ menu }">
			<tr>

				<td>${ menuItem.name }</td>
				<td>${ menuItem.description }</td>
				<td>${ menuItem.price }</td>
				<td><a href="edititem?id=${menuItem.id }">
						<button value="Edit Item">Edit</button>
				</a></td>
				<td><a href="delete?id=${menuItem.id}" onclick="areYouSure()">
						<button value="Delete Item">Delete</button>
				</a></td>
			</tr>
		</c:forEach>
	</table>

	<p>
		<a href="/testmenu">Back to menu</a> <br>
	</p>
	<br>
	<br>
	<form action="additem" class="button">
		<button>Add New Item</button>
	</form>

	<script>
		function areYouSure() {
			return !!confirm("Are you sure that you want to delete this item?");
		}
	</script>

</body>
</html>