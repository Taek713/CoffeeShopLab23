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
<body id="body">



	<table>
		<tr>
			<th id="features" colspan="3">Menu</th>
		</tr>
		<tr>
			<th>Item</th>
			<th>Description</th>
			<th>Price</th>
		</tr>


		<c:forEach var="menuItem" items="${ menu }">
			<tr>
				<td>${ menuItem.name }</td>
				<td>${menuItem.description }</td>
				<td>${menuItem.price}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="3"><form action="/single">
					Search<br> <input name="searchname" />
					<div id="display">${error}</div>
				</form>
				<form action="/">
					<br>

					<button id="mainmenu">Main Menu</button>
				</form></td>
		</tr>
	</table>

</body>
</html>