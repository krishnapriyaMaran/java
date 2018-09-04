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
<link rel="stylesheet" type="text/css" href="home.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




</head>




<body>



<div id="navbar">
  <a class="active" href="#">Home</a>
  <a href="aboutus.jsp">Our Vision</a>
  <a href="services.jsp">Services</a>
  <a href="#">Contact</a>
  <ul    class="nav navbar-nav navbar-right">
  <a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Log out</a>
 </ul>
</div>
    
    <h1><center>Trainer Details</center></h1>
    </div>
 
     
    

 
 
   <% List<Variables> topics=(ArrayList<Variables>)request.getAttribute("course");
 
 if(topics!=null)
 {
	 
 
 %>
 </br></br>
 <table border=2 align="center">
 <tr>
 <th>Trainer id</th>
 <th>Batch Owner id</th>
 <th>Domain</th>
 <th>Start date</th>
 <th>End date</th>
 </tr>
 
 
 <% for (Variables user :topics ) { %>
 <tr>
 <td><%=user.getTrainer_id() %></td>
 <td><%=user.getBatch_owner_name() %></td>
 <td><%=user.getDomain() %></td>
 <td><%=user.getStart_date() %></td>
 <td><%=user.getEnd_date() %></td>
 
 </tr>
 <%} %>
 </table>
 <%} %>

    
</body>
</html>