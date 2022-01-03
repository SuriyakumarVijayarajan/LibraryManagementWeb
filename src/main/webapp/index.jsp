<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Madurai Library</title>
    <style>
        #field1{
            width: 300px;
            color: aqua;
            float: right;
        }
        body{
            background-image: url(https://st2.depositphotos.com/1105977/5461/i/600/depositphotos_54615585-stock-photo-old-books-on-wooden-table.jpg);
            background-repeat: no-repeat;
            background-size:cover;
            color: floralwhite;
        }
        button{
            width: 100px;
        }
    </style>
</head>
<body>
    <h1>Welcome to Madurai Library</h1>
    <div>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Anna_Centenary_Library_Exterior.jpg/1200px-Anna_Centenary_Library_Exterior.jpg" width="850px" height="600px">
        <form id="field1" action="signup11" method="post">
            <legend>Log In</legend>
            <br>
    <label for="User Name">User Name</label>
    <input type="text" id = "uname" name="uname" pattern="[A-Za-z\s]{3,}" required><br><br>
    <label for= "password">Password</label>
    <input type="password" id="password" name="password" pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$" required><br><br>
    <button type="submit">Log In</button>
    
    <button><a href="ForgotPassword.jsp">Forgot Password</a></button>
    <h4>New user <a href="signup.jsp" target="_blank">Sign Up </a> here</h4>

        </form>
</div>
</body>
</html>