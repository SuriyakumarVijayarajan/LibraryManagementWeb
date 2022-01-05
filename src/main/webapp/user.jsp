<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, inital-scale=1">
    <head>
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
            background-image: url(https://wallup.net/wp-content/uploads/2017/03/28/401002-rose-flowers-books.jpg);
           background-repeat: no-repeat;
            background-size:cover;
            color:white;
        }
        a{
        text-decoration:none;
        font-size:larger;
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
	
	if (session.getAttribute("user") == null) {
		response.sendRedirect("index.jsp");
	} 
	%>
<div class="topnav" >
  <a class="active" href="admin.jsp">Home</a>
  <a href="Logout.jsp">Logout</a>  
</div>
      <div class="main-header">
        <div class="container">
          <h1 class="lead text-center">
            Welcome to Library Management System!   User
          </h1>
        </div>
      </div id="admin1">
      <ul type="none">
            <li>
              <a href="SearchBook.jsp">Search Books</a>
            </li><br>
            <li>
              <a href="showBook.jsp">View Books</a>
            </li><br>
            <li>
              <a href="borrowBook.jsp">Borrow Book</a>
            </li><br>
            <li>
              <a href="returnBook.jsp"> Return Book</a>
            </li><br>
            <li>
              <a href="requestBook.jsp">Request New Book</a>
            </li><br>
            
        </ul>
        </nav>
        </div>
      </header>
      
      
    </body>
</html>
