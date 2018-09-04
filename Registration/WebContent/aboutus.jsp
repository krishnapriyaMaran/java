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
  <a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a>
 </ul>
</div>

<div>

<div class="container">
  

<img src="image\title.jpg" width="1100px">


<div class="panel-body">




<h2>Our Vision</h2>
360 ripples solutions have a multifaceted vision,</br>

 <b> Delivery excellence for IT corporates</b></br>
 To partner with IT corporates in providing best in class services in hiring & training. We strongly strive to ensure that our model and service offerings deliver business benefits such as,
</br>
<li>Reduce time to bill ability in projects.</li>
<li>Improve productivity.</li>
<li>Reduce training cost drastically thus reducing OPEX.</li>
<li>Capability based deployment for identifying agile work force.</li>
<li>Pyramid optimization.</li></br>
 <b> Academy Service offering :</b></br>
To partner with Academies in upskilling their students (& faculties) and aligning them to the industry standards. Our service offerings delivers benefits for both the management and the students, a few of them are slated below

<li>Build a brand value among IT corporates by transforming graduates as business & technology ready associates.</li>
<li>Improving the corporate placement spectrum and placement percentage.</li>
<li>Increasing the demand for graduates in the corporate market.</li>
<li>Improving the pay scale of graduates being placed in corporates.</li></br>
<b>  Graduates upskilling and cross skilling</b></br>
In alignment with Indian government NSDC, transform the unemployed grads as practitioners, to enable them to get placed in the right organization based on their capability. Services in a nutshell are,
</br>
<li>roviding career consultation and enable them to choose the right paths.</li>
<li>Building the skills and transforming them as practitioners.</li>
<li>Placing them in IT companies based on their interests and capabilities.</li>

</p>
</div>
<div class="footer" id="footer" style="background-color: black;text-color: #ffffff;height:30px;text-align:center">

  <p>Copyright © 360 ripples. All Rights Reserved </p>

</div> 






  </div>
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




</body>
</html>