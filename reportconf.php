<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
//publication information extraction
$q=mysqli_query($conn,"select title_manu, authors from socs_conference where YEAR(confdate)=YEAR(CURDATE())  AND department in (select department from socs_loginnew where sap_id='$uname')");
$c=mysqli_num_rows($q);

?>

<!DOCTYPE html>
<html>
<head>


<title>e-shodh</title>
<style>
#footer { 
            position: fixed; 
            padding: 10px 10px 0px 10px; 
            bottom: 0; 
            width:100%; 
            
        }

table {
border-collapse: collapse;
width: 100%;
color: black;
font-family:calibri;
font-size: 25px;
text-align: left;
border:1 px solid black;


}
th {
background-color: #747474;
color: white;
}
tr:nth-child(even) {background-color: #f2f2f2}
.container{
	height:60px;
	background-color:#3e3c3a;
	color:white;
	text-align:center;
	font-family:cooper Black;
	width:100%;
	font-size:20px;
	
}
iframe{
	width:100%;
	height:500px;
}
button{ border-radius: 12px;
background-color:black;
color:white;
size:30px;
border:none;}
</style>
</head>
<body>
<div>
<div  class="container"> <br>CONFERENCE Report-YEAR[<?php echo date('Y'); ?>]</div><br>
<div style="font-family:Calibri, Cambria; font-size:12px; text-align:right; margin-right:20px"><button onclick="window.print()">Print</button> </div>
<br>
<br>
<div>
<iframe src="testc.php"></iframe>
</div>



<table>
<tr>
<th>s.no</th>
<th>Title</th>
<th>Authors</th>
</tr>
<?php
if($c==0){
	echo"<script> alert(\"No Results\")</script>";
	header('Refresh:0; URL = currentprogress.php');
}
$cnt=0;
if($c>0){
// output data of each row
while($qdisplay=mysqli_fetch_assoc($q)) {
	$cnt=$cnt+1;
echo "<tr><td>" .$cnt ."</td><td>" . $qdisplay['title_manu']. "</td><td>" . $qdisplay['authors'] . "</td></tr>";
}
}
?>

</table>
<div><br><br><br><br></div>

<footer> <div id="footer" style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align:center; font-family:calibri">Design & Developed by <br> UPES, Dehradun</div></footer>
</body>
</html>