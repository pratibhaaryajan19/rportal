<?php
session_start();
error_reporting(0);
$uname=$_REQUEST['uname'];
$upwd=$_REQUEST['upass'];

include("connect.php");
$sql="select * from socs_loginnew where sap_id='$uname' and password='$upwd'";
$res=mysqli_query($conn, $sql);
if (mysqli_num_rows($res) > 0)
{
	$row=mysqli_fetch_array($res);
	$utyp=$row['designation'];
	$_SESSION['username']=$uname;
	
	echo "<script language='javascript'> alert('Login Successful')</script>";
	if($utyp=="Faculty")
	echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=faculty.php\">";
	else if($utyp=="HOD")
	echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=hod.php\">";
	else if($utyp=="Dean" || $utyp=="Assistant Dean")
	echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=dean.php\">";
	/*else if($utyp=="Assistant Dean")
	echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=admin.php\">";*/
	
}

else
{
	echo mysqli_error($conn);
	echo "<script language='javascript'> alert('Invalid Username or Password')</script>";
	//echo "<META HTTP-EQUIV=\"refresh\" content=\"0;URL=index.html\">";
}
?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>e-Shodh-Login</title>
</head>

<body>
</body>
</html>
