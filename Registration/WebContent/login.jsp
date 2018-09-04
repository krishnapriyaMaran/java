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
    <form class="modal-content animate" method="post" action="LoginPageServlet">
    
    <div id="login_box">
      
        </br></br>   
     <div class="imgconatiner"><img src="image\login.png"></div>
    <div class="container">
      <label for="uname"><b>Employee Id</b></label>
      <input type="text" placeholder="Enter Id" name="username" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        
    
    
    
        <lable  for="role"><b>Role</b></lable></br>
        <input  class="rol" list="role"  name="role" placeholder="select Role" required>
        <datalist id="role">
        <option value="Batch Owner"/>
        <option value="Trainer"/>
        <option value="Trainees"/>
        </datalist>
     
     <button type="submit">Login</button>
          
    </div>

<div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn" onclick="doSubmit();" >Cancel</button>
          <span class="psw">Forgot <a href="#">password?</a></span>
     
  </div>


<script>
 
function doSubmit()
{
window.open("index.jsp");
}
</script>


    </div>
</form>  
 </center>



</body>
</html>