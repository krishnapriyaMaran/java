<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
  <a href="ahoutus.jsp">About US</a>
  <a href="services.jsp">Services</a>
  <a href="#">Contact</a>
  <ul    class="nav navbar-nav navbar-right">
  <a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
  <a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in</a>
 </ul>
</div>
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



<div class="container">
  

<img src="image\title.jpg" width="1100px">


<div class="panel-body">

<h1>Services</h1></br>
<p>The secret mantra of 360° Ripples is delivering a holistic learning experience to our students, thus groom* them as 360 degree professional. Our experts panel have designed a unique graduation program which can improve the job readiness of students,
</p></br>
 <b> Faculty Development Program</b></br>
<p>A program which develops the faculties skills aligned to industry demands and process. Here the faculties will be taken through a series of session simulating the real world industry. This will help the faculties understand the process, tools and other stake holders involved in the life cycle of IT engineering.
</p></br>
<b>Customized Learning Program</b></br>
<p>We at 360 Ripples strongly believe that every student deserves a second chance. Based on the inherent capability of the students the 360 ripples expert team defines and implements customized learning solution to build a prospective career for the students.
</p></br>
<b>Placement Office Assistance</b></br>
<p>We also work with placement officers and support/guide them in explaining the corporate's and industry about the ripple graduates learnings and outcomes. This will help the industry to understand about the students skillset's which can improve the placement percentage.
</p></br>
<b>Benefits</b></br>
<li>Gears up the students industrial skills, which can help college in gaining recognition in industry.</li>
<li>Build a brand value for the college graduates in corporates.</li>
<li>Improves the campus placement percentage.</li>
<li>Increases the spectrum of on campus placement companies coming to the institution.</li>

</div>
</div>
</body>
</html>