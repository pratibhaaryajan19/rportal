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
$conf=secureData($_REQUEST['txtconf']);
$publisher=secureData($_REQUEST['txtpid']);
$organiser=secureData($_REQUEST['txtorg']);
$venue=secureData($_REQUEST['txtvenue']);
$cdate=secureData($_REQUEST['txtdate']);
$status=secureData($_REQUEST['txtstatus']);
$indexing=secureData($_REQUEST['txtindexing']);
$funding=secureData($_REQUEST['funding']);
$amt=secureData($_REQUEST['txtamt']);
$confurl=secureData($_REQUEST['txtconfurl']);
$url_manu=secureData($_REQUEST['txturl']);
$rptlink=secureData($_FILES['rptlink']['name']);

if(!file_exists("creports"))
				mkdir("creports",0777);
				$uploaddir='creports/';
				$uploadfile = $uploaddir . basename($_FILES['rptlink']['name']);
				move_uploaded_file($_FILES['rptlink']['tmp_name'], $uploadfile);

$sql="update socs_conference set title_manu='$title_manu',department='$department',authors='$authors',affiliation='$affiliation',conference='$conf',publisher='$publisher',organiser='$organiser',venue='$venue',confdate='$cdate',status='$status',indexing='$indexing',funding='$funding',amount='$amt',confwebsite='$confurl',proseedingurl='$url_manu',rptlink='$rptlink' where title_manu='$title_manu'";
$res=mysqli_query($conn, $sql) or die(mysqli_error($conn));

echo "Updated Successfully";

echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=faculty.php\">";




?>