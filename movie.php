<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: index.php");
}
/*
if(!isset($_SESSION["movieid"]))
{
    header("Location: home.php");
}*/
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);
/*
$moviequery = mysql_query("SELECT * FROM movie WHERE id=".$_SESSION['movieid']);
$movierow = mysql_fetch_array($moviequery);
<script>alert(<?php echo $movierow['NAME'];?>);</script>
*/
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $userRow['email']; ?></title>
 <!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/movie.css" type="text/css" />
<script type="text/javascript" href="js/movie.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body background="images/background.jpg">
<div id="header">
    
	<div id="left">
    <label>User Portal</label>
    </div>
    <div id="right">
    	<div id="content">
        	Hello  <a href="profile.php"><?php echo $userRow['username']; ?></a>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>
    </div>
</div>

<div id="body">

</div>

</body>
</html>