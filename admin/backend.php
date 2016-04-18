<?php
session_start();
include_once '../dbconnect.php';

if(!isset($_SESSION['admin']))
{
	header("Location: index.php");
}
$res=mysql_query("SELECT * FROM admin WHERE admin_id=".$_SESSION['admin']);
$adminRow=mysql_fetch_array($res);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $adminRow['email']; ?></title>
<link rel="stylesheet" href="../style.css" type="text/css" />
</head>
<body>
<div id="header">
	<div id="left">
    <label>Hostel Management System Admin Portal</label>
    </div>
    <div id="right">
    	<div id="content">
        	Hello <?php echo $adminRow['adminname']; ?>&nbsp;<a href="adminlogout.php?logout">Sign Out</a>
        </div>
    </div>
</div>

<div id="body">
	<br />
    <p>under construction</p>
    <br />
</div>

</body>
</html>