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
        body{
            background-image: url(https://www.crl.edu/sites/all/themes/crl_bootstrap/images/hero3.jpeg);
            background-repeat: no-repeat;
            background-size:cover;
            color:springgreen;
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
<fieldset id="register">
<h1>New Book Request</h1>
<form action="requestBook" method="post" >
<label>Book Name</label><br>
<input type="text" name="bookName" pattern="[A-Za-z\s]{3,}" required><br><br>
<label>Author Name</label><br>
<input type="text" name="authorName" pattern="[A-Za-z\s]{3,}" required><br><br>
<button type="submit">Request Book</button>
<button><a href="Logout.jsp">logout</a></button>
</form>
</fieldset>
</body>
</html>