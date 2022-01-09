<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, inital-scale=1">
    <head><%String admin=session.getAttribute("admin").toString(); %>
    <title>Welcome <%=admin %></title>
      <style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}

.navbar{
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #333;
  color: white;
}
.brand-title{
  font-size: 1.5rem;
  margin: .5rem;
}
.navbar-links ul{
  margin: 0;
  padding: ;
  display: flex;
  align-items: center;
}
.navbar-links li{
  list-style: none;
}
.navbar-links li a{
  text-decoration: none;
  color : white;
  padding: 1rem;
  display: bolck;
}
.navbar-links li:hover{
  background-color: black;
}
.toggle-btn{
  position: absolute;
  top: .75rem;
  right: 1rem;
  display: none;
  flex-direction: column;
  justify-content: space-between;
  width: 31px;
  height: 21px
}
.toggle-btn .bar{
  height: 3px;
  width: 100%;
  background-color: white;
  border-radius: 10px;
}

@media(max-width: 600px){
  .toggle-btn{
    display: flex;
  }
  .navbar-links{
    display: none;
    width: 100%;
  }
  .navbar{
    flex-direction: column;
    align-items: flex-start;
  }
  .navbar-links ul{
    width: 100%;
    flex-direction: column;
  }
  .navbar-links li{
    text-align: center;
  }
  .navbar-links li a{
    padding: .5rem 1rem;
  }
  .navbar-links.active{
    display: flex;
  }
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
<nav class="navbar">
        <div class='brand-title'>Library Management</div>
        <a href='#' class='toggle-btn' id='toggle-btn'>
          <span class='bar'></span>
          <span class='bar'></span>
          <span class='bar'></span>
        </a>
        <div class='navbar-links' id='navbar-links'>
          <ul>
            <li><a class="active"id='links' href="Logout.jsp">Logout</a></li>
          </ul>
        </div>
      </nav>
      <div class="main-header">
        <div class="container">
          <h1 class="lead text-center">
            Welcome to Library Management System!  <%=admin %>
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
            <li>
              <a href="UserList.jsp">View All Users</a>
            </li><br><br>
            <li>
              <a href="AvailableBookList.jsp">View Available Books</a>
            </li><br><br>
            <li>
              <a href="UnavailableBookList.jsp">View Unavailable Books</a>
            </li><br><br>
        </ul>
        </nav>
        </div>
      </header>
      
      
    </body>
</html>
