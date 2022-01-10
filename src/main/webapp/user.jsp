<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width-device-width, inital-scale=1">

<head>

<%
String user = session.getAttribute("user").toString();
%>
<title>Welcome <%=user%></title>
<style type="text/css">
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 20px;
}
*{
margin:0px;
padding:0px;
}

@media ( max-width : 600px) {
	.toggle-btn {
		display: flex;
	}
	.navbar-links {
		display: none;
		width: 100%;
	}
	.navbar {
		flex-direction: column;
		align-items: flex-start;
	}
	.navbar-links ul {
		width: 100%;
		flex-direction: column;
	}
	.navbar-links li {
		text-align: center;
	}
	.navbar-links li a {
		padding: .5rem 1rem;
	}
	.navbar-links.active {
		display: flex;
	}
}

#register {
	width: 350px;
	margin-left: 600px;
}

body {
	background-image: url(Assets/Rose-flowers-books.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	color: white;
}

a {
	text-decoration: none;
	font-size: larger;
	color: white;
}

button {
	font-size: larger;
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
	background-color: #;
	color: white;
	float: right;
}
/* Add a black background color to the top navigation */
.topnav {
	background-color: gray;
	overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
	background-color: gray;
	color: white;
}
</style>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	if ((session.getAttribute("user") == null) && (session.getAttribute("admin") == null)
			&& (session.getAttribute("supplier") == null)) {
		response.sendRedirect("index.jsp");
	}
	%>
	<center><h1 class="lead text-center">
		Welcome to Library Management System!
		<%=user%>
	</h1></center><br>
	<div class="topnav">


		<div class="main-header">
			<div class="container">

				<div id="admin1">
					<nav class="navbar">
						<div class='navbar-links' id='navbar-links'>
							 <a href="SearchBook.jsp">Search Books</a>
								 <a href="showBook.jsp">View Books</a>
								  <a href="borrowBook.jsp">Borrow Book</a> 								 
								<a href="returnBook.jsp">Return Book</a> 
								<a href="requestBook.jsp">Request New Book</a>
								 <a href="Logout.jsp" style="float: right;">Logout</a>



						</div>

					</nav>
				</div>
			</div>
			</header>

		</div>
		<%String userWallet=session.getAttribute("userWalletLogin").toString(); %>
		</div>
		<br><br><br><br>
		<h1>Your User Wallet Amount is <%=userWallet%></h1>
		
		
</body>
</html>
