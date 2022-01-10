<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.dao.impl.*" import="com.library.model.*" import="com.library.exception.InvalidReturnException"%>
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
        background-image:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7));
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
}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

a{
color:white;
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
  <a class="active" href="user.jsp">Home</a>
  <a href="Logout.jsp">Logout</a>  
</div>
<fieldset id="register">
<form action="bookReturn">

<%!ResultSet rs; %>
<%
BooksDaoImpl book=new BooksDaoImpl();
String user_name=session.getAttribute("user").toString();
String book_name=null;
Books books=new Books(book_name,user_name);
rs=book.returnBookList(books);
if(rs.next()){%>
	<h1>The Books To be Returned</h1>
<%do{%>
<%=rs.getString(1) %>&emsp;&ensp;<a href="bookReturn?bookreturn=<%=rs.getString(1)%>">Return Book</a><br><br>
<%}while(rs.next());
}else{ %>

<%
try {
			throw new InvalidReturnException();
		}catch(InvalidReturnException e) {
			out.println(new InvalidReturnException());
			System.out.println(new InvalidReturnException());
		//	response.sendRedirect(validate);
			
		}%>
<%} %>




</form>
</fieldset>
</body>
</html>