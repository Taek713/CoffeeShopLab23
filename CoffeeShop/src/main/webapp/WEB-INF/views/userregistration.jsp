<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="list.css" />
<%@include file="partials/header.jsp" %>
<title>Registration</title>
</head>

<header>
	<a href="/">Home</a>
	<a href = "/testmenu">Menu</a>
</header>
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

<body>


	<h1>Please fill out information</h1>
<p class="message">${ message }</p>
	<form action="/summarypage" method="get">
		<!-- GET/POST: Get is default. Post will clear out the URL -->
		<!-- using min & max sets the requirements on user input -->
		<div>
			<p>
				First Name:<input type="text" name="firstname" required
					minlength="2" maxlength="16" />

			</p>
			<p>
				Last Name:<input type="text" name="lastname" required minlength="2"
					maxlength="16">
			</p>
			<p>
				email:<input type="email" name="email">
			</p>
			<p>
				Phone Number:<input name="phonenumber" type="tel" />
			</p>
			
			<p>
			<label for="username">Username:</label> <input id="username" name="username" value="${ param.username }" required minlength="2" />
		</p>
			<p>
				Password (First letter must be capitalized(only numbers and
				letters)):<input name="password" type="password" required
					pattern="[A-Z][a-z0-9]*">
			</p>
			<p>
				Re-Enter Password:<input name="password2" type="password" required
					pattern="[A-Z][a-z0-9]*">
			</p>
			
			
		

			<p>
				<button class="button">Submit</button>
			</p>
	</form>

	<footer>
		<a href="/">Home</a>
		<a href = "/testmenu">Menu</a>
	</footer>


</body>

</html>