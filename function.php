<?php
include("connect.php");
?>
<?php
error_reporting(0);
function secureData($data)
{
	//$data=mysqli_real_escape_string($conn,$data);
	$data=trim($data);
	$data=stripslashes($data);
	$data=htmlspecialchars($data);
	return $data;
}

function create_slug($string)
{
   $slug=preg_replace('/[^A-Za-z0-9-]+/', '-', trim(strtolower($string)));
   return $slug;
}
?>