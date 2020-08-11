<?php
session_start();
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

if(!file_exists("creports"))
				mkdir("creports",0777);
				$uploaddir='creports/';
				$uploadfile = $uploaddir . basename($_FILES['rptlink']['name']);
				move_uploaded_file($_FILES['rptlink']['tmp_name'], $uploadfile);

$sql="update socs_publication set title_manu='$title_manu',department='$department',authors='$authors',affiliation='$affiliation',journal='$journal',publisher='$publisher',issn='$issn',indexing='$indexing',volume='$volume',issue='$issue',ppno='$ppno',doi='$doi',month='$month',year='$year',url_manu='$url_manu',rptlink='$rptlink' where title_manu='$title_manu'";
$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));

echo "alert(Added Successfully)";
echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=faculty.php\">";





?>