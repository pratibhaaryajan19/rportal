<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
$title=$_GET['title'];
;
 $sql="select * from socs_publication where title_manu='$title'";
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
<div style="font-family:Calibri, Cambria; font-size:12px; text-align:right; margin-right:20px"> <a href="faculty.php" style="text-decoration:none; color:#CC0000">Home</a> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
<br><br>
<form method="post" action="updsave.php" enctype="multipart/form-data">
<fieldset style="background-color:#F4F4F4">
<legend>
General Information </legend>
<div style="float:left">Title of the Manuscript: <br><textarea type="text" name="txtmanuscript" required="required" rows=2 cols="120"><?php echo $row['title_manu'];?></textarea>  </div>

<div style="float:left; margin-left:30px">Department: <br><select  name="seldept" style="width:390px; height:40px" > 
<option>Systemics</option>  
<option>Informatics</option> 
<option>Virtualization</option> 
<option>Cybernetics</option> 
<option>Computer Application</option> 
</select>  </div>

<br>
<div style="float:left; margin-right:50px">List of Authors (Separated by Comma) <br><textarea type="text" name="txtauthors" required="required" rows=2 cols="85"><?php echo $row['authors'];?></textarea>  </div>
<div>Affiliation (Separated by Comma) <br><textarea type="text" name="txtaff" required="required" rows=2 cols="85"><?php echo $row['affiliation']; ?>  </textarea>  </div>

</fieldset>

<br><br>
<fieldset style="background-color:#F4F4F4">
<legend>
Publication Information </legend>
<div style="float:left">Name of the Journal: <br><textarea type="text" name="txtjournal" required="required" rows=2 cols="120"><?php echo $row['journal']; ?> </textarea>  </div>

<div style="float:left; margin-left:30px">Publisher: <br><Input type=text  name="txtpub" style="width:390px; height:34px" value="<?php echo $row['Publisher']; ?>" > 
  </div>

<br>
<div style="float:left; margin-right:50px; margin-left:28px">ISSN / ISBN Number: <br><textarea type="text" name="txtissn" required="required" rows=2 cols="35"><?php echo $row['issn']; ?>  </textarea>  </div>
<div style="float:left; margin-right:50px">Indexed in: <br><select  name="txtindex" style="width:265px; height:35px"><option>SCI</option><option>e-SCI</option><option>SCOPUS</option><option>UGC (CARE)</option> <option>Others</option> </select> </div>

<div style="float:left; margin-right:50px">Volume: <br><textarea type="text" name="txtvol" required="required" rows=2 cols="35"><?php echo $row['volume']; ?>   </textarea>  </div>

<div>Issue: <br><textarea type="text" name="txtissue" required="required" rows=2 cols="35"><?php echo $row['issue'];?></textarea>  </div>

<br>
<div style="float:left; margin-right:50px; margin-left:28px">Page Number: <br><textarea type="text" name="txtpg" required="required" rows=2 cols="35"><?php echo $row['ppno']; ?>   </textarea>  </div>

<div style="float:left; margin-right:50px">DOI: <br><textarea type="text" name="txtdoi" required="required" rows=2 cols="35"><?php echo $row['doi']; ?>  </textarea>  </div>

<div style="float:left; margin-right:50px">Month: <br><select  name="txtmonth" style="width:270px; height:35px"> 
<option>January</option>  <option>February</option>  <option>March</option>  <option>April</option>  <option>May</option>  <option>June</option>  <option>July</option>  <option>August</option>  <option>September</option> <option>October</option> <option>November</option> <option>December</option> 
</select>  </div>

<div>Year: <br><input type="number" name="txtyear" required="required" style="height:30px; width:265px" value="<?php echo $row['year']; ?>">     </div>

<br>
<div style="float:left; margin-right:50px; margin-left:88px">URL: <br><textarea type="text" name="txturl" required="required" rows=2 cols="70"><?php echo $row['url_manu']; ?>  </textarea>  </div>
<div style="float:left; margin-right:50px">Upload Document (Name it with DOI): <br><input type="File" name="rptlink" id="rptlink" >     </div>
</fieldset>
<br><br>
<div style="text-align:center"><input type="submit" value="Submit Information" style="height:35px; background-color:#FFCC00">
<input type="Reset" value="Reset Form" style="height:35px; background-color:#FFCC00"></div>

</form>

</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>	
<div style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align: center; font-family:calibri; float:left; width:100%">Design & Developed by <br> UPES, Dehradun</div>
</body>
</html>
