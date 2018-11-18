<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
        header{
            font-size: 200%;
            color: white;
            text-align: center;
        }
        body {
            background-size: 80px 60px;
            background: url("https://cdn.wallpapersafari.com/26/65/VlXCO4.jpg") no-repeat;
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
<meta charset="UTF-8">
<link rel="stylesheet" href="list.css" />
<%@include file="partials/header.jsp" %>
<title>Summary</title>
</head>
<body>
<form>

	
	<p class="message">${ message }</p>

<title>User Created!</title>


<h1>User Created</h1>
<div>
<p>First Name: ${firstname}</p>
<p>Last Name: ${lastname}</p>
<p>Username: ${username}</p>
<p>Email: ${email}</p>
<p>Phone Number: ${phonenumber}</p>
</div>


<footer>
	 <a href="/">Home</a> 
	 <a href="/testmenu">View Menu</a>
	 <a href ="/logout">Log Out</a>
	 <a href="/userregistration">Back to registration</a>
</footer>


</form>
</body>
</html>