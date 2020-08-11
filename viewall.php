<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
$r=mysqli_query($conn,"select * from socs_loginnew where sap_id='$uname'");
$s=mysqli_fetch_array($r);
if($s[3]=="HOD")
{
	$q=mysqli_query($conn,"select * from socs_publication where department='$s[4]' /*AND year='YEAR(CURDATE())'*/ ");
	$c=mysqli_num_rows($q);

	$qc=mysqli_query($conn,"select * from socs_conference  where department='$s[4]'/*AND YEAR(confdate)='YEAR(CURDATE())'*/");
	$cc=mysqli_num_rows($qc);

	$qp=mysqli_query($conn,"select * from socs_patentdet where department='$s[4]'/*AND YEAR(pubdate)='YEAR(CURDATE())'*/");
	$cp=mysqli_num_rows($qp);

	$qb=mysqli_query($conn,"select * from socs_bookchap where department='$s[4]'/*AND YEAR(pubdate)=YEAR(CURDATE())*/");
	$cb=mysqli_num_rows($qb);
}
if($s[3]=="Dean" || $s[3]=="Assistant Dean")
{
	$q=mysqli_query($conn,"select * from socs_publication /*AND year='YEAR(CURDATE())'*/ ");
	$c=mysqli_num_rows($q);

	$qc=mysqli_query($conn,"select * from socs_conference /*AND YEAR(confdate)='YEAR(CURDATE())'*/");
	$cc=mysqli_num_rows($qc);

	$qp=mysqli_query($conn,"select * from socs_patentdet /*AND YEAR(pubdate)='YEAR(CURDATE())'*/");
	$cp=mysqli_num_rows($qp);

	$qb=mysqli_query($conn,"select * from socs_bookchap /*AND YEAR(pubdate)=YEAR(CURDATE())*/");
	$cb=mysqli_num_rows($qb);
}


$go=$s[3].".php";
if($s[3]=="Assistant Dean")
{
	$go= "dean.php";
}
?>

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
table{
	border: 5px solid silver;
	
	color:black;
	width:90%;
	cellspacing:10px;
	border-collapse: collapse;
}
td{
	border:5px white solid;
	
}
th{
	border:5px white solid;
	height:35px;
	background-color:grey;
}
tr:nth-child(even) {background-color: #E1F7BF}


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
<br><br>

<?php if($c>0){ ?>
<div style='text-align:center; font-family:Calibri, Cambria; font-size:22px; margin-bottom:10px'> Journals Details</div>
<center>
<table>
<tr>
<th class= "tab" id="a">S.no</th>
<th class= "tab" id="b">Title of the paper</th>
<th class= "tab" id="d">Journal Name</th>
<th class= "tab" id="c">Authors</th>
</tr>
<?php
}
$cnt=0;
if($c>0){
// output data of each row
while($row=mysqli_fetch_assoc($q)) {
	$cnt=$cnt+1;
echo "<tr><td>" .$cnt ."</td><td>" . $row['title_manu']. "</td><td>" . $row['journal'] . "</td><td>".$row['authors']."</td></tr>";
}
}
?>
</table>
</center>
<?php if($cc>0){ ?>
<div style='text-align:center; font-family:Calibri, Cambria; font-size:22px; margin-bottom:10px; padding-top:290px'> Conference Data</div>
<center><table>
<tr>
<th class= "tab" id="a">S.no</th>
<th class= "tab" id="b">Title of the paper</th>
<th class= "tab" id="d">Organiser</th>
<th class= "tab" id="c">Authors</th>
<th class= "tab" id="e">Conference date</th>

<?php
}
$cnt=0;
if($cc>0){
// output data of each row
while($rowc=mysqli_fetch_assoc($qc)) {
	$cnt=$cnt+1;
echo "<tr><td>" .$cnt ."</td><td>" . $rowc['title_manu']. "</td><td>" . $rowc['organiser'] . "</td><td>".$rowc['authors']."</td><td>".$rowc['confdate']."</td></tr>";
}
}
?>
</table>
</center>


<?php if($cp>0){ ?>
<div style='text-align:center; font-family:Calibri, Cambria; font-size:22px; margin-bottom:10px; padding-top:290px'> Patent Data</div>
<center><table>
<tr>
<th class= "tab" id="a">S.no</th>
<th class= "tab" id="b">Title of the paper</th>
<th class= "tab" id="d">Department</th>
<th class= "tab" id="c">Authors</th>
<th class= "tab" id="e">Publication date</th>
<th> Grant Date </th>

<?php
}
$cnt=0;
if($cp>0){
// output data of each row
while($rowp=mysqli_fetch_assoc($qp)) {
	$cnt=$cnt+1;
echo "<tr><td>" .$cnt ."</td><td>" . $rowp['title_invention']. "</td><td>" . $rowp['department'] . "</td><td>".$rowp['authors']."</td><td>".$rowp['pubdate']."</td><td>".$rowp['grantdate']."</td></tr>";
}
}
?>
</table>
</center>


<?php if($cb>0){ ?>
<div style='text-align:center; font-family:Calibri, Cambria; font-size:22px; margin-bottom:10px; padding-top:290px'> Book Chapters Data</div>
<center>
<table>
<tr>
<th class= "tab" id="a">S.no</th>
<th class= "tab" id="b">Title of the paper</th>
<th class= "tab" id="d">Conference name</th>
<th class= "tab" id="c">Authors</th>
<th class= "tab" id="e">Organiser</th>
<th> publiser</th>
<th>Conference Data</th>

<?php
}
$cnt=0;
if($cb>0){
// output data of each row
while($rowb=mysqli_fetch_assoc($qb)) {
	$cnt=$cnt+1;
echo "<tr><td>" .$cnt ."</td><td>" . $rowb['title_manu']. "</td><td>" . $rowb['conference'] . "</td><td>".$rowb['authors']."</td><td>".$rowb['organiser']."</td><td>".$rowb['publisher']."</td><td>".$rowb['confdate']."</td></tr>";
}
}
?>
</table>
</center>

<div>
<br><br><br>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align: center; font-family:calibri; float:left; width:100%">Design & Developed by <br> UPES, Dehradun</div>
</body>
</html>
