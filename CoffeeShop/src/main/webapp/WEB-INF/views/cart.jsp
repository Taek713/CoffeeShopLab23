<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/list.css" />
<%@include file="partials/header.jsp" %>
<title>Your Cart</title>
</head>
<body id = "body8">

	
			
			<style>
        header{
            font-size: 200%;
            color: white;
            text-align: center;
        }
        body {
            background-size: 80px 60px;
            background: url("https://cdn.wallpapersafari.com/77/33/ugPa5V.jpg") no-repeat;
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
			
			
			
			
			<table>
			<tbody>
				<tr>
					<th id="features" colspan="3">Cart</th>
				</tr>
				<tr>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</tbody>


			<c:forEach var="cartItem" items="${ cartItem }">
				<tbody>
					<tr>
						<td>${ cartItem.quantity } </td>
						<td>${ cartItem.menuItem.name }</td>
						<td>${ cartItem.menuItem.id }</td>
					 <td>
                <a href="delete?id=${menuItem.id}" onclick="areYouSure()">
                    <button value="Delete Item">Delete</button>
                </a>
            </td>
			</c:forEach>
			</tbody>
		</table>
			
			
			
			
			
			
	<button>
		<a href="/testmenu">Back to menu</a>
	</button>
</body>
</html>