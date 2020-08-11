<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");

 


?>

<!DOCTYPE html>
<html>
<head>
	<title>e-Shodh</title>
	 <link rel="stylesheet" type="text/css" href="resources/css/main.css">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	 <style>
	 @media only screen and (max-width: 600px) {
  
  .maintext{font-family:Cooper Black; font-size:20px; padding-left:60px; color:#FFFFFF}
 .subtext{font-family:Pristina; margin-left:50px; font-size:14px; color:#FFFFFF}
}

@media only screen and (min-width: 600px) {
  .maintext{font-family:Cooper Black; font-size:30px; padding-left:100px; color:#FFFFFF}
  .subtext{font-family:Pristina; margin-left:80px; font-size:18px; color:#FFFFFF}
}
</style>
</head>
<body style="font-family:Calibri, Cambria">

<div class="container">
<div style="margin-top:1px; "><span class="maintext">e-Shodh</span><br> 
<span class="subtext">University Research Portal</span></div>
</div>
<div style="font-family:Calibri, Cambria; font-size:12px; text-align:right; margin-right:20px"> <a href="admin.php" style="text-decoration:none; color:#CC0000">Home</a> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
<br>
<div style="text-align:center; font-size:24px; margin-bottom:30px; color:#FF6600"> View Deparmental Research Targets Achieved</div>
<form method="post" action="viewtargetdet.php">
<div style="margin-left:0px; border:1px solid; box-shadow:5px 5px 4px 5px #888888; width:600px; margin-left:auto; margin-right:auto; padding-top:20px; padding-bottom:20px">
<div style="margin-bottom:15px; text-align:center"> Select Department</div>
<div style="text-align:center"><select name="txtdepartment" style="width:150px; height:30px">
<option> Systemics </option>
<option> Informatics </option>
<option> Virtualization </option>
<option> Cybernetics </option>
<option> Computer Application </option>
</select></div>

<div style="text-align:center; margin-top:20px"> Select Duration </div>
<div style="text-align:center"><select name="txtduration" style="width:150px; height:30px">
<option> 2019</option>
<option> 2020</option>
<option> 2021</option>
<option> 2022</option>
<option> 2023</option>
<option> 2024</option>
<option> 2025</option>
<option> 2026</option>
<option> 2027</option>
<option> 2028</option>
<option> 2029</option>
<option> 2030</option>

</select>
</div>



<div style="text-align:center; margin-top:30px"><input type="submit" value="View Target" style="background-color:#FF9900; width:120px; height:35px"></div>

</div>
</form>
<br><br><br><br><br><br><br><br><br>	
<div style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align: center; font-family:calibri; float:left; width:100%">Design & Developed by <br> UPES, Dehradun</div>
</body>
</html>
