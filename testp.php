<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
//publication information extraction
$qp=mysqli_query($conn,"select * from socs_publication where year =YEAR(CURDATE()) AND  department in (select department from socs_loginnew where sap_id='$uname') ");
$cp=mysqli_num_rows($qp);
$tarp=mysqli_query($conn,"select scopuspub,scipub from socs_targets where  tenure =YEAR(CURDATE()) AND department in(select department from socs_loginnew where sap_id='$uname')");
$tarrsp=mysqli_fetch_array($tarp);
$pp=$tarrsp['scopuspub']+$tarrsp['scipub'];?>

<!DOCTYPE html>
<html lang="en-US">
<body>
<center>
<div>
<?php
if($cp==0 && $pp==0){
	echo"Information incomplelte to draw the pie chart";
}
if($cp!=0 OR $pp!=0){

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
	['completed',$cp, ],
	['Pending',$pp-$cp,],
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
} ?>
</div>
</center></body></html>