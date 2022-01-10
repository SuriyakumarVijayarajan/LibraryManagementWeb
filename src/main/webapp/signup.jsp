<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        #register{
        background-image:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7));
            width: 350px;
            margin-left: 600px;
            font-size:larger;
            color:white;
            margin-top:25px;
        }
        body{
        
            background-image: url(Assets/Rose-flowers-books.jpg);
            background-repeat: no-repeat;
            background-size:cover;
            color:springgreen;
        }

 .topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a {
  background-color: black;
  color: white;
  float: right;
}
   
</style>
</head>
<body>

<div class="topnav" >
  <a href="Logout.jsp">Logout</a>
  
</div>

    <div >
        <fieldset id="register">
            <legend><h3>User register</h3></legend>
        <form action="index1" method="post" >
        <div class="container mt-3">
        <label for="user name">User name</label><br>
        <input type="text" id="text" name="text" required pattern="[A-Za-z]{3,}" ><br><br>
        <label for="city">City</label><br>
        <input type="text" id="text1" name="text1" required pattern="[A-Za-z]{3,}" ><br><br>
        <label for="password">Password</label><br>
        <input type="password" id="text2" name="text2" required pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$"><br><br>
        <label for="mobileno">Mobile number</label><br>
        
        <input type="number" id="text3" name="text3" required pattern="[6-9][0-9]{9}"><br><br>
        <label for="email">Email Id</label><br>
        <input type="email" id="text4" name="text4" required pattern="([a-zA-Z0-9]+[@][a-zA-Z]+[.][a-z]+{15,40})"><br><br>
        <button type="submit" value="sign up" class="btn btn-primary"> Sign Up</button>
        </div>
    </form>
</fieldset>


    </div>


</body>
</html>