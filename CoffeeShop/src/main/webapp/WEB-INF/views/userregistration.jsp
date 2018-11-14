<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="list.css" />
<title>Registration</title>
</head>

<header>
	<a href="/">Home</a>
	<a href = "/testmenu">Menu</a>
</header>


<body id = "body2">


	<h1>Please fill out information</h1>

	<form action="/summarypage" method="get">
		<!-- GET/POST: Get is default. Post will clear out the URL -->
		<!-- using min & max sets the requirements on user input -->
		<div class="hot">
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
</div>
</html>