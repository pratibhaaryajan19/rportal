<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
$query=mysqli_query($conn,"select designation from socs_loginnew where sap_id='$uname'");
$des=mysqli_fetch_array($query);
$go=$des[0].".php";
if($des[0]=="Assistant Dean")
{
	$go= "dean.php";
}
 


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
<div class="container">
<div style="font-family:Calibri, Cambria; font-size:18px; margin-left:100px; padding-top:15px;"> <?php echo "<a href=\"$go\"  style=\"text-decoration:none; color:#CC0000\">Home</a>";?> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
</div>
<br>
<div style="text-align:center; font-size:24px; margin-bottom:30px; color:#FF6600"> Set Deparmental Research Targets</div>
<form method="post" action="targetsave.php">
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

<div style="margin-top:20px; margin-left:60px; float:left"> No. of Journal Publications (SCOPUS)</div>
<div style="margin-top:20px; margin-left:360px"><input type="number" name="txtscopus"></div>

<div style="margin-top:20px; margin-left:60px; float:left"> No. of Journal Publications (SCI)</div>
<div style="margin-top:20px; margin-left:360px"><input type="number" name="txtsci"></div>

<div style="margin-top:20px; margin-left:60px; float:left"> No. of Conferences </div>
<div style="margin-top:20px; margin-left:360px"><input type="number" name="txtconf"></div>

<div style="margin-top:20px; margin-left:60px; float:left"> No. of Patents</div>
<div style="margin-top:20px; margin-left:360px"><input type="number" name="txtpatent"></div>

<div style="margin-top:20px; margin-left:60px; float:left"> No. of Book Chapters</div>
<div style="margin-top:20px; margin-left:360px"><input type="number" name="txtbch"></div>

<div style="text-align:center; margin-top:30px"><input type="submit" value="Set Target" style="background-color:#FF9900; width:120px; height:35px"></div>

</div>
</form>
<br><br><br><br><br>	
<div style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align: center; font-family:calibri; float:left; width:100%">Design & Developed by <br> UPES, Dehradun</div>
</body>
</html>
