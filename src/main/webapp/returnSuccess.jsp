<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.library.dao.impl.*" import="com.library.model.*"%>
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
<%
int fineOf=Integer.parseInt(session.getAttribute("fineamount").toString());
String user_name=session.getAttribute("user").toString();
Users u3=new Users(fineOf,user_name);
%><%=user_name %><%
UsersDaoImpl user=new UsersDaoImpl();
FineHistoryDaoImpl fineHistory=new FineHistoryDaoImpl();
	try {
				user.setFine(u3);
				FineHistory fh1 = new FineHistory(user_name, fineOf);
				fineHistory.insert(fh1);
				} catch (Exception e) {
									
				e.printStackTrace();
				}%>
				
<h3>Book Return Success</h3><br><br>
<h3><a href="user.jsp">Back to User Page</a></h3>&emsp;&emsp;
<button><a href="Logout.jsp">logout</a></button>
</fieldset>				
</body>
</html>