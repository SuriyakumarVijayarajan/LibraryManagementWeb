<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "com.library.dao.impl.*"  import = "com.library.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}

        #register{
            width: 350px;
            margin-left: 600px;
            
        }
        body{
            background-image: url(https://wallup.net/wp-content/uploads/2017/03/28/401002-rose-flowers-books.jpg);
           background-repeat: no-repeat;
            background-size:cover;
            color:white;
        }
		body,a{
		font-size:larger;
		}
		a{
		color:blue;
		}
		.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a {
  background-color: black;
  color: white;
  float: right;
}   
</style>
</head>
<body>

<div class="topnav" >
  <a class="active" href="admin.jsp">Home</a>
  <a href="Logout.jsp">Logout</a>  
</div>
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
<br><br>
<button><a href="borrowBook.jsp">BorrowBook</a></button>
</fieldset>
</body>
</html>