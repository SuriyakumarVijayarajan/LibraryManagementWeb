<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp</title>
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
    <div >
        <fieldset id="register">
            <legend><h3>User register</h3></legend>
        <form action="adminjsp" method="post">
        <label for="user name">User name</label><br>
        <input type="text" id="text" name="text"  required pattern="[A-Za-z]{3,}" ><br><br>
        <label for="city">City</label><br>
        <input type="text" id="text1" name="text1"  required pattern="[A-Za-z]{3,}" ><br><br>
        <label for="mobileno">Mobile number</label><br>
        <input type="tel" id="text3" name="text3" required pattern="[6-9][0-9]{9}"><br><br>
        <button type="submit">Add Supplier</button>
    </form>
</fieldset>


    </div>


</body>
</html>