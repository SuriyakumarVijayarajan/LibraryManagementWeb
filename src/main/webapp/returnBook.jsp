<%@page import="java.sql.ResultSet"%>
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
        a{
        text-decoration:none;
        }

    </style>
</head>
<body>
<fieldset id="register">
<form action="bookReturn">
<h1>The Books To be Returned</h1>
<%!ResultSet rs; %>
<%
BooksDaoImpl book=new BooksDaoImpl();
String user_name=session.getAttribute("user").toString();
String book_name=null;
Books books=new Books(book_name,user_name);
rs=book.returnBookList(books);
while(rs.next()){%>
<%=rs.getString(1) %>&emsp;<a href="bookReturn?bookreturn=<%=rs.getString(1)%>">Return Book</a><br><br>
<%} %>




</form>
</fieldset>
</body>
</html>