<?php
session_start();

$uname=$_SESSION['username'];
include("connect.php");
$sql="select * from socs_loginnew where sap_id='$uname'";
$res1=mysqli_query($conn, $sql);
$row=mysqli_fetch_array($res1);

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
  
  .maintext{font-family:Cooper Black; font-size:30px; padding-left:60px}
 .subtext{font-family:Pristina; margin-left:50px; font-size:16px; color:#990000}
}

@media only screen and (min-width: 600px) {
  .maintext{font-family:Cooper Black; font-size:60px; padding-left:200px}
  .subtext{font-family:Pristina; margin-left:120px; font-size:22px; color:#990000;}
}

  
        #footer { 
            position: fixed; 
            padding: 0px 5px 0px 0px; 
            bottom: 0px; 
			margin-top:550px;
            width: 100%; 
            
        } 
		
#department{
	text-align:center;
	background-color:#38777B  ;
	color:white;
	height:32px;
	width:100%;
	font-family:cooper black;
	font-size:30px;
	border-radius:10px;
	padding:10px;
}

    
</style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link href="resources/css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div class="container">
<div style="font-family:Calibri, Cambria; font-size:18px; margin-left:1300px; padding-top:15px;"> <a href="logout.php" style="text-decoration:none; color:#CC0000">Logout</a> </div>
</div>

<div style="float:left; width:29.5%; height:300px; border:0px solid">
 
<div class="subtext" style="padding-top:30px">Welcome to SCS Research Portal</div>
<div style="margin-left:40%"><img src="resources/pics/user.jpg" width="120" height="129"> </div>
<div style="text-align:center; margin-left:50px"> <?php echo ucwords(strtolower(($row['name'])));  ?> </div>
<div style="text-align:center; margin-left:50px"> <?php echo ucwords(strtolower(($row['designation'])));  ?> </div>
<div style="text-align:center; margin-left:50px"> <?php echo "Department of " . ucwords(strtolower(($row['department'])));  ?> </div>
<div style="text-align:center; margin-left:50px"> <?php echo  ucwords(($row['school']));  ?> </div>

</div>

<div style="width:70%; float:right">
<div style="border:0px solid; width:65%; margin-top:4%; margin-left:14%">


        <div class="home-block clearfix">
          <div class="features clearfix">
           <div class="fbox">
            <a href="publication.php"><div class="fbox-head">Enter Publication Details<br /><br /></div>         
            <img src="resources/pics/book.jpg" alt=""  /></a>
            <div class="fbox-text">Papers published in SCOPUS & SCIE, ESCI, SCI Journals </div>
           </div>
		   
		   <div class="fbox">
            <a href="conference.php"><div class="fbox-head">Enter Conference Details<br /><br /></div>           
            <img src="resources/pics/bridge.png" alt="" /></a>
            <div class="fbox-text">Papers Presented in International Conferences </div>
           </div>
           <div class="fbox">
            <a href="bookchap.php"><div class="fbox-head">Enter Book Chapters</div>           
            <br><img src="resources/pics/chapter.jpg" alt="" /></a>
            <div class="fbox-text">Details of Book Chapters Published</div>
           </div>
		   
		   
			   
	      </div>
</div>


<div class="home-block clearfix">
          <div class="features clearfix">
           <div class="fbox">
            <a href="patentdet.php"><div class="fbox-head">Enter Patent Details<br /><br /></div>         
            <img src="resources/pics/icon1.png" alt=""  /></a>
            <div class="fbox-text">Details of Patents Published or Granted </div>
           </div>
		   <div class="fbox">
            <a href="viewall.php"><div class="fbox-head">View All Publications<br /><br /></div>         
            <img src="resources/pics/stack.jpg" alt=""  /></a>
            <div class="fbox-text">Details of your Published work (Journals, Conf, Patents etc) </div>
           </div>
		    
           <div class="fbox">
            <a href="changepass.php"><div class="fbox-head">Change Password<br /><br /></div>           
            <img src="resources/pics/view.jpg" alt="" /></a>
            <div class="fbox-text">To change the existing Password</div>
           </div>
		   
		   
		   
          
		   
		   
			   
	</div>      
</div>

<div id="department">Department View</div>
<br>
<div class="home-block clearfix">
          <div class="features clearfix">
           
		   <div  class="fbox">
		   <a href="currentprogress.php"><div class="fbox-head">Current year Report<br /><br /></div>         
            <img src="resources/pics/icon1.png" alt=""  /></a>
            <div class="fbox-text">Progress of the department in the analytical view for the current year.  </div>
           </div>
		   
		   <div class="fbox">
            <a href="p.php"><div class="fbox-head">Progress Report<br /><br /></div>           
            <img src="resources/pics/book.jpg" alt="" /></a>
            <div class="fbox-text">Analytical view of the Progress that department have done over past few years  </div>
           </div>
		   <div class="fbox">
            <a href="viewdetails.php"><div class="fbox-head">View faculty Information<br /><br /></div>           
            <img src="resources/pics/book.jpg" alt="" /></a>
            <div class="fbox-text">view Any department's faculty submitted data </div>
           </div>
		  
		  
		   
		   
			   
	      </div>
</div>





<div>
<br>
<br>
<br><br>
</div>




		 </div></div>  
<!-- End fa icons -->	
<div class="hsep"></div>	

</div>



<br>
<br>

<div id="footer" style="background-color:#3e3c3a; height:60px; color:#FFFFFF; text-align:center; font-family:calibri">Design & Developed by <br> UPES, Dehradun</div></footer>
</html>
