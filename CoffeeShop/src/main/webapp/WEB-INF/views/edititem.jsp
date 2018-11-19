<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="list.css" />
<title>Insert title here</title>
</head>
<body class="body7">
<%@include file="partials/header.jsp"%>
	<h1>Edit an Item</h1>
	<form action="/testmenu" method="post">
		<table>
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Price</th>
					<th scope="col">Description</th>
				</tr>
			</thead>
			<trid="items">
			<td><input name="name"></td>
			<td><input name="price"></td>
			<td><input name="description"></td>
			</tr>
		</table>
		<button id="edit">Edit Item</button>
		<a href="/testmenu">Cancel</a>
	</form>
	</div>
</body>
</html>