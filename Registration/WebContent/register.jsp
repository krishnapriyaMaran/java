<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 

<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="home.css">
 
</head>
<body>
<div id="navbar">
  <a class="active" href="index.jsp">Home</a>
  <a href="aboutus.jsp">Our Vision</a>
  <a href="services.jsp">Services</a>
  <a href="#">Contact</a>
  
</div>
    
    
    
    </br></br>

    <center>
    <form class="modal-content animate" method="post" action="RegistrationServlet">
    
    <div id="login_box">
      
    
     <div class="imgconatiner"><img src="image\Login-Registration.png" height="100px" ; width="100px"></div>
    


    <div class="container">
      <label for="emp_id"><b>Employee Id</b></label>
      <input type="text" placeholder="Enter employee_id" name="employee_id" required>

      <label for="username"><b>UserName</b></label>
      <input type="text" placeholder="Enter username" name="username" required>
      
      
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
      
      <label for="cpsw"><b>Confirm Password</b></label>
      <input type="password" placeholder="Re-enter Password" name="confirm_password" required>
        
        <lable  for="role"><b>Role</b></lable></br>
       <input  class="rol" list="role"  name="role" placeholder="select Role" required>
        <datalist id="role">
        <option value="Batch Owner"/>
        <option value="Trainer"/>
        <option value="Trainees"/>
        </datalist>
     <!--  <input type="submit" value="submit" name="submit"></input>-->
     <button type="submit">Submit</button>
     
    

   <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn" onclick="doSubmit();" >Cancel</button>
  </div>
  
  
  <script>
 
function doSubmit()
{
window.open("index.jsp");
}
</script>
</div>
</div>
</form>
</center>
</body>
</html>