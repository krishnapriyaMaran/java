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
<body>

             <% List<Variables> topics=(ArrayList<Variables>)request.getAttribute("course");
 
 if(topics!=null)
 {
	 int i;
 
 %>
    <table border=2 align="center">
    
    
    <% int j=topics.size();
    for (Variables user :topics )
    {   out.println(j);
    
    	out.println(   user.getTopics());
    
    
 
    	
    	%>
 <tr>
     
 <td><% 
	    %></td>
 </tr>
 <%} %>
 </table>
 <%} %>



</body>
</html>