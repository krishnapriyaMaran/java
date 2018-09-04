<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trainees</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="home.css">

</head>
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

<div class="container">
<div>
   <h1><center>Trainees Feedback Page</center></h1>
</div>
<nav class="navbar navbar-inverse">
  
    <ul class="nav navbar-nav">
      <li class="active"><a href="LoginPage.jsp">Home</a></li>
      
      </ul>
  </div>  
</nav>
</div>
</div>


<div class="container">
  <h2><center>FeedBack Form</center></h2>
  <form class="form-horizontal" method="post" action="#">
    
    <div class="form-group">
    <lable class="control-label col-sm-2" for="trainer_id" ><b>Trainer Id:</b></lable>
       <div class="col-sm-10">
       <input  class="form-control" list="trainer_id"  name="trainer_id" placeholder="select Trainer Id" required>
        <datalist id="trainer_id">
       <option value="T001"/>
        <option value="T002"/>
        <option value="T003"/>
        <option value="T004"/>
        <option value="T005"/>
        <option value="T006"/>
        <option value="T007"/>
        </datalist>
          
        </div>
      </div> 
      
     
     
    <div class="form-group">
      <label class="control-label col-sm-2" for="topic">Topic:</label>
      <div class="col-sm-10">          
              <input  class="form-control" list="topic"  name="topic" placeholder="select topic" required>
                <datalist id="topic">
        <option value="Dot Net"/>
        <option value="Core Java"/>
        <option value="Big Data"/>
        <option value="Query"/>
        </datalist>
  
       </div>
    </div>
    
  <div class="form-group">
      <label class="control-label col-sm-2" for="feedback">FeedBack:</label>
      <div class="col-sm-10">          
<input type="radio" name="excellent"  value="excellent"/>excellent</br>
       <input type="radio" name="good"  value="good" />good</br>
        <input type="radio" name="bad"  value="bad" />bad
  
       </div>
    </div>
    
  <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</body>
</html>