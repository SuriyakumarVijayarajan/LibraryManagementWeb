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
		button,a{
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
a{

text-decoration:none;
color:white;
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
      <div class="main-header">
        <div class="container">
          <h1 class="lead text-center">
            Welcome to Library Management System!  Admin
          </h1>
        </div>
      </div id="admin1">
      <ul type="none">
            <li>
              <a href="authorShowBook.jsp">Show Books</a>
            </li><br><br>
            <li>
              <a href="addBook.jsp">Add Books</a>
            </li><br><br>
            <li>
              <a href="supplier.jsp">Add Supplier Details</a>
            </li><br><br>
            <li>
              <a href="FineHistory.jsp">Add Fine Details</a>
            </li><br><br>
            <li>
              <a href="UserInsert.jsp">Add User</a>
            </li><br><br>
            <li>
              <a href="showFineHistory.jsp">View Fine History</a>
            </li><br><br>
        </ul>
        </nav>
        </div>
      </header>
      
      
    </body>
</html>
