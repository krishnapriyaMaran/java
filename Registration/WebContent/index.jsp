<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="home.css">





</head>
<body>
<center><img src="image\logo.png"></center>

<div id="navbar">
  <a class="active" href="index.jsp">Home</a>
  <a href="aboutus.jsp">Our Vision</a>
  <a href="services.jsp">Services</a>
  <a href="#">Contact</a>
  <ul    class="nav navbar-nav navbar-right">
  <a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
  <a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in</a>
 </ul>
</div>



<div class="container">
  
  <div class="panel panel-default">
    <div class="panel-body">

<img src="image\title.jpg" width="1100px">





<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
<div class="panel-body">


  <p>360 Ripples is a development & research organization in the area of software skill development, which focuses both in building talents for IT industry and technology consulting for product development. With regards to building talents, 360 Ripples bridges the gap between the knowledge acquired by the resources in their curriculum and the skill required by the IT industry..
   </p>
<p>We are a group of practitioners with over to 17 years of experience in IT organizations like Cognizant, TCS, Accenture & Verizon. 
  </p>
<li>Software delivery management </li>
<li>Enterprise/Solution architecture </li>
<li>Corporate learning solutions</li> 
<li>Corporate HR/Operations management</li>
<li>University placement office</li>
<p>Our primary focus is in building talent pool aligned to the IT industry expectations, by enabling the resources to build the skills in demand and also to help IT organizations in reducing their talent gap needs by predictive hiring  staffing highly productive resources.
</p>
<p>To achieve this, we first enable the resources to develop the open source technical skills, which contribute a major percentage of the developer community in IT industry. As essence of industrial, domain and soft skills are also added to the learning stack to make the learning fully complete and aligned to the industry model.
</p>

  </div>
  </div>
</div>  
</div>
<div class="footer" id="footer" style="background-color: black;text-color: #ffffff;height:30px;text-align:center">

  <p>Copyright © 360 ripples. All Rights Reserved </p>

</div> 



</body>
</html>