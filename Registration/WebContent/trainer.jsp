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
</head>
<% List<Variables> trainerDetail=(ArrayList<Variables>)request.getAttribute("Batchdetails");%>
<body>
<div id="navbar">
  <a class="active" href="#">Home</a>
  <a href="aboutus.jsp">Our Vision</a>
  <a href="services.jsp">Services</a>
  <a href="#">Contact</a>
  <ul    class="nav navbar-nav navbar-right">
  <a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in</a>
 </ul>
</div>

<h1><center>Trainer Details</center></h1>





  <table border=2 align="center">
 <tr>
 <th>Trainer Id</th></br>
 <th>Domain</th></br>
 <th>Start Date</th></br>
 <th>End Date</th>
 </tr>
 <% for (Variables user : trainerDetail) { %>
 <tr>
 <td><%=user.getTrainer_id() %></td></br>
 <td><%=user.getDomain() %></td></br>
 <td><%=user.getStart_date() %></td>>
 <td><%=user.getEnd_date() %></td>
 </tr>
 <%} %>
 </table>

</body>
</html>