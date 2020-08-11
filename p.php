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
	width:250px;
	 
    position: absolute;
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
<div  class="container"> <br>RESEARCH REPORT</div>
<div  class="container">
<div style="font-family:Calibri, Cambria; font-size:18px; margin-left:10px; padding-top:15px;"> <?php echo "<a href=\"$go\"  style=\"text-decoration:none; color:#CC0000\">Home</a>";?> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
</div><br>

<?php $query=mysqli_query($conn,"select designation from socs_loginnew where sap_id='$uname'");
$des=mysqli_fetch_array($query);
$go=$des[0].".php";
if($des[0]=="Assistant Dean")
{
	$go= "dean.php";
}
?>


<form id="form" method="POST" action="p.php">
<select id="noo" name="year"  >
<option value="">Select any value</option>

<?php
$d=date("Y");
for($i=2003;$i<$d;$i++)
{
	
	echo "
			<option value=$i>$i</option>
		";
}
?>
</select>

<input type="submit"  name="submit" value="Show Report">
</form>
<div>
<br><br><br><br>
</div>

<div id="footer" style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align:center; font-family:calibri">Design & Developed by <br> UPES, Dehradun</div></footer>
</body>
</html>

<?php

include("connect.php");
session_start();


if($_POST['submit']){
if(isset($_POST['year']))
{
	$year=$_POST['year'];
	$uname=$_SESSION['username'];
	
	$prev=$year-1;
	$pprev=$year-2;

	//patent information extraction
	$qa=mysqli_query($conn,"select * from socs_patentdet where department in (select department from socs_loginnew where sap_id='$uname') and YEAR(pubdate)='$year'");
	$ca=mysqli_num_rows($qa);
	$qb=mysqli_query($conn,"select * from socs_patentdet where department in (select department from socs_loginnew where sap_id='$uname') and YEAR(pubdate)='$prev'");
	$cb=mysqli_num_rows($qb);
	$q=mysqli_query($conn,"select * from socs_patentdet where department in (select department from socs_loginnew where sap_id='$uname') and YEAR(pubdate)='$prev'");
	$c=mysqli_num_rows($q);
	

	//publication information extraction
	$qpa=mysqli_query($conn,"select * from socs_publication where department in (select department from socs_loginnew where sap_id='$uname') and year='$year' ");
	$cpa=mysqli_num_rows($qpa);
	
	$qpb=mysqli_query($conn,"select * from socs_publication where department in (select department from socs_loginnew where sap_id='$uname') and year='$prev' ");
	$cpb=mysqli_num_rows($qpb);
	$qp=mysqli_query($conn,"select * from socs_publication where department in (select department from socs_loginnew where sap_id='$uname') and year='$pprev' ");
	$cp=mysqli_num_rows($qp);
	
	//conference
	//mysqli_query($conn,"select * from socs_conference where YEAR(cast(confdate as Date) as Date)='$year' ");
	$qca=mysqli_query($conn,"select * from socs_conference where department in (select department from socs_loginnew where sap_id='$uname') and YEAR(confdate)='$year' ");
	$cca=mysqli_num_rows($qca);
	$qcb=mysqli_query($conn,"select * from socs_conference where department in (select department from socs_loginnew where sap_id='$uname') and YEAR(confdate)='$prev' ");
	$ccb=mysqli_num_rows($qcb);
	$qc=mysqli_query($conn,"select * from socs_conference where department in (select department from socs_loginnew where sap_id='$uname') and YEAR(confdate)='$pprev' ");
	$cc=mysqli_num_rows($qc);
	




echo"<br><pre>                                                                                                        RESEARCH REPORT-YEAR[$pprev:$year]</pre><br>";
 echo"<div id=\"chart_div\"  style=\"height:100px width:100px\"></div>";
 echo"<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>";
 echo"
 <script type=\"text/javascript\">
  
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawTrendlines);

function drawTrendlines() {
      
	  
	  
	    var data = google.visualization.arrayToDataTable([
          ['Year', 'Journals', 'Patents', 'conference','Journals','Patents','Conference'],
          
		  ['$pprev', $cp,$c,$cc,$cp,$c,$cc],
		  ['$prev', $cpb,$cb,$ccb,$cpb,$cb,$ccb],
		  ['$year', $cpa,$ca,$cca,$cpa,$ca,$cca],
          
		  
          
        ]);

    

      var options = {
          
            title: 'Department Research Performance',
            subtitle: '($pprev:$year)',
			hAxis:{title:'Years'},
			series: {3: {type: 'line'}, 
			         4: {type: 'line'},
					 5: {type: 'line'}},
			seriesType:'bars',
			colors:['#B1F752','#29AAFB','#FCDF61','#B08ECF','#FF5733','#7CC1C5' ]
			 
			
          
        };
      var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    }
  
	</script>

";

}
}
?>