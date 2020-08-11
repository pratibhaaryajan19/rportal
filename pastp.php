
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
		#chart_div{
			margin-top:100px;
		}
		table{
			border:0px solid black;
		}
</style>
</head>
<body>
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
	//mysqli_query($conn,"select * from conference where YEAR(cast(confdate as Date) as Date)='$year' ");
	$qca=mysqli_query($conn,"select * from socs_conference where department in (select department from socs_loginnew where sap_id='$uname') and YEAR(confdate)='$year' ");
	$cca=mysqli_num_rows($qca);
	$qcb=mysqli_query($conn,"select * from socs_conference where department in (select department from socs_loginnew where sap_id='$uname') and YEAR(confdate)='$prev' ");
	$ccb=mysqli_num_rows($qcb);
	$qc=mysqli_query($conn,"select * from socs_conference where department in (select department from socs_loginnew where sap_id='$uname') and YEAR(confdate)='$pprev' ");
	$cc=mysqli_num_rows($qc);
	


echo"<div  class=\"container\"><br>RESEARCH REPORT-YEAR[$pprev:$year]</div><br>";


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
<div>
<br><br><br><br>
</div>

<div id="footer" style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align:center; font-family:calibri">Design & Developed by <br> UPES, Dehradun</div></footer>
</body>
</html>
