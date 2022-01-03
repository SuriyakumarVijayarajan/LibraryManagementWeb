<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.library.connection.*" import ="java.util.List" import ="com.library.test.*" import="java.sql.*" import="com.library.dao.impl.*" %>
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
            background-image: url(https://st2.depositphotos.com/1105977/5461/i/600/depositphotos_54615585-stock-photo-old-books-on-wooden-table.jpg);
           background-repeat: no-repeat;
            background-size:cover;
            color:springgreen;
        }

   
</style>
</head>
<body>

<%BooksDaoImpl book = new BooksDaoImpl();
ResultSet rs = book.showBooks();%>
<table>
<th><b>BookName</b></th>
<th><b>Category</b></th>
<th><b>Author</b></th>
<%while(rs.next()) {
%>
<form action="bookName" method="post">
<tr>
<td><%=rs.getString(1)%></td>
<td>  <%=rs.getString(2) %></td>
<td>  <%=rs.getString(3) %></td>
<td> <a href="bookName?bookname=<%=rs.getString(1) %>">Borrow Book</a> </td>
</tr>
<%
}
%>
</table>
</form>	



<a href="user.jsp">User Home</a>
<button><a href="Logout.jsp">logout</a></button>




</body>
</html>