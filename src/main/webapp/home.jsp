<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    #homefield{
    width:800px;
    color:fuchsia;
    }
    
*{
  box-sizing: border-box;
}
body{
  margin: 0;
  padding: 0;
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
  background-color: #555;
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
.topnav {
  background-color: black;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size:larger;
}
body{
  background-image: url(https://wallup.net/wp-content/uploads/2017/03/28/401002-rose-flowers-books.jpg);
           background-repeat: no-repeat;
            background-size:cover;
            color:white;
          
        }
/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: rgba(71, 90, 28, 0.945);
}

/* Add a color to the active/current link */
.topnav a {
  background-color: black;
  color: white;
  float: right;
}
p,pre{
  color:white;
  font-size: large;
}
fieldset{
  width: 200px;
}
#foot{
  text-align: center;

}
</style>
</head>
<body>
    <nav class="navbar">
        <div class='brand-title'>Library Management</div>
        <a href='#' class='toggle-btn' id='toggle-btn'>
          <span class='bar'></span>
          <span class='bar'></span>
          <span class='bar'></span>
        </a>
        <div class='navbar-links' id='navbar-links'>
          <ul>
            <li><a class="active"id='links' href="index.jsp">Login</a></li>
            <li><a href="#contact" id='links'>Contact</a></li>
            <li><a href= "#award" id='links'>About</a></li>
          </ul>
        </div>
      </nav>
      <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Anna_Centenary_Library_Exterior.jpg/1200px-Anna_Centenary_Library_Exterior.jpg" width="1250px" height="800px">
   <h3 id="award">About Us</h3>  
   <fieldset id="homefield"><p>The Anna Centenary Library (ACL), a state-of the-art library was inaugurated on September 15, 2010 on the occasion of the 102nd birth anniversary of the former Chief Minister of Tamil Nadu Dr. C N Annadurai popularly called ‘ANNA’. By reason of his great interest towards the books and library, this library is named as ‘Anna Centenary Library’. The foundation stone laid on August 16, 2008, completed in a short span and declared open to the public from 20th September 2010.

    The built up area of this centralized air-conditioned library is 3.75 lakh sq. ft., encompasses ground and eight floors. At present, it hosts five lakhs books covering wide range of subjects to serve the information needs of the public, academic and corporate community. Our Library has a Braille Section, Own Books Reading Section, Children Section, Periodicals and Newspapers Section, Tamil books Section, English Books Section and Digital Library. In addition, the library has a Conference Hall that can facilitate 150 members. </p>   
	</fieldset>
    <h3 id="contact">Contact Us</h3>
    <fieldset>
      <pre>The Chief Librarian & Information Officer
        Anna Centenary Library 
        Kotturpuram 
        Chennai - 600025 
        Phone Number : 04422201011
        Email : clbrnaclchn.dopl@tn.gov.in</pre>
    </fieldset>
    <br><br>
<hr>
    <footer>
      <pre id="foot">
        Copyright  2022 Anna Centenary Library| Powered by Blogger
      Design by SimpleWpThemes | Blogger Theme by NewBloggerThemes.com
      </pre>
    </footer>
</body>
</html>