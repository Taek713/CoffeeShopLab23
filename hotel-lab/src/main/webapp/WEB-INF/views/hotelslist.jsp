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

	<p>${hotel_name}</p>
	<div>
		<table class="table-fill">
			<thead>
				<tr>

					<th class="text-left">Name</th>
					<th class="text-left">City</th>
					<th class="text-left">Price per Night</th>

				</tr>

			</thead>
			<tbody class="table-hover">

				<c:forEach var="hotel" items="${ hotelslist }">
					<tr>
						<td>${ hotel.name }</td>
						<td>${ hotel.city }</td>
						<td>$${ hotel.pricePerNight }</td>
					</tr>
				</c:forEach>


			</tbody>

		</table>
		<button>
			<a href="/" type="submit" class="btn btn-link">Search again?</a>
		</button>
</body>
</html>