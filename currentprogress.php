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
//patent information extraction
$q=mysqli_query($conn,"select * from socs_patentdet where YEAR(pubdate) = YEAR(CURDATE()) AND department in (select department from socs_loginnew where sap_id='$uname')");
$qdisplay=mysqli_fetch_array($q);
$c=mysqli_num_rows($q);
$tar=mysqli_query($conn,"select patent from socs_targets where tenure = YEAR((CURDATE())) AND department in (select department from socs_loginnew where sap_id='$uname')");
$tarrs=mysqli_fetch_array($tar);
$p=$tarrs['patent'];

//book chapters information extraction
$qp=mysqli_query($conn,"select * from socs_bookchap where YEAR(pubdate) =YEAR(CURDATE()) AND  department in (select department from socs_loginnew where sap_id='$uname') ");
$cp=mysqli_num_rows($qp);
$tarp=mysqli_query($conn,"select bookch from socs_targets  where tenure =YEAR(CURDATE()) AND department in(select department from socs_loginnew where sap_id='$uname')");
$tarrsp=mysqli_fetch_array($tarp);
$pp=$tarrsp['bookch'];

//conference
$qc=mysqli_query($conn,"select * from socs_conference where YEAR(confdate)=YEAR(CURDATE())  AND department in (select department from socs_loginnew where sap_id='$uname') ");
$cc=mysqli_num_rows($qc);
$tarc=mysqli_query($conn,"select socs_conference from targets where tenure=YEAR(CURDATE()) AND  department in (select department from socs_loginnew where sap_id='$uname') ");
$tarrsc=mysqli_fetch_array($tarc);
$pc=$tarrsc['conference'];

//journals
$qj=mysqli_query($conn,"select * from socs_publication where year=YEAR(CURDATE()) AND department in (select department from socs_loginnew where sap_id='$uname') ");
$cj=mysqli_num_rows($qj);
$tarj=mysqli_query($conn,"select scipub,scopuspub from socs_targets where tenure =YEAR(CURDATE()) AND  department in(select department from socs_loginnew where sap_id='$uname')");
$tarrsj=mysqli_fetch_array($tarj);
$pj=$tarrsj['scipub']+$tarrsj['scopuspub'];

?>


<!DOCTYPE html>
<html lang="en-US">
<head>
<style>

	 @media only screen and (max-width: 600px) {
  
  .maintext{font-family:Cooper Black; font-size:30px; padding-left:60px}
 .subtext{font-family:Pristina; margin-left:50px; font-size:16px; color:#990000}
}

@media only screen and (min-width: 600px) {
  .maintext{font-family:Cooper Black; font-size:60px; padding-left:200px}
  .subtext{font-family:Pristina; margin-left:120px; font-size:22px; color:#990000;}
}


table{
	 
	 table-layout: auto;
	 border:0px black solid;
	 
	
   }
#footer { 
            position: fixed; 
            padding: 10px 10px 0px 10px; 
            bottom: 0; 
            width:100%; 
            
        } 
.container{
	height:60px;
	background-color:#3e3c3a;
	color:white;
	text-align:center;
	font-family:cooper Black;
	max-width:100%;
	font-size:20px;
	

}
td{
	border:0px  black solid;
	text-align:center;
}
.clk{
	background-color:#f2f2f2;
color:red;
font-family: cooper black;	
}

</style>

</head>

<body>

<div  class="container"> <br>RESEARCH REPORT-YEAR[<?php echo date('Y'); ?>]</div>
<div class="container">
<div style="font-family:Calibri, Cambria; font-size:18px; margin-left:10px; padding-top:15px;"> <?php echo "<a href=\"$go\"  style=\"text-decoration:none; color:#CC0000\">Home</a>";?> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
</div>
<div class="clk"><p id="click"><marquee>Click on  the charts for Detailed report</marquee></p></div>
<center>
<table cellspacing="100px">

<tr>
<td bgcolor="#D3D3D3" id="pat" >

<h1>Patent</h1>


<center>
<a href="reportpat.php">
<?php
if($c==0 && $p==0){
	echo"Information incomplelte to draw the pie chart";
}
if($c!=0 OR $p!=0){
echo "
<div id=\"piechartpatent\"></div>

<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>
<script type=\"text/javascript\">

// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChartpatent);


// Draw the chart and set the chart values
function drawChartpatent() {
	var data = google.visualization.arrayToDataTable([
	['Patent', 'department'],
	['completed',$c],
	['Pending',$p-$c],
	]);

// Optional; add a title and set the width and height of the chart
	var options = {'title':'Target yet to achieve for the current year', 'width':550, 'height':400,is3D:true,colors:['#A6F62A' ,'silver'],
	};

// Display the chart inside the <div> element with id=piechart
	var chart = new google.visualization.PieChart(document.getElementById('piechartpatent'));
	chart.draw(data, options);
	}
</script>
";
}
?>

</a></center>

</td>

<td bgcolor="#D3D3D3">
<h1>Book chapters</h1>
<center><a href="reportbook.php" alt="">
<?php
if($c0==0 && $pp==0){
	echo"Information incomplelte to draw the pie chart";
}
if($cp!=0 OR $pp!=0){
echo "
<div id=\"piechartpub\"></div>

<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>
<script type=\"text/javascript\">

// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChartpub);


// Draw the chart and set the chart values
function drawChartpub() {
	var data = google.visualization.arrayToDataTable([
	['Patent', 'department'],
	['completed',$cp],
	['Pending',$pp-$cp],
	]);

// Optional; add a title and set the width and height of the chart
	var options = {'title':'Target yet to acheive for the current year', 'width':550, 'height':400,is3D:true,colors:['#A6F62A' ,'silver'] };

// Display the chart inside the <div> element with id=piechart
	var chart = new google.visualization.PieChart(document.getElementById('piechartpub'));
	chart.draw(data, options);
	}
</script>
";
}
 ?>
</a>
</center>
</td>
</tr>

<tr>
<td bgcolor="#D3D3D3">
<h1>Journals</h1>
<center><a href="reportjou.php" alt="">
<?php
if($cj==0 && $pj==0){
	echo"Information incomplelte to draw the pie chart";
}
if($cj!=0 OR $pj!=0){
echo "
<div id=\"piechartjournal\"></div>

<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>
<script type=\"text/javascript\">

// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChartjournal);


// Draw the chart and set the chart values
function drawChartjournal() {
	var data = google.visualization.arrayToDataTable([
	['Patent', 'department'],
	['completed',$cj],
	['Pending',$pj-$cj],
	]);

// Optional; add a title and set the width and height of the chart
	var options = {'title':'Target yet to achieve for the current year', 'width':550, 'height':400,is3D:true,colors:['#A6F62A' ,'silver'] };

// Display the chart inside the <div> element with id=piechart
	var chart = new google.visualization.PieChart(document.getElementById('piechartjournal'));
	chart.draw(data, options);
	}
</script>
";
}
?></a>
</center>
</td>

<td bgcolor="#D3D3D3">

<h1>conference</h1>
<center>
<a href="reportconf.php">
<?php
if($cc==0 && $pc==0){
	echo"Information incomplelte to draw the pie chart";
}
if($cc!=0 OR $pc!=0){

echo "
<div id=\"piechartconf\"></div>

<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>
<script type=\"text/javascript\">

// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChartconf);


// Draw the chart and set the chart values
function drawChartconf() {
	var data = google.visualization.arrayToDataTable([
	['Patent', 'department'],
	['completed',$cc, ],
	['Pending',$pc-$cc,],
	]);

// Optional; add a title and set the width and height of the chart
	var options = {'title':'Target yet to achieve for the current year', 'width':550, 'height':400,is3D:true,
	colors:['#A6F62A' ,'silver'] 
				   };

// Display the chart inside the <div> element with id=piechartconf
	var chart = new google.visualization.PieChart(document.getElementById('piechartconf'));
	chart.draw(data, options);
	}
</script>
";
}
?>

</a></center>
</td>
</tr>


</table>
</center>
<div>
<br><br><br><br>
</div>

<div id="footer" style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align:center; font-family:calibri">Design & Developed by <br> UPES, Dehradun</div></footer>
</body>
</html>
