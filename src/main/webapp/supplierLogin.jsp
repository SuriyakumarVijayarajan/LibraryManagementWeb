<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.dao.impl.*" import="com.library.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
<fieldset id="register">
<%
		session = request.getSession();
		OrderBookDaoImpl obDao = new OrderBookDaoImpl();
		String book_name=null;
		String author=null;
		String user_name=request.getParameter("supplier");
		OrderBook order=new OrderBook(user_name,author,book_name);
		ResultSet rs = null;
		try {
			rs = obDao.view(order);
		}  catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}%>
		<table>
		<tr>
		<th><b>BookName</b></th>
		<th><b>Author</b></th>
		</tr>
	<%while (rs.next()) {%>
			<tr>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			</tr>
	<%	}%>
	</table>
		
		
		
</fieldset>
</body>
</html>