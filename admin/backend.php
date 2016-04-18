<?php
session_start();
include_once '../dbconnect.php';

if(!isset($_SESSION['admin']))
{
	header("Location: index.php");
}
if(isset($_POST['msg']))
{
    $message = $_POST['message'];
    $query = "UPDATE admin SET message='$message' WHERE  admin_id=1";
    mysql_query($query);
    $confirm ="<b style='color:red'>Page Saved</b>";
}
$res=mysql_query("SELECT * FROM admin WHERE admin_id=".$_SESSION['admin']);
$adminRow=mysql_fetch_array($res);
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $adminRow['email']; ?></title>
<link rel="stylesheet" href="../css/style.css" type="text/css" />
</head>
<body>
<div id="header">
	<div id="left">
    <label>Admin Portal</label>
    </div>
    <div id="right">
    	<div id="content">
        	Hello <?php echo $adminRow['adminname']; ?>&nbsp;<a href="adminlogout.php?logout">Sign Out</a>
        </div>
    </div>
</div>

<div id="body">
    <center>
        <div id="adminform">
        <form method="post">
        <table align="center" width="30%" border="0">
        <tr>
        <center>
            <p>
                <b>[ Message here ]</b>
              <textarea placeholder="Message for users!" name="message"></textarea><br>
              <input type="submit" value="Save" name="msg"><br><?php echo $confirm; ?>
            </p>
        </center>
        </tr>
        </table>
        </form>
        </div>
</center>
	<br />
</div>

</body>
</html>