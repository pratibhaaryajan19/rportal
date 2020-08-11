<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");

$dept=$_REQUEST['txtdepartment']; 
$tenure= $_REQUEST['txtduration'];

$sql="select * from socs_publication where department='$dept' and year='$tenure' and indexing= 'SCOPUS'";
$res=mysqli_query($conn, $sql) or die();
$cnt=mysqli_num_rows($res);
echo $cnt;

$sql5="select * from socs_publication where department='$dept' and year='$tenure' and indexing= 'SCI'";
$res5=mysqli_query($conn, $sql5) or die();
$cnt5=mysqli_num_rows($res5);
echo $cnt5;

$sql1="select * from socs_conference where department='$dept' and confdate like '%$tenure%'";
$res1=mysqli_query($conn, $sql1) or die();
$cnt1=mysqli_num_rows($res1);
echo $cnt1;

$sql2="select * from socs_patentdet where department='$dept' and pubdate like '%$tenure%'";
$res2=mysqli_query($conn, $sql2) or die();
$cnt2=mysqli_num_rows($res2);
echo $cnt2;

$sql3="select * from socs_bookchap where department='$dept' and pubdate like '%$tenure%'";
$res3=mysqli_query($conn, $sql3) or die();
$cnt3=mysqli_num_rows($res3);
echo $cnt3;

$sql4="select * from socs_targets where department='$dept' and tenure='$tenure'";
$res4=mysqli_query($conn, $sql4) or die();
$row=mysqli_fetch_array($res4);

$scop =  $row['scopuspub'];
$sci = $row['scipub'];
$conf =  $row['conference'];
$pat =  $row['patent'];
$bch = $row['bookch'];

$scopf=$scop*10;
$scif=$sci*10;
$conff=$conf*10;
$patf=$pat*10;
$bchf=$bch*10;

$cntf=$cnt*10;
$cnt5f=$cnt5*10;
$cnt1f=$cnt1*10;
$cnt2f=$cnt2*10;
$cnt3f=$cnt3*10;
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
<div style="border:1px solid; width:600px; margin-left:auto; margin-right:auto; padding:10px; height:400px">
<div style="float:left; width:20%"> <b>Department</b></div>
<div style="float:left; margin-right:30%"><?php echo $dept; ?></div>  

<div style="float:left; width:15%"> <b>Year</b></div>
<div><?php echo $tenure; ?></div>

<div style="float:left; width:50%; margin-top:5%"> &nbsp;</div>
<div style="float:left; width:25%; margin-top:5%"> Target Values</div>
<div style="float:left; width:25%; margin-top:5%"> Achieved Values</div>
<div style="margin-top:5%; float:left; width:50%"> Number of SCOPUS Publications</div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $row['scopuspub']; ?></div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $cnt; ?></div>

<div style="margin-top:5%; float:left; width:50%"> Number of SCI Publications</div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $row['scipub']; ?></div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $cnt5; ?></div>

<div style="margin-top:5%; float:left; width:50%"> Number of Conferences</div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $row['conference']; ?></div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $cnt1; ?></div>

<div style="margin-top:5%; float:left; width:50%"> Number of Patents Published</div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $row['patent']; ?></div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $cnt2; ?></div>

<div style="margin-top:5%; float:left; width:50%"> Number of Book Chapters Published</div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $row['bookch']; ?></div>
<div style="float:left; width:25%; margin-top:5%"> <?php echo $cnt3; ?></div>

</div>


<div style="text-align:center; margin-top:5%; font-size:20px; font-weight:bold"> Graphical Display of Results</div>

<div style="position:relative; width:300px; height:400px; border:1px solid; margin-left:200px; float:left">
<img src="resources/pics/redbar.jpg" style="position:absolute; left:10; bottom:0" height=<?php echo $scopf; ?>>
<img src="resources/pics/greenbar.jpg" style="position:absolute; left:70; bottom:0" height=<?php echo $cntf; ?>>
</div>

<div style="position:relative; width:300px; height:400px; border:1px solid; margin-left:600px">
<img src="resources/pics/redbar.jpg" style="position:absolute; left:10; bottom:0" height=<?php echo $scif; ?>>
<img src="resources/pics/greenbar.jpg" style="position:absolute; left:70; bottom:0" height=<?php echo $cnt5f; ?>>
</div>


<br><br><br><br><br><br><br><br><br>	
<div style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align: center; font-family:calibri; float:left; width:100%">Design & Developed by <br> UPES, Dehradun</div>
</body>
</html>
