<?php
session_start();
$uname=$_SESSION['username'];
include("connect.php");
include("function.php");
$sql="select * from socs_loginnew where sap_id='$uname'";
$res1=mysqli_query($conn, $sql);
$row=mysqli_fetch_array($res1);
$g=$row['designation'].".php";
if($row['designation']=="Assistant Dean")
{
	$g= "dean.php";
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>e-Shodh</title>
	 <link rel="stylesheet" type="text/css" href="resources/css/main.css">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	 <style>
	 .icon1{transition: transform 2s;}
	 .icon:hover{transform: rotate(180deg);}
	 
	 
	 @media only screen and (max-width: 600px) {
  
  .maintext{font-family:Cooper Black; font-size:20px; padding-left:60px; color:#FFFFFF}
 .subtext{font-family:Pristina; margin-left:50px; font-size:14px; color:#FFFFFF}
}

@media only screen and (min-width: 600px) {
  .maintext{font-family:Cooper Black; font-size:30px; padding-left:100px; color:#FFFFFF}
  .subtext{font-family:Pristina; margin-left:80px; font-size:18px; color:#FFFFFF}
  
  table{
	  border-collapse:collapse;
	  
	  width:50px;
	  cellspacing:100px;
	  
  }
  input{
	  border-radius:10px;
  }
  #input{
	  text-align:left;}
  
  #content{
	  text-align:left;}
	  td{height:50px;}
  
  
</style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link href="resources/css/style.css" rel="stylesheet" type="text/css" />


<script>
function validate() { 
                pass = form.pass.value; 
                confirmpass = form.confirmpass.value; 
                
					
			
				
				// If password not entered 
                if(pass == '') 
                    alert ("Please enter Password"); 
				
                  
                // If confirm password not entered 
                else if (confirmpass == '') 
                    alert ("Please enter confirm password"); 
                      
                // If Not same return False.     
                else if(pass!= confirmpass) { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                } 
  
                else{
					return true;
				}
            }
			

</script>


</head>
<body>

<div class="container">
<div style="margin-top:1px; "><span class="maintext">e-Shodh</span><br> 
<span class="subtext">University Research Portal</span></div>
</div>
<div class="container">
<div style="font-family:Calibri, Cambria; font-size:18px; margin-left:100px; padding-top:15px;"> <?php echo "<a href=\"$g\"  style=\"text-decoration:none; color:#CC0000\">Home</a>";?> | <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
</div>
<br><br>

<div style="float:left; width:29.5%; height:300px; border:0px solid">
 
<div class="subtext" style="padding-top:30px; color:#6666FF; padding-left:50px">Welcome to SCS Research Portal</div>
<div style="margin-left:40%"><img src="resources/pics/user.jpg" width="120" height="129"> </div>
<div style="text-align:center; margin-left:50px"> <?php echo ucwords(strtolower(($row['name'])));  ?> </div>
<div style="text-align:center; margin-left:50px"> <?php echo ucwords(strtolower(($row['designation'])));  ?> </div>
<div style="text-align:center; margin-left:50px"> <?php echo "Department of " . ucwords(strtolower(($row['department'])));  ?> </div>
<div style="text-align:center; margin-left:50px"> <?php echo  ucwords(($row['school']));  ?> </div>

</div>

<div style="width:70%; float:right">
<div style="border:0px solid; width:65%; margin-top:4%; margin-left:14%">

<div style="margin-left:200px; font-size:22px">Change Your Password</div>
<form  id="form" method="post" action="chpassvalid.php" onsubmit=" return validate()">
<div style="margin-left:200px"><table>
<tr><td id="content">Current Password:</td><td id="input"><input id="curpass" type="Password" name="curpass"  style="width:200px; height:30px; border:1px solid" required></td></tr>
<tr><td id="content">Enter New Password :<br>(Required) </td>
<td id="input"><input id="pass" type="Password" name="pass"  style="width:200px; height:30px; border:1px solid" required></td></tr>
<tr><td id="content">Confirm Password :</td><td id="input"> <input id="confirmpass" type="password" name="confirmpass"  style="width:200px; height:30px; border:1px solid" required></td></tr>
	 
	
			   
</table>
</div>
<div style="margin-left:210px; margin-top:30px"><input type="submit" value="Change Password" style="width:130px;height:30px; border:1px solid; background-color:#FF9900"></div>

</form>
		 </div></div>  
<!-- End fa icons -->	




</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align:center; font-family:calibri">Design & Developed by<br>UPES, Dehradun</div>
</body>
</html>
