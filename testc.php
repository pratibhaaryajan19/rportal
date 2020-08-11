<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
$qc=mysqli_query($conn,"select * from socs_conference where  YEAR(confdate)=YEAR(CURDATE())  AND  department in (select department from socs_loginnew where sap_id='$uname') ");
$cc=mysqli_num_rows($qc);
$tarc=mysqli_query($conn,"select conference from socs_targets where tenure =YEAR(CURDATE()) AND  department in (select department from socs_loginnew where sap_id='$uname') ");
$tarrsc=mysqli_fetch_array($tarc);
$pc=$tarrsc['conference'];?>

<!DOCTYPE html>
<html lang="en-US">
<body>


<center>
<div>
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

</div>
</center>