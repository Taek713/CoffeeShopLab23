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

<a href="/testadmin">Admin</a>
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
	color: purple;
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
	<p class="message">${ message }</p>
	<form>
		<table>
			<tbody>
				<tr>
					<th id="features" colspan="3">Menu</th>
				</tr>
				<tr>
					<th>Item</th>
					<th>Description</th>
					<th>Price</th>
				</tr>
			</tbody>


			<c:forEach var="menuItem" items="${ menu }">
				<tbody class="tbody">
					<tr>
						<td>${ menuItem.name }</td>
						<td>${ menuItem.description }</td>
						<td>${ menuItem.price }</td>
						<td><a href="/add-to-cart?id=${menuItem.id }">Add to cart

						</a></td>
			</c:forEach>
			</tbody>
		</table>


	</form>

	<td colspan="3"><form action="/cart">
			Search<br> <input name="searchname" />
			<div id="display">${error}</div>




		</form></td>


	<a href="/">Main Menu</a>
	<a href="/cart">Cart</a>

</body>
</html>