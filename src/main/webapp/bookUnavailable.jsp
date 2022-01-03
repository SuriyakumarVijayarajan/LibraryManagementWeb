<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.dao.impl.*" import="com.library.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
a{
text-decoration:none;
}
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
<title>Insert title here</title>
</head>
<body>
<fieldset id="register">
<h3>The Book is not available</h3>

<a href="bookPreRequest.jsp">Prerequest Book</a><br><br>
<a href="user.jsp">Back to user Page</a><br><br>
<a href="showBook.jsp">Back to view Books</a>
<button><a href="Logout.jsp">logout</a></button>
</fieldset>

</body>
</html>