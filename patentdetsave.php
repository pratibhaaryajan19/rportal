<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
include("function.php");
$sapid=secureData($_SESSION['username']);
$title_invent=secureData($_REQUEST['txtinvention']);
$department=secureData($_REQUEST['seldept']);
$authors=secureData($_REQUEST['txtauthors']);
$affiliation=secureData($_REQUEST['txtaff']);
$brexp=secureData($_REQUEST['txtexp']);
$pubdate=secureData($_REQUEST['txtdate']);
$gdate=secureData($_REQUEST['txtgrdate']);
$puburl=secureData($_REQUEST['txturl']);
$query=mysqli_query($conn,"select designation from socs_loginnew where sap_id='$uname'");
$des=mysqli_fetch_array($query);
$go=$des[0].".php";
$query1=mysqli_query($conn,"select title_invention from socs_savpat where sap_id='$uname'");
$tit=mysqli_fetch_array($query1);
if($gdate=="")
{
$gdate="NA";
}
if(isset($_POST['subact']))
{
	if($tit[0]==$title_invent)
	{
		mysqli_query($conn,"delete from socs_savpat where sap_id='$uname'");
	}
	$sql="insert into socs_patentdet values ('$sapid','$title_invent','$department','$authors','$affiliation','$brexp','$pubdate','$gdate','$puburl')";
	$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));

	echo "Added Successfully";
}
if(isset($_POST['savact']))
{
	$sql="insert into socs_savpat values ('$sapid','$title_invent','$department','$authors','$affiliation','$brexp','$pubdate','$gdate','$puburl')";
	$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));

	echo "Saved Successfully";
}

echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=$go\">";





?>