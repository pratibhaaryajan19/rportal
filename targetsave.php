<?php
session_start();
error_reporting(0);
$uname=$_SESSION['username'];
include("connect.php");
include("function.php");
$dept=secureData($_REQUEST['txtdepartment']);
$tenure=secureData($_REQUEST['txtduration']);
$scopus=secureData($_REQUEST['txtscopus']);
$sci=secureData($_REQUEST['txtsci']);
$conf=secureData($_REQUEST['txtconf']);
$patent=secureData($_REQUEST['txtpatent']);
$bch=secureData($_REQUEST['txtbch']);

$sql="insert into socs_targets values ('$dept','$tenure','$scopus','$sci','$conf','$patent','$bch')";

mysqli_query($conn, $sql) or die();
echo "Target Saved Successfully";
echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=schtarget.php\">";

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
