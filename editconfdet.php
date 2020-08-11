<?php
session_start();
$uname=$_SESSION['username'];
include("connect.php");

$title=$_GET['title'];

 $sql="select * from socs_conference where title_manu='$title'";
$res=  mysqli_query($conn, $sql) or die("Could not Execute Query");
$row=mysqli_fetch_array($res) or die(mysqli_error());


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
<br><br>

<form method="post" action="confupd.php" enctype="multipart/form-data">
<fieldset style="background-color:#F4F4F4">
<legend>
General Information </legend>
<div style="float:left">Title of the Manuscript: <br><textarea type="text" name="txtmanuscript" required="required" rows=2 cols="120"><?php echo $row['title_manu'];?> </textarea>  </div>

<div style="float:left; margin-left:30px">Department: <br><select  name="seldept" style="width:390px; height:40px" > 
<option>Systemics</option>  
<option>Informatics</option> 
<option>Virtualization</option> 
<option>Cybernetics</option> 
<option>Computer Application</option> 
</select>  </div>

<br>
<div style="float:left; margin-right:50px">List of Authors (Separated by Comma) <br><textarea type="text" name="txtauthors" required="required" rows=2 cols="85"><?php echo $row['authors'];?>   </textarea>  </div>
<div>Affiliation (Separated by Comma) <br><textarea type="text" name="txtaff" required="required" rows=2 cols="85"><?php echo $row['affiliation'];?>   </textarea>  </div>

</fieldset>

<br><br>
<fieldset style="background-color:#F4F4F4">
<legend>
Publication Information </legend>
<div style="float:left">Name of the Conference: <br><textarea type="text" name="txtconf" required="required" rows=2 cols="80"><?php echo $row['conference'];?>   </textarea>  </div>
<div style="float:left; margin-left:30px">Publisher: <br><textarea type="text" name="txtpid" required="required" rows=2 cols="30"><?php echo $row['publisher'];?>   </textarea>  </div>

<div style="float:left; margin-left:30px">Organising Body: <br><Input type=text  name="txtorg" value=<?php echo $row['organiser'];?> style="width:390px; height:34px" > 
  </div>

<br>
<div style="float:left; margin-right:50px; margin-left:28px">Venue: <br><textarea type="text" name="txtvenue" required="required" rows=2 cols="35"><?php echo $row['venue'];?>   </textarea>  </div>
<div style="float:left; margin-right:50px">Date of Conference: <br><input type="text"  name="txtdate" style="width:265px; height:35px" value=<?php echo $row['confdate'];?>> </div>
<div style="float:left; margin-right:50px">Status: <br><select  name="txtstatus" style="width:265px; height:36px"> <option> National</option><option> International</option>  </select>  </div>
<div>Indexed In Scopus: <br><select  name="txtindexing" style="width:265px; height:36px"><option> Yes</option><option> No </option>   </select>  </div>

<br>

<div style="float:left; margin-right:50px; margin-left:28px">Funding Information <br><select name="funding" style="width:265px; height:36px"><option>Funded</option><option>Self Funded</option></select>  </div>
<div style="float:left; margin-right:50px">Amount: <br><input type="number"  name="txtamt" style="width:265px; height:35px" value=<?php echo $row['amount'];?>> </div>


<br><br><br><br>
<div style="float:left; margin-right:50px; margin-left:30px">Conference Website URL: <br><textarea type="text" name="txtconfurl" required="required" rows=2 cols="40"><?php echo $row['confwebsite'];?>   </textarea>  </div>
<div style="float:left; margin-right:50px; margin-left:30px">URL for Proceedings (Write NA if not): <br><textarea type="text" name="txturl" required="required" rows=2 cols="40"><?php echo $row['proseedingurl'];?>   </textarea>  </div>
<div style="float:left; margin-right:50px">Upload Certificate (Name it with PaperId): <br><input type="File" name="rptlink" id="rptlink" >     </div>
</fieldset>
<br><br>
<div style="text-align:center"><input type="submit" value="Submit Information" style="height:35px; background-color:#FFCC00">
<input type="Reset" value="Reset Form" style="height:35px; background-color:#FFCC00"></div>

</form>




</div>
<br><br><br><br><br>	
<div style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align: center; font-family:calibri">Design & Developed by <br> UPES, Dehradun</div>
</body>
</html>
