<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.connection.*" import="com.library.dao.impl.*" import="com.library.model.*"%>
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
<style>
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
</style>
</head>
<body>
<%!ResultSet rs; %>
<h1>Fine History</h1>
<table>
<th><b>User Name</b></th>
<th><b>Fine Amount</b></th>
<th><b>Collected Time</b></th>
<%

FineHistoryDaoImpl fineHist = new FineHistoryDaoImpl();

				rs = fineHist.view();
				while(rs.next()){%>
					
			<tr>
<td><%=rs.getString(1)%></td>
<td>  <%=rs.getString(2) %></td>
<td>  <%=rs.getString(3) %></td>
</tr>	
				
			<%} %>
			
			</table>

</body>
</html>