<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
include("function.php");
$confirmpass=secureData($_REQUEST['confirmpass']);
$newpass = secureData($_REQUEST['pass']);

$curpass=secureData($_REQUEST['curpass']);

$query=mysqli_query($conn,"select designation from socs_loginnew where sap_id='$uname'");
$des=mysqli_fetch_array($query);
$go=$des[0].".php";
	


if (count($_POST) > 0) {
    $result = mysqli_query($conn, "SELECT * from socs_loginnew WHERE sap_id='$uname'");
    $row = mysqli_fetch_array($result);
    if ($_POST["curpass"] == $row["password"]) {
        mysqli_query($conn, "UPDATE socs_loginnew set password='$newpass' WHERE sap_id='$uname'");
        echo "<script>alert(\"Password Changed\")</script>";
        header('Refresh:0; URL =changepass.php');
    } else{
        echo"<script>alert(\"Current password not valid\")</script>";
	    header('Refresh:0; URL =changepass.php');}
}
?>



