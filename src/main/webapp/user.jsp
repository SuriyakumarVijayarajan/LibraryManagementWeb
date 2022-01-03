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
          color: white
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
