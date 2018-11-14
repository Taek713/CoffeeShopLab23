<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="list.css" />
<title>Summary</title>
</head>
<body id="body3">

	<header>
		<a href="/newmenu">Menu</a> <a href="/">Home</a> <a
			href="/userregistration">Back to registration</a>
	</header>
<head>
<title>User Created!</title>
</head>

<h1>User Created</h1>
<p>First Name: ${firstname}</p>
<p>Last Name: ${lastname}</p>
<p>Email: ${email}</p>
<p>Phone Number: ${phonenumber}</p>

<footer>
	 <a href="/">Home</a> 
	 <a href="/testmenu">View Menu</a>
	 <a href="/userregistration">Back to registration</a>
</footer>



</body>
</html>