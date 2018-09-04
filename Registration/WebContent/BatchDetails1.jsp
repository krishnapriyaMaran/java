<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="home.css">



</head>
<body>


<center><img src="image\logo.png"></center>


<div class="navbar">
  <a href="index.jsp">Home</a>
  <a href="aboutus.jsp">Our Vision</a>
  <a href="services.jsp">Services</a>
  <a href="#">Contact</a>
  
  <a href="BatchRegister.jsp">Add Batch</a>
  <div class="dropdown">
    <button class="dropbtn" onclick="myFunction()">Details
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content" id="myDropdown">
      <a href="trainerDetailsServlet?param=value">All</a>
       <a href="domain.jsp">Domain</a>
       <a href="date.jsp">Date</a>
       <a href="id.jsp">Id</a>
      
    </div>
  </div> 
  <a href="#">Feedback Details</a>
  
 <div class="topnav-right">
    <a href="index.jsp">Log out</a>
  </div>  
</div>




<center><img src="image\batchowner.jpg" height="300px"; width="300px"></center>
<div class="panel-body">

<p>As a Skill Development Partner of Dhanalakshmi College of Engineering (DCE), numerous sessions of Career Enablement Program was conducted to around 600 students, to make them understand the IT industry expectations, how they can equip themselves to exceed those expectations and become a strong contender to get placed in top organizations of the industry.</p>

<p>Detailed IT Industry oriented Skill development workshops and Career enablement program was conducted to around 300+ students, enabling them to understand real time application of software engineering principles, OOAD and data engineering skills.</p>
</br>

</div>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
    var myDropdown = document.getElementById("myDropdown");
      if (myDropdown.classList.contains('show')) {
        myDropdown.classList.remove('show');
      }
  }
}
</script>
<div class="footer" id="footer" style="background-color: black;text-color: #ffffff;height:30px;text-align:center">

  <p>Copyright © 360 ripples. All Rights Reserved </p>

</div> 


</body>
</html>