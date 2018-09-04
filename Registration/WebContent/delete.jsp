<html>
<script language="javascript">
var curr=0 ;
function addradio()
{
    document.getElementById("my_div").innerHTML=document.getElementById("my_div").innerHTML+
"<br><input type='radio' id='my"+curr+"'  value='Male' name='my"+curr+"'>Male "+
"<input type='radio' id='my"+curr+"' value='Female' name='my"+curr+"'>Female ";
  curr=curr+1;
}
function changeIt()
{
my_div.innerHTML = my_div.innerHTML +"<br>Skills<input type='text' name='mytext[]' value='mytext'>";
my_div.innerHTML = my_div.innerHTML +"<br><input type='radio' id='my' value='mytext' value='male' name='radio[]'>";
my_div.innerHTML = my_div.innerHTML +"<input type='radio' id='my' value='Female' name='radio[]'>";
//var el = document.getElementById('my');
//el.name = 'level';
}
</script>
<body>
<form name="form" action="homep.php" method="">
<input type="button" value="test" onClick="addradio()">
<div id="my_div"></div>
  <input type="submit" name="Submit" value="Submit">
</form>
</body>
</html>