<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Tiny List</title>
</head>
<body>
	<h1>Tiny List</h1>
	<article>
	<table class ="list" style="width: 100%">
	
	<tbody>
	<thead>
		<tr>
			<th>name</th>
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
		<c:forEach var="tiny" items="${tinylist}">
			<tr>
				<td>${tiny.name}</td>
				<td>${tiny.invented}</td>
				<td>${tiny.year}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<a href="complete">Completed List</a>
	</article>
</body>
</html>