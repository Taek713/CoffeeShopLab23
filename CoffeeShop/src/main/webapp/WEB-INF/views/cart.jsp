<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Cart</title>
</head>
<body>

	<c: forEach var="cartItem" items=${ cartItem  }>
Qty: ${ cartItem.quantity }
Name: ${ cartItem.menuItem.name }
Price: ${ cartItem.menuItem.price }
</c: forEach>

</body>
</html>