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
<body>

<div class="container">
<div style="margin-top:1px; "><span class="maintext">e-Shodh</span><br> 
<span class="subtext">University Research Portal</span></div>
</div>
<div class="container">
<div style="font-family:Calibri, Cambria; font-size:18px; margin-left:10px; padding-top:15px;"> <?php echo "<a href=\"$go\"  style=\"text-decoration:none; color:#CC0000\">Home</a>";?> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
</div>
<br><br>
<?php
if($_POST['submit'])
{

echo "<div style='text-align:center; font-family:Calibri, Cambria; font-size:22px; margin-bottom:20px'> Conference Data</div>";
echo"<div><div class='displaystyle' style='width:40px; margin-left:20px'>S.No</div>
<td><div class='displaystyle' style='width:300px'>Title of the Paper</div>
<div class='displaystyle' style='width:200px'>Authors</div>

<div class='displaystyle'style='width:80px'>Affiliation</div>
<div class='displaystyle' style='width:200px'>Conference Name</div>
<div class='displaystyle' style='width:60px'>Publisher</div>


<div class='displaystyle' style='width:140px'>Organiser</div>

<div class='displaystyle'>Venue</div>
<div class='displaystyle'style='width:60px'>Conf Date</div>
<div class='displaystyle' style='width:160px'>Proceedings</div>
<div class='displaystyle' style='width:80px'>Edit/Del</div>
</div>

";

$sapid=$_REQUEST['txtsap'];
$qry="select * from socs_conference where sap_id='$sapid'";
$rs=mysqli_query($conn, $qry);
$cnt=0;
while($row=mysqli_fetch_array($rs))
{
$cnt=$cnt+1;
if($cnt%2==0)
{
$bcol= "#DAEEF1";
}
else
{
$bcol="#FFDFBF";
}

?>
<div style=':100px'>
<div class='displaystyle' style='height:70px; font-size:12px;width:40px; margin-left:20px; color:#000; background-color:<?php echo $bcol; ?>'><?php echo $cnt; ?></div>
<div class='displaystyle' style='height:70px; font-size:12px;width:250px;word-wrap:break-word; color:#000;text-align:left;background-color:<?php echo $bcol; ?>'><?php echo $row['title_manu']; ?></div>
<div class='displaystyle' style='height:70px; font-size:12px; width:190px; color:#000000; background-color:<?php echo $bcol; ?>'><?php echo $row['authors']; ?></div>

<div class='displaystyle'style='height:70px; font-size:12px; width:80px;color:#000; background-color:<?php echo $bcol; ?>'><?php echo $row['affiliation']; ?></div>
<div class='displaystyle' style='height:70px; font-size:12px; width:160px;color:#000; background-color:<?php echo $bcol; ?>'><?php echo $row['conference']; ?></div>
<div class='displaystyle' style='height:70px;font-size:12px; width:60px; color:#000;background-color:<?php echo $bcol; ?>'><?php echo $row['publisher']; ?></div>


<div class='displaystyle' style='height:70px;font-size:12px; width:140px;color:#000;background-color:<?php echo $bcol; ?>'><?php echo $row['organiser']; ?></div>

<div class='displaystyle' style='height:70px;font-size:12px; color:#000;background-color:<?php echo $bcol; ?>'><?php echo $row['venue']; ?></div>
<div class='displaystyle' style='height:70px;font-size:12px;width:60px; background-color:<?php echo $bcol; ?>; color:#000000; word-wrap:break-word'><?php echo $row['confdate']; ?></div>
<div class='displaystyle' style='height:70px;font-size:12px; width:160px; background-color:<?php echo $bcol; ?>; color:#000000'><?php echo $row['proseedingurl']; ?> </a></div>
<div class='displaystyle' style='height:70px;font-size:12px; width:80px'><a style="text-decoration:none; color:#FFFFFF" href="editconfdet.php?title=<?php echo $row['title_manu']; ?>">Edit</a>/ <a style="text-decoration:none; color:#FFFFFF" href="deldetconf.php?title=<?php echo $row['title_manu']; ?>">Del</a></div>
</div>
<?php
}

}


else
{
?>
<form method="post" action="viewconfdata.php">
<div style="text-align:center; font-family:Calibri, Cambria"> Please Enter SAP ID<br>
<input type="number" name="txtsap" readonly="readonly" required="required" style="width:300px; height:35px" value=<?php echo $uname; ?>></div>
<div style="text-align:center; margin-top:20px"><input type="submit" name="submit" style="background-color:#FFCC00; height:30px; width:100px"></div>
</form>
<?php 
}
?>


</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>	
<div style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align: center; font-family:calibri; float:left; width:100%">Design & Developed by <br> UPES, Dehradun</div>
</body>
</html>
