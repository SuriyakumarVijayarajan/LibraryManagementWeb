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
<fieldset id="register">
<h3>Here After admin will takeover</h3>
<h3>Hi admin Enter your user_name</h3>
<form action="borrowadmin" method="post">
<label for="User Name">User Name</label>
    <input type="text" id = "uname" name="uname" required pattern="[A-Za-z]{3,}" ><br><br>
    <label for= "password">Password</label>
    <input type="password" id="password" name="password" required pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$"><br><br>
    <button type="submit">Log In</button>
    </form>
    </fieldset>
</body>
</html>