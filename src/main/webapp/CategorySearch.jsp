<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.dao.impl.*" import="com.library.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body>
<fieldset id="register">
<%!ResultSet rs; %>
<%String categoryName=request.getParameter("category");

String book_title=null;
String authorName=null;
String category =null;
BooksDaoImpl book=new BooksDaoImpl();
Books b1=new Books(book_title,categoryName,authorName);
rs = book.categoryFetch(b1); %>

<h1>Book List</h1>
<table><br>
<tr>
<th>Book Name for  category</th>
</tr>
<% while(rs.next()){ %>
<tr>
<td><%= rs.getString(1)%></td><br>
</tr>
<%} %>

</table>
<br><br>
<a href="borrowBook.jsp">BorrowBook</a>
</fieldset>
</body>

</html>