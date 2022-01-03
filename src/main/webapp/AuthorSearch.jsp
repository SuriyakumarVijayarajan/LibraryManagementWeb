<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "com.library.dao.impl.*"  import = "com.library.model.*"%>
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
<%!
ResultSet rs;
%>
<%

String authorName=request.getParameter("author");

BooksDaoImpl book=new BooksDaoImpl();



String category = null,book_title=null,author=null;
Books books=new Books(book_title,category,authorName);
rs = book.authorFetch(books);

%>
<h1>Book List</h1>

<br>
<% while(rs.next()){ %>
<%= rs.getString(1)%><br>


<%} %>
<a href="borrowBook.jsp">BorrowBook</a>
</fieldset>
</body>
</html>