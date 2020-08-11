<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
include("function.php");
$sapid=secureData($_SESSION['username']);
$title_manu=secureData($_REQUEST['txtmanuscript']);
$department=secureData($_REQUEST['seldept']);
$authors=secureData($_REQUEST['txtauthors']);
$affiliation=secureData($_REQUEST['txtaff']);
$journal=secureData($_REQUEST['txtjournal']);
$publisher=secureData($_REQUEST['txtpub']);
$issn=secureData($_REQUEST['txtissn']);
$indexing=secureData($_REQUEST['txtindex']);
$volume=secureData($_REQUEST['txtvol']);
$issue=secureData($_REQUEST['txtissue']);
$ppno=secureData($_REQUEST['txtpg']);
$doi=secureData($_REQUEST['txtdoi']);
$month=secureData($_REQUEST['txtmonth']);
$year=secureData($_REQUEST['txtyear']);
$url_manu=secureData($_REQUEST['txturl']);
$rptlink=secureData($_FILES['rptlink']['name']);
$query1=mysqli_query($conn,"select title_manu from socs_savepub where sap_id='$uname'");
$tit=mysqli_fetch_array($query1);
$query=mysqli_query($conn,"select designation from socs_loginnew where sap_id='$uname'");
$des=mysqli_fetch_array($query);
$go=$des[0].".php";

if(isset($_POST['subact']))
{
	if($tit[0]==$title_manu)
	{
		mysqli_query($conn,"delete from socs_savepub where sap_id='$uname'");
	}
	if(!file_exists("creports"))
					mkdir("creports",0777);
					$uploaddir='creports/';
					$uploadfile = $uploaddir . basename($_FILES['rptlink']['name']);
					move_uploaded_file($_FILES['rptlink']['tmp_name'], $uploadfile);

	$sql="insert into socs_publication values ('$sapid','$title_manu','$department','$authors','$affiliation','$journal','$publisher','$issn','$indexing','$volume','$issue','$ppno','$doi','$month','$year','$url_manu','$rptlink')";
	$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));

	echo "Added Successfully";
}
if(isset($_POST['savact']))
{
	$sql="insert into socs_savepub values ('$sapid','$title_manu','$department','$authors','$affiliation','$journal','$publisher','$issn','$indexing','$volume','$issue','$ppno','$doi','$month','$year','$url_manu')";
	$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));

	echo "Saved Successfully";
}
echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=$go\">";





?>