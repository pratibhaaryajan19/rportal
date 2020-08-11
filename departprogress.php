<?php 
error_reporting(0);
include 'connect.php';
session_start();
$uname=$_SESSION['username'];


?>
<html>
<head>
<style>
.container{
	height:60px;
	background-color:#3e3c3a;
	color:white;
	text-align:center;
	font-family:cooper Black;
	max-width:100%;
	font-size:20px;
	

}
#footer { 
            position: fixed; 
            padding: 10px 10px 0px 10px; 
            bottom: 0; 
            width:100%; 
            
        }
#form{
	background-color:#f2f2f2;
	height:20px;
	width:450px;
	
	text-align:center;
padding:10px;    
border-radius:12px;
}
.clk{
	background-color:#f2f2f2;
color:red;
font-family: cooper black;	
}		
</style>

<title>
</title>
</head>
<body>
<div  class="container"> 
<br>Department Target
</div>

<?php $query=mysqli_query($conn,"select designation from socs_loginnew where sap_id='$uname'");
$des=mysqli_fetch_array($query);
$go=$des[0].".php";
if($des[0]=="Assistant Dean")
{
	$go= "dean.php";
}
?>
<div class="container">
<div style="font-family:Calibri, Cambria; font-size:18px; margin-left:10px; padding-top:15px;"> <?php echo "<a href=\"$go\"  style=\"text-decoration:none; color:#CC0000\">Home</a>";?> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
</div>
<center>
<form id="form" method="POST" action="departprogress.php">

<select name="department">
<option value="">Select Department</option>
<option> Systemics </option>
<option> Informatics </option>
<option> Virtualization </option>
<option> Cybernetics </option>
<option> Computer Application </option>
</select>

<input type="submit"  name="submit" value="Show Report">
</form>
</center>

<div>
<br><br><br><br>
</div>

<div id="footer" style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align:center; font-family:calibri"><footer>Design & Developed by <br> UPES, Dehradun</footer></div>
</body>
</html>

<?php

include("connect.php");



if($_POST['submit']){
if(isset($_POST['department']))
{
	
	$depart=$_POST['department'];
	$uname=$_SESSION['username'];
	
	//patent information extraction
$q=mysqli_query($conn,"select * from socs_patentdet where YEAR(pubdate) = YEAR(CURDATE()) AND department ='$depart'");
$qdisplay=mysqli_fetch_array($q);
$c=mysqli_num_rows($q);
$tar=mysqli_query($conn,"select patent from socs_targets where tenure = YEAR(CURDATE()) AND department  ='$depart'");
$tarrs=mysqli_fetch_array($tar);
$p=$tarrs['patent'];

//book chapters information extraction
$qp=mysqli_query($conn,"select * from socs_bookchap where YEAR(pubdate) =YEAR(CURDATE()) AND  department  ='$depart' ");
$cp=mysqli_num_rows($qp);
$tarp=mysqli_query($conn,"select bookch from socs_targets  where tenure =YEAR(CURDATE()) AND department  ='$depart'");
$tarrsp=mysqli_fetch_array($tarp);
$pp=$tarrsp['bookch'];

//conference
$qc=mysqli_query($conn,"select * from socs_conference where YEAR(confdate)=YEAR(CURDATE())  AND department  ='$depart' ");
$cc=mysqli_num_rows($qc);
$tarc=mysqli_query($conn,"select socs_conference from targets where tenure=YEAR(CURDATE()) AND  department  ='$depart' ");
$tarrsc=mysqli_fetch_array($tarc);
$pc=$tarrsc['conference'];

//journals
$qj=mysqli_query($conn,"select * from socs_publication where year=YEAR(CURDATE()) AND department  ='$depart' ");
$cj=mysqli_num_rows($qj);
$tarj=mysqli_query($conn,"select scipub from socs_targets where tenure =YEAR(CURDATE()) AND  department ='$depart'");
$tarrsj=mysqli_fetch_array($tarj);
$pj=$tarrsj['scipub'];

	
	
	
echo"<pre>                                                                                    RESEARCH REPORT-YEAR OF DEPARTMENT $depart</pre><br>";

 echo"<center>
<table cellspacing=\"100px\">

<tr>
<td bgcolor=\"#D3D3D3\" id=\"pat\" >";


 echo"<h1>Patent</h1>


<center>";

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

echo"</center>";

echo"</td>";

echo"<td bgcolor=\"#D3D3D3\">";
echo"<h1>Book chapters</h1>
<center>";

if($cp==0 && $pp==0){
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
	['Book chapters', 'department'],
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
 echo"
</a>
</center>
</td>
</tr>

<tr>
<td bgcolor=\"#D3D3D3\">
<h1>Journals</h1>
<center>";

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
	['Journals', 'department'],
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

echo"
</center>
</td>

<td bgcolor=\"#D3D3D3\">

<h1>conference</h1>
<center>
";
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
	['Conference', 'department'],
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
}
}
?>