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
            border-radius:20px;
        }
        body{
            background-image: url(https://st2.depositphotos.com/1105977/5461/i/600/depositphotos_54615585-stock-photo-old-books-on-wooden-table.jpg);
            background-repeat: no-repeat;
            background-size:cover;
            color: floralwhite;
          
        }
        
        a,button{
            width: 100px;
            text-decoration:none;
        }
        #forgot{
        width:150px;
        }
    </style>
</head>
<body>
    <h1>Welcome to Madurai Library</h1>
    <div>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Anna_Centenary_Library_Exterior.jpg/1200px-Anna_Centenary_Library_Exterior.jpg" width="850px" height="600px">
        <fieldset id="field1">
        <legend>Log In</legend>
        <form action="signup11" method="post">
            
            <br>
    <label for="User Name"><h3>User Name</h3></label>
    <input type="text" id = "uname" name="uname" pattern="[A-Za-z\s]{3,}" required><br>
    <label for= "password"><h3>Password</h3></label>
    <input type="password" id="password" name="password" pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$" required><br><br>
    <button type="submit">Log In</button>
    
    <button id="forgot"><a href="ForgotPassword.jsp">Forgot Password</a></button>
    <h3>New user <a href="signup.jsp">Sign Up </a>here</h3>

        </form>
        </fieldset>
</div>
</body>
</html>