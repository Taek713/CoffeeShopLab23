<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="list.css" />
<title>Coffee Shop!</title>
</head>
<%@include file="partials/header.jsp"%>
<h1>Welcome to Tae's Coffee shop!</h1>

<body>

<style>
        header{
            font-size: 200%;
            color: white;
            text-align: center;
        }
        body {
            background-size: 80px 60px;
            background: url("https://cdn.wallpapersafari.com/33/58/U5ysx0.jpg") no-repeat;
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

	<p>Navigate to the registry page above or below!
		</p>

		


		<p>
		<a href="/userregistration">Sign Up!</a>
		</p>



</body>



</html>