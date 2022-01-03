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
<%
BooksDaoImpl book=new BooksDaoImpl(); 
String book_title=session.getAttribute("bookname").toString();
String user_name=session.getAttribute("user").toString();
	Books b1 = new Books(book_title, user_name);
	String prerequestStatus=book.preRequest(b1);%>
	
	<h3><%=prerequestStatus %></h3>
	<button><a href="Logout.jsp">logout</a></button>
</fieldset>
</body>
</html>