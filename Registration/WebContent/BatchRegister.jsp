<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register batch</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="home.css">
  
</head>
<body>

<div class="container">

<center><img src="image\logo.png"></center>

<div class=box1>
  <h2><center>Batch Registration Form</center></h2></br></br>
  <form class="form-horizontal" method="post" action="BatchRegisterServlet">
    
     <div class="form-group">
    <lable class="control-label col-sm-5" for="batch_code" ><b>Batch Code:</b></lable>
       <div class="col-sm-5">
       <input  class="form-control" list="batch_code"  name="batch_code" placeholder="select Batch Code" required>
        <datalist id="batch_code">
        <option value="1"/>
        <option value="2"/>
        <option value="3"/>
        <option value="4"/>
        <option value="5"/>
        <option value="6"/>
        <option value="7"/>
        <option value="8"/>
        <option value="9"/>
        <option value="10"/>
        </datalist>
        </div>
      </div> 
       <div class="form-group">
      <lable class="control-label col-sm-5" for="trainee_id" ><b>Trainee id:</b></lable>
       <div class="col-sm-5">
       <input  class="form-control" list="trainee_id"  name="trainee_id" placeholder="select trainee_id" required>
        <datalist id="trainee_id">
        <option value="01"/>
        <option value="02"/>
        <option value="03"/>
        <option value="04"/>
        <option value="05"/>
        <option value="06"/>
        <option value="07"/>
        <option value="08"/>
        <option value="09"/>
        <option value="10"/>
        </datalist>
        </div>
     </div>
     <div class="form-group">
      <label class="control-label col-sm-5" for="strength">Strength:</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control" id="strength" placeholder="Enter strength" name="strength"  required>
      </div>
    </div>
    
    
    <div class="form-group">
    <lable class="control-label col-sm-5" for="domain" ><b>Domain:</b></lable>
       <div class="col-sm-5">
       <input  class="form-control" list="domain"  name="domain" placeholder="select Domain" required>
        <datalist id="domain">
        <option value="Asp.net"/>
        <option value="java"/>
        <option value="oops"/>
        <option value="php"/>
        </datalist>
        </div>
      </div> 
    
     
    <div class="form-group">
      <label class="control-label col-sm-5" for="start_date">Start Date:</label>
      <div class="col-sm-5">          
        <input  type="date" class="form-control"   name="start_date"  required>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-5" for="start_date">End Date:</label>
      <div class="col-sm-5">          
        <input  type="date" class="form-control"   name="end_date"  required>
      </div>
    </div>
    
    <div class="form-group">
    <lable class="control-label col-sm-5" for="trainer_id" ><b>Trainer Id:</b></lable>
       <div class="col-sm-5">
       <input  class="form-control" list="trainer_id"  name="trainer_id" placeholder="select trainer_id" required>
        <datalist id="trainer_id">
        <option value="TR01"/>
        <option value="TR02"/>
        <option value="TR03"/>
        <option value="TR04"/>
        <option value="TR05"/>
        <option value="TR06"/>
        <option value="TR07"/>
        </datalist>
        </div>
      </div> 
    
    <div class="form-group">
    <lable class="control-label col-sm-5" for="batch_owner_name" ><b>Batch Owner Id:</b></lable>
       <div class="col-sm-5">
       <input  class="form-control" list="batch_owner_name"  name="batch_owner_name" placeholder="select Batch Owner Name" required>
        <datalist id="batch_owner_name">
        <option value="BO001"/>
        <option value="BO002"/>
        <option value="BO003"/>
        <option value="BO004"/>
        <option value="BO005"/>
        </datalist>
        </div>
      </div> 
     
      </br>
     
    <div class="form-group">        
      <div class="col-sm-offset-6 col-sm-2">
        <button type="button" class="submitbt">Submit</button>
        <button type="button" class="cancelbtn" onclick="openPage('BatchDetails1.jsp')" >Cancel</button>
      </div>
    </div>

 </form>
</div>

<script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>
</div>

</body>
</html>	