<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">

<title>Insert title here</title>
</head>
<body>
	<h1>Complete list of Inventors!</h1>
<article>
	<table class ="list" style="width: 100%">
		<tbody>
	<thead>
		<tr>
			<th>firstname</th>
			<th>lastname</th>
			<th>innovation</th>
			<th>year</th>
		</tr>
		</thead>
		<tfoot>
            <tr>
                <td colspan="4">
                    <p><strong>Inventors</strong> are the future. <strong>Always</strong> and forever</p>
               
                </td>
            </tr>
        </tfoot>
		<c:forEach var="complete" items="${completelist}">
			<tr>
				<td>${complete.firstName}</td>
				<td>${complete.lastName}</td>
				<th>${complete.innovation}</th>
				<td>${complete.year}</td>
			</tr>
			</thead>
			
		</c:forEach>
	</table>
	</article>
	<a href="/">Back to tiny list</a>
</body>
</html>