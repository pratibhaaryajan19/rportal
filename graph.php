<?php 
include("connect.php");
function drawGraph($c,$p,$year)
{


	if($c!=0){
		if($p-$c>=0)
		{
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
			var options = {'title':'Target yet to achieve for the selected year: $year', 'width':550, 'height':400};

		// Display the chart inside the <div> element with id=piechart
			var chart = new google.visualization.PieChart(document.getElementById('piechartpatent'));
			chart.draw(data, options);
			}
		</script>
		";
		}
		else if($p-$c<0)
		{
			echo "
			<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>
			<script type=\"text/javascript\">
			google.charts.load(\"current\", {packages:[\"corechart\"]});
			google.charts.setOnLoadCallback(dpatent);
			function dpatent() {
			  var data = google.visualization.arrayToDataTable([
				[\"Element\", \"Value\", { role: \"style\" } ],
				[\"Target\", $p, \"#b87333\"],
				[\"Completed\", $c, \"silver\"],
			  ]);

			  var view = new google.visualization.DataView(data);
			  view.setColumns([0, 1,
							   { calc: \"stringify\",
								 sourceColumn: 1,
								 type: \"string\",
								 role: \"annotation\" },
							   2]);

			  var options = {
				title: \"Target has been achieved for selected year: $year\",
				width: 550,
				height: 400,
				bar: {groupWidth: \"45%\"},
				legend: { position: \"none\" },
			  };
			  var chart = new google.visualization.BarChart(document.getElementById(\"barchart_valuespatent\"));
			  chart.draw(view, options);
		  }
		  </script>
		<div id=\"barchart_valuespatent\" style=\"width: 90px; height: 300px;\"></div>
		  ";
		  
		}
	}
	else
		echo "Nothing has been done to this category in selected year: ".$year;

}