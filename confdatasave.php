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
$conf=secureData($_REQUEST['txtconf']);
$pid=secureData($_REQUEST['txtpid']);
$organiser=secureData($_REQUEST['txtorg']);
$venue=secureData($_REQUEST['txtvenue']);
$confdate=secureData($_REQUEST['txtdate']);
$status=secureData($_REQUEST['txtstatus']);
$indexing=secureData($_REQUEST['txtindexing']);
$funding=secureData($_REQUEST['funding']);
$amt=secureData($_REQUEST['txtamt']);
$confurl=secureData($_REQUEST['txtconfurl']);
$purl=secureData($_REQUEST['txturl']);
$rptlink=secureData($_FILES['rptlink']['name']);
$query=mysqli_query($conn,"select designation from socs_loginnew where sap_id='$uname'");
$des=mysqli_fetch_array($query);
$go=$des[0].".php";
$query1=mysqli_query($conn,"select title_manu from socs_savconf where sap_id='$uname'");
$tit=mysqli_fetch_array($query1);
if(isset($_POST['subact']))
{
	if($tit[0]==$title_manu)
	{
		mysqli_query($conn,"delete from socs_savconf where sap_id='$uname'");
	}
	if(!file_exists("creportsconf"))
					mkdir("creportsconf",0777);
					$uploaddir='creportsconf/';
					$uploadfile = $uploaddir . basename($_FILES['rptlink']['name']);
					move_uploaded_file($_FILES['rptlink']['tmp_name'], $uploadfile);

	$sql="insert into socs_conference values ('$sapid','$title_manu','$department','$authors','$affiliation','$conf','$pid','$organiser','$venue','$confdate','$status','$indexing','$funding','$amt','$confurl','$purl','$rptlink')";
	$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));
	echo "Added Successfully";
}
if(isset($_POST['savact']))
{
	$sql="insert into socs_savconf values ('$sapid','$title_manu','$department','$authors','$affiliation','$conf','$pid','$organiser','$venue','$confdate','$status','$indexing','$funding','$amt','$confurl','$purl')";
	$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));
	echo "alert(Saved Successfully)";
}
echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=$go\">";





?>