<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.dao.impl.*" import="com.library.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<title>Ordered Books</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}

        table{
            width: 350px;
            margin-left: 600px;
            font-size:larger;
            color:white;
            
        }
        body{
            background-image: url(Assets/Rose-flowers-books.jpg);
           background-repeat: no-repeat;
            background-size:cover;
            color:white;
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
a{
color:black;
}

/* Add a color to the active/current link */
.topnav a {
  color: white;
  float: right;
}
table tabl-hover{
font-size:larger;
}
table tr{
color:white;
}

table tr:hover{
color:black;
background-color:white; 
}
.topnav{
background-color: gray;
overflow:hidden;
}
</style>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	if ((session.getAttribute("user") == null)&&(session.getAttribute("admin")==null)&&(session.getAttribute("supplier")==null)) {
		response.sendRedirect("index.jsp");
	}
	%>
	<div class="topnav" >
	<h1 style="float:left;color:white;">Library Management</h1>
  <a class="active" href="admin.jsp">Home</a>
  <a href="Logout.jsp">Logout</a>  
</div>
<h3>Ordered Book List</h3>
<%!ResultSet rs = null; %>
<%
		session = request.getSession();
		OrderBookDaoImpl obDao = new OrderBookDaoImpl();
		String book_name=null;
		String author=null;
//		String user_name=session.getAttribute("supplier").toString();
		
		
		try {
			rs = obDao.adminView();
		}  catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}if (rs.next()) {
	%>
		<table class="container">
		<tr>
		<th><b>BookName</b></th>
		<th><b>Author</b></th>
		<th><b>Status</b></th>
		<th><b>Add Book</b></th>
		</tr>
	<%do{ %>
			<tr>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(5) %></td>
			<%if(rs.getString(5).equals("sent")){%>
			<td><button style="font-size:large;width:100px;"><a href="addOrderBook.jsp?orderBookName=<%=rs.getString(2)%>&orderAuthorName=<%=rs.getString(3)%>" style="text-decoration:none;">Add Book</a></button></td>
			<%} %>
			</tr>
	<%	}while (rs.next());%>
	</table>
	<br>

		<%}
	else{%>
	
	<h1>You dont have any orders</h1>
	<%}%>

</body>
</html>