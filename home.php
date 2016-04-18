<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: index.php");
}
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);

$msg = "SELECT message FROM admin WHERE admin_id=1";
$msg_query = mysql_query($msg);
$disp = mysql_fetch_array($msg_query);
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $userRow['email']; ?></title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="header">
	<div id="left">
    <label>User Portal</label>
    </div>
    <div id="right">
    	<div id="content">
        	Hello <?php echo $userRow['username']; ?>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>
    </div>
</div>

<div id="body">
    <br />
    <a href="profile.php">My profile</a>
	<br />
    <p>Message is :<?php echo $disp['message']; ?></p>
    <br />
</div>

</body>
</html>