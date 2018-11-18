<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="partials/header.jsp" %>
<body>

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

	<h1>Login</h1>
	
	<p class="message">${ message }</p>
	
	<form action="/testmenu" method="post">
		<p>
			<label for="username">Username:</label> <input id="username" name="username" value="${ param.username }" required minlength="2" />
		</p>		<p>
			<label for="password">Password:</label> <input id="password" type="password" name="password" required minlength="2" />
		</p>
		<p>
			<button>Submit</button>
		</p>
	</form>
	

</body>
</html>