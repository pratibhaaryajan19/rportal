<?php 
error_reporting(0);
include 'connect.php';
session_start();
$uname=$_SESSION['username'];?>
<html>
<head>
<script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
<script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>

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
td{
	border:1px solid black;
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
<div  class="container"> <br>COMPARISON REPORT</div>



<?php $query=mysqli_query($conn,"select designation from socs_loginnew where sap_id='$uname'");
$des=mysqli_fetch_array($query);
$go=$des[0].".php";
if($des[0]=="Assistant Dean")
{
	$go= "dean.php";
}
?>
<div  class="container"> 
<div style="font-family:Calibri, Cambria; font-size:18px; margin-left:10px; padding-top:15px;"> <?php echo "<a href=\"$go\"  style=\"text-decoration:none; color:#CC0000\">Home</a>";?> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
</div><br>

<form id="form" method="POST" action="comparison.php">
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
</div><center><table cellspacing="70px">
<tr>
<td><div id="chart-container" ></div></td>
<td><div id="chart" ></div></td>
</tr>
<tr>
<td><div id="chartc"></div></td>
<td><div id="chartb"></div></td></tr>
</table></center>
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
	$depart=$_POST['department'];
	
	
//informatics
	//patent information extraction
	$qi=mysqli_query($conn,"select * from socs_patentdet where department ='informatics' and YEAR(pubdate)='$year'");
	$ci=mysqli_num_rows($qi);
	//journals information extraction
	$qpi=mysqli_query($conn,"select * from socs_publication where department ='informatics' and year='$year' ");
	$cpi=mysqli_num_rows($qpi);
	//conference
	//mysqli_query($conn,"select * from socs_conference where YEAR(cast(confdate as Date) as Date)='$year' ");
	$qci=mysqli_query($conn,"select * from socs_conference where department ='informatics' and YEAR(confdate)='$year' ");
	$cci=mysqli_num_rows($qci);
	//book chapters
	$qbi=mysqli_query($conn,"select * from socs_bookchap where department ='informatics' and YEAR(pubdate)='$year' ");
	$cbi=mysqli_num_rows($qbi);
//systemics
	//patent information extraction
	$qs=mysqli_query($conn,"select * from socs_patentdet where department ='systemics' and YEAR(pubdate)='$year'");
	$cs=mysqli_num_rows($qs);
	//journals information extraction
	$qps=mysqli_query($conn,"select * from socs_publication where department ='systemics' and year='$year' ");
	$cps=mysqli_num_rows($qps);
	//conference
	$qcs=mysqli_query($conn,"select * from socs_conference where department ='systemics' and YEAR(confdate)='$year' ");
	$ccs=mysqli_num_rows($qcs);	
	//book chapters
	$qbs=mysqli_query($conn,"select * from socs_bookchap where department ='systemics' and YEAR(pubdate)='$year' ");
	$cbs=mysqli_num_rows($qbs);
//virtualization
	//patent information extraction
	$qv=mysqli_query($conn,"select * from socs_patentdet where department ='virtualization' and YEAR(pubdate)='$year'");
	$cv=mysqli_num_rows($qv);
	//journals information extraction
	$qpv=mysqli_query($conn,"select * from socs_publication where department ='virtualization' and year='$year' ");
	$cpv=mysqli_num_rows($qpv);
	//conference
	//mysqli_query($conn,"select * from socs_conference where YEAR(cast(confdate as Date) as Date)='$year' ");
	$qcv=mysqli_query($conn,"select * from socs_conference where department ='virtualization' and YEAR(confdate)='$year' ");
	$ccv=mysqli_num_rows($qcv);
	//book chapters
	$qbv=mysqli_query($conn,"select * from socs_bookchap where department ='virtualization' and YEAR(pubdate)='$year' ");
	$cbv=mysqli_num_rows($qbv);
	
//cybernetics
	//patent information extraction
	$qy=mysqli_query($conn,"select * from socs_patentdet where department ='cybernetics' and YEAR(pubdate)='$year'");
	$cy=mysqli_num_rows($qy);
	//journals information extraction
	$qpy=mysqli_query($conn,"select * from socs_publication where department ='cybernetics' and year='$year' ");
	$cpy=mysqli_num_rows($qpy);
	//conference
	//mysqli_query($conn,"select * from socs_conference where YEAR(cast(confdate as Date) as Date)='$year' ");
	$qcy=mysqli_query($conn,"select * from socs_conference where department ='cybernetics' and YEAR(confdate)='$year' ");
	$ccy=mysqli_num_rows($qcy);
	$qby=mysqli_query($conn,"select * from socs_bookchap where department ='cybernetics' and YEAR(pubdate)='$year' ");
	$cby=mysqli_num_rows($qby);
	
//computer application
	//patent information extraction
	$qa=mysqli_query($conn,"select * from socs_patentdet where department ='applications' and YEAR(pubdate)='$year'");
	$ca=mysqli_num_rows($qy);
	//journals information extraction
	$qpa=mysqli_query($conn,"select * from socs_publication where department ='applications' and year='$year' ");
	$cpa=mysqli_num_rows($qpa);
	//conference
	//mysqli_query($conn,"select * from socs_conference where YEAR(cast(confdate as Date) as Date)='$year' ");
	$qca=mysqli_query($conn,"select * from socs_conference where department ='applications' and YEAR(confdate)='$year' ");
	$cca=mysqli_num_rows($qca);
	//book chapters
	$qba=mysqli_query($conn,"select * from socs_bookchap where department ='applications' and YEAR(pubdate)='$year' ");
	$cba=mysqli_num_rows($qba);


//target
$qt=mysqli_query($conn,"select * from socs_targets where tenure='$year'");
$ct=mysqli_fetch_array($qt);
$total=$ct['scipub']+$ct['scopuspub']+$ct['conference']+$ct['patent']+$ct['bookch'];
echo $total;
$compj=$cps+$cpi+$cpv+$cpa+$cpy;	
$compp=$cs+$ci+$cy+$ca+$cv;
$compb=$cbs+$cbi+$cbv+$cby+$cba;
$compc=$ccs+$ccv+$cci+$ccy+$cca;
$pendj=$total-$compj;	
$pendp=$total-$compp;
$pendb=$total-$compb;
$pendc=$total-$compc;


if($pendp<0){$pendp=0;}
if($pendj<0){$pendj=0;}
if($pendb<0){$pendb=0;}
if($pendc<0){$pendc=0;}
echo"<br><pre>                                                                                                        RESEARCH REPORT-YEAR[$year]</pre><br>";
 
 
echo"
<script type=\"text/javascript\" src=\"js/fusioncharts.js\"></script>
<script type=\"text/javascript\">
FusionCharts.ready(function() {
  var topProductsChart = new FusionCharts({
    type: 'multilevelpie',
    renderAt: 'chart-container',
    id: \"myChart\",
    width: '400',
    height: '400',
    dataFormat: 'json',
    dataSource: {
      'chart': {
        'caption': \"Journals\",
        'subcaption': \"$year\",
        'showPlotBorder': \"1\",
        \"piefillalpha\": \"60\",
        \"pieborderthickness\": \"2\",
        \"piebordercolor\": \"#FFFFFF\",
        
        
        \"plottooltext\": \"\$value\",
        \"theme\": \"fusion\"
      },
      'category': [{
        \"label\": \" \",
        \"color\": \"#ffffff\",
		\"tooltext\": \"target-$total \",
		\"value\":\" $total\",
        
        'category': [{
          \"label\": \"completed\",
          \"color\": \"#FFC300\",
          \"value\": \"$compj\",
          \"tooltext\": \"completed publications-\$value,(\$percentValue)\",
          'category': [{
            \"label\": \"S\",
            \"color\": \"#CF9CF9\",
            \"value\": \"$cps\",
			\"tooltext\": \"systemics-\$value\",
          }, {
            \"label\": \"I\",
            \"color\": \"#F9F98A\",
            \"value\": \"$cpi\",
			\"tooltext\": \"informatics-\$value\",
          }, {
            \"label\": \"C\",
            \"color\": \"#A0FA18 \",
            \"value\": \"$cpy\",
			\"tooltext\": \"cybernetics-\$value\",
          }, {
            \"label\": \"CA\",
            \"color\": \"#F9BC9C \",
            \"value\": \"$cpa\",
			\"tooltext\": \"computer application-\$value\",
          },{
            \"label\": \"V\",
            \"color\": \"#8AF9F5\",
            \"value\": \"$cpv\",
			\"tooltext\": \"virtulization-\$value\",
          }]
        }, {
          \"label\": \"  \",
          \"color\": \"#33ccff\",
          \"value\": \"$pendj\",
		  
          
          
        
        }]
      }]
    }
  });
topProductsChart.render();
});

//patent
FusionCharts.ready(function() {
  var topChart = new FusionCharts({
    type: 'multilevelpie',
    renderAt: 'chart',
    id: \"myChart\",
    width: '400',
    height: '400',
    dataFormat: 'json',
    dataSource: {
      'chart': {
        'caption': \"Patent\",
        'subcaption': \"$year\",
        'showPlotBorder': \"1\",
        \"piefillalpha\": \"60\",
        \"pieborderthickness\": \"2\",
        \"piebordercolor\": \"#FFFFFF\",
        
        
        \"plottooltext\": \"\$value\",
        \"theme\": \"fusion\"
      },
      'category': [{
        \"label\": \" \",
        \"color\": \"#ffffff\",
		\"tooltext\": \"target-$total \",
		\"value\":\" $total\",
        
        'category': [{
          \"label\": \"completed\",
          \"color\": \"#FFC300\",
          \"value\": \"$compp\",
          \"tooltext\": \"completed publications-\$value,(\$percentValue)\",
          'category': [{
            \"label\": \"S\",
            \"color\": \"#CF9CF9\",
            \"value\": \"$cs\",
			\"tooltext\": \"systemics-\$value\",

          }, {
            \"label\": \"I\",
            \"color\": \"#F9F98A\",
            \"value\": \"$ci\",
			\"tooltext\": \"informatics-\$value\",
          }, {
            \"label\": \"C\",
            \"color\": \"#A0FA18 \",
            \"value\": \"$cy\",
			\"tooltext\": \"cybernetics-\$value\",
          }, {
            \"label\": \"CA\",
            \"color\": \"#F9BC9C \",
            \"value\": \"$ca\",
			\"tooltext\": \"Computer Applications-\$value\",
          },{
            \"label\": \"V\",
            \"color\": \"#8AF9F5\",
            \"value\": \"$cv\",
			\"tooltext\": \"Virtulization-\$value\",
          }]
        }, {
          \"label\": \"  \",
          \"color\": \"#33ccff\",
          \"value\": \"$pendp\",
		  
          
          
        
        }]
      }]
    }
  });
topChart.render();
});


FusionCharts.ready(function() {
  var topChartc = new FusionCharts({
    type: 'multilevelpie',
    renderAt: 'chartc',
    id: \"myChart\",
    width: '400',
    height: '400',
    dataFormat: 'json',
    dataSource: {
      'chart': {
        'caption': \"conference\",
        'subcaption': \"$year\",
        'showPlotBorder': \"1\",
        \"piefillalpha\": \"60\",
        \"pieborderthickness\": \"2\",
        \"piebordercolor\": \"#FFFFFF\",
        
        
        \"plottooltext\": \"\$value\",
        \"theme\": \"fusion\"
      },
      'category': [{
        \"label\": \" \",
        \"color\": \"#ffffff\",
		\"tooltext\": \"target-$total \",
		\"value\":\" $total\",
        
        'category': [{
          \"label\": \"completed\",
          \"color\": \"#FFC300\",
          \"value\": \"$compc\",
          \"tooltext\": \"completed publications-\$value,(\$percentValue)\",
          'category': [{
            \"label\": \"S\",
            \"color\": \"#CF9CF9 \",
            \"value\": \"$ccs\",
			\"tooltext\": \"systemics-\$value\",
          }, {
            \"label\": \"I\",
            \"color\": \"#F9F98A\",
            \"value\": \"$cci\",
			\"tooltext\": \"informatics-\$value\",
          }, {
            \"label\": \"C\",
            \"color\": \"#A0FA18\",
            \"value\": \"$ccy\",
			\"tooltext\": \"cybernetics-\$value\",
          }, {
            \"label\": \"CA<br>\",
            \"color\": \"#F9BC9C \",
            \"value\": \"$cca\",
			\"tooltext\": \"computer application-\$value\",
          },{
            \"label\": \"V\",
            \"color\": \"#8AF9F5\",
            \"value\": \"$ccv\",
			\"tooltext\": \"virtulization-\$value\",
          }]
        }, {
          \"label\": \"  \",
          \"color\": \"#33ccff\",
          \"value\": \"$pendc\",
		  
          
          
        
        }]
      }]
    }
  });
topChartc.render();
});


FusionCharts.ready(function() {
  var topChartb = new FusionCharts({
    type: 'multilevelpie',
    renderAt: 'chartb',
    id: \"myChart\",
    width: '400',
    height: '400',
    dataFormat: 'json',
    dataSource: {
      'chart': {
        'caption': \"Book chapters\",
        'subcaption': \"$year\",
        'showPlotBorder': \"1\",
        \"piefillalpha\": \"60\",
        \"pieborderthickness\": \"2\",
        \"piebordercolor\": \"#FFFFFF\",
        
        
        \"plottooltext\": \"\$value\",
        \"theme\": \"fusion\"
      },
      'category': [{
        \"label\": \" \",
        \"color\": \"#ffffff\",
		\"tooltext\": \"target-$total \",
		\"value\":\" $total\",
        
        'category': [{
          \"label\": \"completed\",
          \"color\": \"#FFC300\",
          \"value\": \"$compb\",
          \"tooltext\": \"completed publications-\$value,(\$percentValue)\",
          'category': [{
            \"label\": \"S\",
            \"color\": \"#CF9CF9\",
            \"value\": \"$cbs\",
			\"tooltext\": \"systemics-\$value\",
          }, {
            \"label\": \"I\",
            \"color\": \"#F9F98A\",
            \"value\": \"$cbi\",
			\"tooltext\": \"informatics-\$value\",
          }, {
            \"label\": \"C\",
            \"color\": \"#A0FA18\",
            \"value\": \"$cby\",
			\"tooltext\": \"cybernetics-\$value\",
          }, {
            \"label\": \"CA\",
            \"color\": \"#F9BC9C\",
            \"value\": \"$cba\",
			\"tooltext\": \"computer application-\$value\",
          },{
            \"label\": \"V\",
            \"color\": \"#8AF9F5\",
            \"value\": \"$cbv\",
			\"tooltext\": \"virtulization-\$value\",
          }]
        }, {
          \"label\": \"  \",
          \"color\": \"#33ccff\",
          \"value\": \"$pendb\",
		  
          
          
        
        }]
      }]
    }
  });
topChartb.render();
});




</script>
";
 
}
}
?>