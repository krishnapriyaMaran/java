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

 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="home.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
</head>
<body>






<center><img src="image\logo.png"></center>


<div class="navbar">
  <a href="index.jsp">Home</a>
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





<h1><center> Details Sort By Date</center></h1></br></br>
    <form  method="post"  action="DateDetailsServlet">
    <div class=box2>
 Start Date:<input type="date" name="start_date"></br></br>
 End Date:<input type="date" name="end_date"></br></br></br>
 <input class="butto" type="submit" name="submit" value="submit" />
    </div>


         <% List<Variables> topics=(ArrayList<Variables>)request.getAttribute("course");
 
 if(topics!=null)
 {
	 
 
 %>
 </br></br>
 <table border=2 align="center">
 <tr>
 
 <th>Batch Owner id</th>
 <th>Batch Code</th>
 <th>Domain</th>
 <th>Strength</th>
 <th>Start date</th>
 <th>End date</th>
 </tr>
 
 
 <% for (Variables user :topics ) { %>
 <tr>
 
 <td><%=user.getBatch_owner_name() %></td>
 <td><%=user.getBatch_code() %></td>
 <td><%=user.getDomain() %></td>
 <td><%=user.getStrength() %></td>
  <td><%=user.getStart_date() %></td>
 <td><%=user.getEnd_date() %></td>
 
 </tr>
 <%} %>
 </table>
 <%} %>

</form></br></br>    
<div class="footer" id="footer" style="background-color: black;text-color: #ffffff;height:30px;text-align:center">
  <p>Copyright © 360 ripples. All Rights Reserved </p>
</div> 




</body>
</html>

