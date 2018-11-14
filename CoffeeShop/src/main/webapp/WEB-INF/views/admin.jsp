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
<body class = "body5">


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
            <td>
                <a href="edititem?id=${menuItem.id }">
                    <button value="Edit Item">Edit</button>
                </a>
            </td>
            <td>
                <a href="delete?id=${menuItem.id}" onclick="areYouSure()">
                    <button value="Delete Item">Delete</button>
                </a>
            </td>
        </tr>
        </c:forEach>
</table>

<p>
<a href="/testmenu">Back to Menu</a>

<br>
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