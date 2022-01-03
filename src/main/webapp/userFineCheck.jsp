<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.dao.impl.*" import="com.library.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        #register{
            width: 350px;
            margin-left: 600px;
            
        }
        body{
            background-image: url(https://www.crl.edu/sites/all/themes/crl_bootstrap/images/hero3.jpeg);
            background-repeat: no-repeat;
            background-size:cover;
            color:springgreen;
        }

    </style>
</head>
<body>
<fieldset id="register">
<h1>Welcome</h1>
	<form>
	<p>Welcome you have pending fine</p>
	<p>You have to repay the fine amount to enter in to library</p>
	<p>Are you ready to pay </p>
	<button type="submit"><a href="index.jsp">Pay later</a></button>
	<button type="submit"><a href="loginFine.jsp">Pay now</a></button>
	</form>
		<button><a href="Logout.jsp">logout</a></button>	
</fieldset>
</body>
</html>