<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Login</title>
    <style>
        #field1{
         background-image:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7));
            width: 300px;
            color: white;
            float:left;
            font-size:20px;
            margin-left:530px;
            border-radius:20px;
            margin-top:80px;
            

        }
        body{
            background-image: url(Assets/login.jpg);
            background-repeat: no-repeat;
            background-size:cover;
            color: springgreen;
          
        }
        
        #forgot, a{
            width: 100px;
            text-decoration:none;
            color:white;
        }
        #forgot{
        color:black;
        }
       button{
        width: 100px;
            text-decoration:none;
        }
        #forgot{
        width:150px;
        }
    </style>
</head>
<body>
<%
   if(session.getAttribute("passchange") != null){%>
	   <h1>Password Changed Successfully!!</h1>
	   
   <%session.removeAttribute("passchange"); }
   %>
    <h1 style="color: white;font-size: 50px;margin-left: 480px;" >Welcome to Library</h1>
    
    <div>
         <fieldset id="field1">
        <legend style="font-size: 20px;background-color:brown;color:white;">Log In</legend>
        <form action="signup11" method="post">
            
            <br>
    <label for="User Name" style="background-color:brown;color:white;"><h3>User Name</h3></label>
    <input type="text" id = "uname" name="uname" pattern="[A-Za-z\s]{3,}" required ><br>
    <label for= "password"style="background-color:brown;color:white;"	><h3>Password</h3></label>
    <input type="password" id="password" name="password" pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$" required><br><br>
    <button type="submit">Log In</button>
    
    <button id="forgot"><a href="ForgotPassword.jsp" style="color:black;">Forgot Password</a></button>
    <h3>New user <a href="signup.jsp">Sign Up </a>here</h3>

        </form>
        </fieldset>
</div>
</body>
</html>