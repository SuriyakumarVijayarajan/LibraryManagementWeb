<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.library.connection.*" import ="java.util.List" import ="com.library.test.*" import="java.sql.*" import="com.library.dao.impl.*" %>
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
<form action="AuthorSearch.jsp" method="post">
<label >Search By Author Name</label><br>
<input type="text" name="author" pattern="[A-Za-z\s]{3,}" required>
<button type="submit">Search Book</button>
</form>
<form action="CategorySearch.jsp" method="post">
<label >Search By Category Name</label>
<input type="text" name="category" pattern="[A-Za-z\s]{3,}" required>
<button type="submit">Search Book</button>
</form>
</fieldset>

</body>
</html>