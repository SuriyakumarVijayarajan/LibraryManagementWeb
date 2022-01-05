<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        button{
        font-size:medium;
        }
        body{
            background-image: url(https://www.crl.edu/sites/all/themes/crl_bootstrap/images/hero3.jpeg);
            background-repeat: no-repeat;
            background-size:cover;
            color:springgreen;
            font-size:larger;
        }

    </style>
</head>
<body>
<fieldset id="register">
<%
int fineOf=Integer.parseInt(session.getAttribute("fineamount").toString());
String user_name=null;
if (fineOf > 0) {
	user_name=session.getAttribute("user").toString();
}%>
	<%=user_name %><p>you have fine of rs</p><%=fineOf %>
	<p>	You want to pay now or later</p>
	<button type="submit"><a href="returnSuccess.jsp">Pay now</a></button>
</fieldset>							
</body>
</html>