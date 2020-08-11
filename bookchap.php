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
$a=mysqli_query($conn,"select * from socs_savbookchap where sap_id='$uname'");
$b=mysqli_fetch_array($a);

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
<body>

<div class="container">
<div style="margin-top:1px; "><span class="maintext">e-Shodh</span><br> 
<span class="subtext">University Research Portal</span></div>
</div>
<div class="container">
<div style="font-family:Calibri, Cambria; font-size:18px; margin-left:100px; padding-top:15px;"> <?php echo "<a href=\"$go\"  style=\"text-decoration:none; color:#CC0000\">Home</a>";?> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
</div>

<br>

<form method="post" action="bookchapsave.php" enctype="multipart/form-data">
<fieldset style="background-color:#F4F4F4">
<legend>
General Information </legend>
<div style="float:left">Title of the Chapter: <br><textarea type="text" name="txtmanuscript" required="required" rows=2 cols="120"><?php echo $b[1];?></textarea>  </div>

<div style="float:left; margin-left:30px">Department: <br><select  name="seldept" value="<?php echo $b[2];?>" style="width:390px; height:40px" > 
<option>Systemics</option>  
<option>Informatics</option> 
<option>Virtualization</option> 
<option>Cybernetics</option> 
<option>Computer Application</option> 
</select>  </div>

<br>

</fieldset>

<br><br>
<fieldset style="background-color:#F4F4F4">
<legend>
Publication Information </legend>
<div style="float:left">Book Title: <br><textarea type="text" name="txtbook" required="required" rows=2 cols="80"><?php echo $b[5];?></textarea>  </div>
<div style="float:left; margin-left:30px">Publisher: <br><textarea type="text" name="txtpub" required="required" rows=2 cols="30"><?php echo $b[6];?></textarea>  </div>

<div style="float:left; margin-left:30px">ISBN No.: <br><Input type=text  name="txtisbn" value="<?php echo $b[7];?>" style="width:390px; height:34px" > </div>

<br><br><br><br><br>
<div style="float:left; margin-right:30px">List of Authors (Separated by Comma) <br><textarea type="text" name="txtauthors" required="required" rows=2 cols="85"><?php echo $b[3];?></textarea>  </div>
<div style="float:left;">Affiliation (Separated by Comma) <br><textarea type="text" name="txtaff" required="required" rows=2 cols="85"><?php echo $b[4];?></textarea>  </div>

<br><br><br><br>

<div style="float:left; margin-right:30px"> <br>URL:<br> <textarea type="text" name="txturl" required="required" rows=2 cols="40"><?php echo $b[9];?></textarea>  </div>
<div style="float:left; margin-right:30px"><br>Date of Publication:<br> <input type="date" value="<?php echo $b[8];?>" name="txtdate" style="width:200px; height:30px"> </div>
<div style="float:left; margin-right:30px"><br><br>Upload Chapter (Name it with Title): <input type="File" name="rptlink" id="rptlink" >     </div>

</fieldset>
<br><br>
<div style="text-align:center"><input type="submit" name="subact" value="Submit Information" style="height:35px; background-color:#FFCC00">
<input type="Reset" value="Reset Form" style="height:35px; background-color:#FFCC00">
<input type="submit" name="savact" value="Save for later" style="height:35px; background-color:#FFCC00"></div>
</form>



<br>
<div style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align: center; font-family:calibri">Design & Developed by <br> UPES, Dehradun</div>
</body>
</html>
