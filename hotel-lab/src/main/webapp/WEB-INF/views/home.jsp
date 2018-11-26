<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
​<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css" />
<title>Insert title here</title>
</head>
<body>

	<h1>Hotel Listings For You!</h1>


	<p>${hotel_name}</p>

	<form action="/hotels" method="post">
		<br>
		<p>City</p>
		<div class="rounded">
			<select name="city">
				<option>Busan</option>
				<option>Detroit</option>
				<option>Seoul</option>
				<option>New York</option>
			</select>
		</div>
		<br> <br>


		<button type="submit">GO!</button>
		

	</form>

</body>
</html>