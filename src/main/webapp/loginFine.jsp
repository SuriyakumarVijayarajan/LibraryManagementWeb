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
<fieldset id="regiser">
<% 
	  UsersDaoImpl user=new UsersDaoImpl();
	  int fineOf=Integer.parseInt(session.getAttribute("loginfine").toString());
	  String user_name=session.getAttribute("user").toString();
	  Users u3=new Users(fineOf,user_name);
	  FineHistoryDaoImpl fineHistory=new FineHistoryDaoImpl();
		
			try {
				user.setFine(u3);
				FineHistory fh1 = new FineHistory(user_name, fineOf);
				fineHistory.insert(fh1);
			} catch (Exception e) {
			
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("user.jsp");
			%>
			
	</fieldset>	
</body>
</html>