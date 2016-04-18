<?php
session_start();
include_once '../dbconnect.php';

if(isset($_SESSION['admin'])!="")
{
	header("Location:backend.php");
}

if(isset($_POST['adm-login']))
{
	$email = mysql_real_escape_string($_POST['email']);
	$apass = mysql_real_escape_string($_POST['pass']);
	
	$email = trim($email);
	$apass = trim($apass);
	
	$res=mysql_query("SELECT admin_id, adminname, password FROM admin WHERE email='$email'");
	$row=mysql_fetch_array($res);
	
	$count = mysql_num_rows($res); // if uname/pass correct it returns must be 1 row
	
	if($count == 1 && $row['password']==md5($apass))
	{
		$_SESSION['admin'] = $row['admin_id'];
		header("Location:backend.php");
	}
	else
	{
		?>
        <script>alert('adminname / Password Seems Wrong !');</script>
        <?php
	}
	
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Login</title>
<link rel="stylesheet" href="../css/style.css" type="text/css" />
</head>
<body>
<center>
<div id="login-form">
<form method="post">
<table align="center" width="30%" border="0">
<tr>
<td><p align="center">Admin Login</p></td>
</tr>
<tr>
<td><input type="text" name="email" placeholder="Your Email" required /></td>
</tr>
<tr>
<td><input type="password" name="pass" placeholder="Your Password" required /></td>
</tr>
<tr>
<td><button type="submit" name="adm-login">Sign In</button></td>
</tr>
<tr>
<td><a href="register.php">Sign Up Here</a></td>
</tr>
</table>
</form>
</div>
</center>
</body>
</html>