<?php
error_reporting(0);
session_start();
$uname=$_SESSION['username'];
include("connect.php");
include("function.php");
$sapid=secureData($_SESSION['username']);
$title_manu=secureData($_REQUEST['txtmanuscript']);
$department=secureData($_REQUEST['seldept']);
$authors=secureData($_REQUEST['txtauthors']);
$affiliation=secureData($_REQUEST['txtaff']);
$book=secureData($_REQUEST['txtbook']);
$publisher=secureData($_REQUEST['txtpub']);
$isbn=secureData($_REQUEST['txtisbn']);
$pubdate=secureData($_REQUEST['txtdate']);
$puburl=secureData($_REQUEST['txturl']);
$rptlink=secureData($_FILES['rptlink']['name']);
$query=mysqli_query($conn,"select designation from socs_loginnew where sap_id='$uname'");
$des=mysqli_fetch_array($query);
$go=$des[0].".php";
$query1=mysqli_query($conn,"select title_manu from socs_savbookchap where sap_id='$uname'");
$tit=mysqli_fetch_array($query1);
if(isset($_POST['subact']))
{
	if($tit[0]==$title_manu)
	{
		mysqli_query($conn,"delete from socs_savbookchap where sap_id='$uname'");
	}
	if(!file_exists("creportsbook"))
					mkdir("creportsbook",0777);
					$uploaddir='creportsbook/';
					$uploadfile = $uploaddir . basename($_FILES['rptlink']['name']);
					move_uploaded_file($_FILES['rptlink']['tmp_name'], $uploadfile);

	$sql="insert into socs_bookchap values ('$sapid','$title_manu','$department','$authors','$affiliation','$book','$publisher','$isbn','$pubdate','$puburl','$rptlink')";
	$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));

	echo "Added Successfully";
}
if(isset($_POST['savact']))
{
	$sql="insert into socs_savbookchap values ('$sapid','$title_manu','$department','$authors','$affiliation','$book','$publisher','$isbn','$pubdate','$puburl')";
	$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));

	echo "Saved Successfully";
}
echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=$go\">";





?>