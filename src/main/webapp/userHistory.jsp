<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.connection.*" import="com.library.dao.impl.*" import="com.library.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User History</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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
            background-image: url(Assets/Rose-flowers-books.jpg);
           background-repeat: no-repeat;
            background-size:cover;
            color:white;
            font-size:larger;
        }
		button{
		font-size:larger;
		}
		.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  overflow:hidden;
}

.topnav{
background-color:gray;
overflow:hidden;}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.table tabl-hover{
font-size:larger;
}
.table tr{
color:white;
}

.table tr:hover{
color:black;
background-color:white; 

}

/* Add a color to the active/current link */
.topnav a,h1 {
  
  color: white;
  float: right;
}
a{
color:white;
}   
</style>
</head>
<body>

<div class="topnav" >
<h1 style="float:left;"> Library Management</h1>
  <a class="active" href="user.jsp">Home</a>
  <a href="logout.jsp">Logout</a>
  
</div>
<br><br>

<div class="container">
<h1 style="float:left;">Book Borrow History</h1>
<table class="table table-hover" style="color:white;">
<th><b>Book Name</b></th>
<th><b>Borrowed Date</b></th>
<th><b>Actual Return Date</b></th>
<th><b>Returned Date</b></th>
<th><b>Fine Range</b></th>

<c:forEach var="bookIssue" items="${bookIssueList }">					
			<tr>

<td>  ${bookIssue.book_code }</td>
<td>${bookIssue.date_issue }  </td>
<td>${bookIssue.date_return }</td>
<td>${bookIssue.date_returned }</td>
<td>${bookIssue.fine_range }</td>

</tr>	
</c:forEach>				
			
			
			</table>
</div>
</body>
</html>