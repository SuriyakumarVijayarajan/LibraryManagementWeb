<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, inital-scale=1">
    <head>
      <style>
        #admin1,li{
          float: left;
        }
        ul,a{
          float: left;
          font-style: normal;
          font-variant: small-caps;
          text-decoration: none;
          text-decoration-line: none;
        }
        body{
            background-image: url(https://st2.depositphotos.com/1105977/5461/i/600/depositphotos_54615585-stock-photo-old-books-on-wooden-table.jpg);
            background-repeat: no-repeat;
            background-size:cover;
            color: white;
        }
      </style>
        
    </head>
    <body>
      <div class="main-header">
        <div class="container">
          <h1 class="lead text-center">
            Welcome to Library Management System!  Admin
          </h1>
        </div>
      </div id="admin1">
      <ul type="none">
            <li>
              <a href="showBook.jsp">Show Books</a>
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
              <a href="signup.jsp">Add User</a>
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
