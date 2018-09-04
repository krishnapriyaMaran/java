<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="valueObject.Variables" %>
    
    
    
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
<link rel="stylesheet" type="text/css" href="home.css">



</head>


 
<body>
<center><img src="image\logo.png"></center>

<div id="navbar">
  <a class="active" href="#">Home</a>
  <a href="aboutus.jsp">Our Vision</a>
  <a href="services.jsp">Services</a>
  <a href="#">Contact</a>
  <a href="feedbackServlet">Feedback</a>
  <ul    class="nav navbar-nav navbar-right">
  <a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Log out</a>
 </ul>
</div>

<center><img src="image\trainee.png" height="300px";width="300px"></center>

<p>We at 360° Ripples believe in quality, effectiveness and providing a holistic experience to our clients in the learning domain related to IT industry. The expert panel of 360° Ripples has put together a holistic design and identified revolutionary training models in the learning space which assures tangible outcomes to all of our clients. All these models have been time tested and proven approaches in the market.</p>
<p>A model which helps corporates to deploy work force based on their capability built during training period.</p>
<b>Business Impacts</b>
<ul>
<li>Reduced training and induction time & cost.</li>
<li>Time to deployment reduces.</li>
<li>Capability based deployment improves workforce productivity.</li>
</ul>








<div class="container">
<div>
   <h1><center>  Trainees FeedBack Page</center></h1>
</div>





<form  action="dummyServlet" method="post">
    
    <input type="radio" name="gen" id="male" value="male" required/>male
       <input type="radio" name="gen" id="female" value="female" required/>female
    
<center>
                       <input type="submit" name="submit" value="submit" />
    
</center>
    
    
    
    
              <% List<Variables> topics=(ArrayList<Variables>)request.getAttribute("course");
 
 if(topics!=null)
 {
	 
 
 %>
    <table border=2 align="center">
    
    
    <% for (Variables user :topics ) {     %>
 <tr>
     
 <td><div id="topics"><%=user.getTopics() %></div></td>
 </tr>
 <tr>
     <!-- For Ratings section -->
 <td><div id="rating"></div></td>
 
 </tr>
 <%} %>
 </table>
 <%} %>

    
   

</form>
</div>


</br></br></br></br>
<div class="footer" id="footer" style="background-color: black;text-color: #ffffff;height:30px;text-align:center">

  <p>Copyright © 360 ripples. All Rights Reserved </p>

</div> 
<script>
var topic = document.getElementById("topics");
var name = topic.value+"rating";
function addRadio(name){
	var rateCount = 5;
	for(i=0;i<5;i++)
		{
	var radiob = document.createElement("input");
	radiob.setAttribute("type", "radio");
	radiob.setAttribute("name", name);
	topic.appendChild(radiob);
		}
}
</script>

</body>
</html>