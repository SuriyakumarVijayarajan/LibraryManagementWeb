<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.connection.*" import="com.library.dao.impl.*" import="com.library.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Users</title>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}

        #register{
        background-image:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7));
            width: 350px;
            margin-left: 600px;
            font-size:larger;
            
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
<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	if ((session.getAttribute("user") == null)&&(session.getAttribute("admin")==null)&&(session.getAttribute("supplier")==null)) {
		response.sendRedirect("index.jsp");
	}
	%>
<div class="topnav" >
  <a class="active" href="admin.jsp">Home</a>
  <a href="Logout.jsp">Logout</a>
  
</div>
<%!ResultSet rs; %>
<h1>User List</h1>
<table>
<th><b>Book Name</b></th>
<th><b>Categort</b></th>
<th><b>Author</b></th>
<th><b>Rack Number</b></th>
<th><b>Price</b></th>
<th><b>Pre Request</b></th>
<%

BooksDaoImpl user = new BooksDaoImpl();

				rs = user.availableBookList();
				while(rs.next()){%>
					
			<tr>
<td><%=rs.getString(2)%></td>
<td>  <%=rs.getString(3) %></td>
<td>  <%=rs.getString(4) %></td>
<td>  <%=rs.getString(6) %></td>
<td>  <%=rs.getString(5) %></td>
<td>  <%=rs.getString(10) %></td>
</tr>	
				
			<%} %>
			
			</table>

</body>
</html>