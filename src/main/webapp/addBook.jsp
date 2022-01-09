<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book</title>
   <style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}

        #register{
            width: 350px;
            margin-left: 600px;
            
        }
        body{
            background-image: url(Assets/Rose-flowers-books.jpg);
           background-repeat: no-repeat;
            background-size:cover;
            color:white;
        }
		button{
		font-size:larger;
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
<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	if ((session.getAttribute("user") == null)&&(session.getAttribute("admin")==null)&&(session.getAttribute("supplier")==null)) {
		response.sendRedirect("index.jsp");
	}
	%>
<div class="topnav" >
  <a class="active" href="admin.jsp">Home</a>
  <a href="Logout.jsp">Logout</a>
  
</div>
    <div >
        <fieldset id="register">
        <legend><h3>Book register</h3></legend>
        <form action="addBook" method="post">
        <label for="user name">Book Code</label><br>
        <input type="text" id="text" name="text" required pattern="[0-9]{3,}"><br><br>
        <label for="city">Book Name</label><br>
        <input type="text" id="text1" name="text1" required pattern="[A-Za-z/s]{3,}"><br><br>
        <label for="password">Category</label><br>
        <input type="text" id="text2" name="text2" required pattern="[A-Za-z]{3,}"><br><br>
        <label for="mobileno">Author</label><br>
        <input type="tel" id="text3" name="text3" required pattern="[A-Za-z/s]{3,}"><br><br>
        <label for="email">Price</label><br>
        <input type="number" id="text4" name="text4" required min="1" max="10000" onkeyup="if(parseInt(this.value)>10000){ this.value =10000; return false; }"><br><br>
        <label for="email">Rack Number</label><br>
        <input type="number"  id ="text4" name="text5" required min="0" max="1000" onkeyup="if(parseInt(this.value)>1000){ this.value =1000; return false; }"><br><br>
        <button type="submit">Add Book</button>
    </form>
</fieldset>


    </div>


</body>
</html>