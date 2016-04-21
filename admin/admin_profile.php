<?php
session_start();

include_once '../dbconnect.php';

if($_SESSION['admin']=="")
{
  header('location:index.php');
}
if(isset($_POST['update']))
{
  $adminname = $_POST['adminname'];
  $email = $_POST['email'];
  $age = $_POST['age'];
  $country = $_POST['country'];
  if(strcmp($adminname,"")!=0){
      $retval=mysql_query("UPDATE admin SET adminname='$adminname' WHERE admin_id=".$_SESSION['admin']);
      if(! $retval )
        {
          die('Could not update adminname: ' . mysql_error());
        }
  }
  if(strcmp($email,"")!=0){
      $retval=mysql_query("UPDATE admin SET email='$email' WHERE admin_id=".$_SESSION['admin']);
      if(! $retval )
        {
          die('Could not update email: ' . mysql_error());
        }
  }
  if($age!=0){
      $retval=mysql_query("UPDATE admin SET age=$age WHERE admin_id=".$_SESSION['admin']);
      if(! $retval )
        {
          die('Could not update age: ' . mysql_error());
        }
  }
  if(strcmp($country,"")!=0){
      $retval=mysql_query("UPDATE admin SET country='$country' WHERE admin_id=".$_SESSION['admin']);
      if(! $retval )
        {
          die('Could not update country: ' . mysql_error());
        }
  }
}

$res=mysql_query("SELECT * FROM admin WHERE admin_id=".$_SESSION['admin']);
$adminRow=mysql_fetch_array($res);

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Admin Profile</title>

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/style.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
 <body background="../images/background.jpg" />
 <div id="header">
  <div id="left">
    <label>Admin Portal</label>
    </div>
    <div id="right">
      <div id="content">
          Hello <a href="admin_profile.php"><?php echo $adminRow['adminname']; ?></a>&nbsp;<a href="adminlogout.php?logout">Sign Out</a>
        </div>
    </div>
</div>
<div class="container bootstrap snippet">
    <h1 class="text-primary"><span class="glyphicon glyphicon-user"></span>  Edit AdminProfile</h1>
      <hr>
  <div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
          <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
          <h6>Upload a different photo...</h6>
          
          <input type="file" class="form-control">
        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <h3>Personal info</h3>
        
        <form class="form-horizontal" role="form" method="post">
          <div class="form-group">
            <label class="col-lg-3 control-label">AdminName:</label>
            <div class="col-lg-8">
              <input class="form-control" name="adminname" value="<?php echo $adminRow['adminname']?>"type="text" placeholder="Example: Name">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input class="form-control" name="email"  value="<?php echo $adminRow['email']?>"  type="text" placeholder="Example: abc@exampl.com">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Country:</label>
            <div class="col-lg-8">
              <input class="form-control" name="country"  value="<?php echo $adminRow['country']?>"  type="text" placeholder="Example: India">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Age:</label>
            <div class="col-lg-8">
              <input class="form-control" name="age"  value="<?php echo $adminRow['age']?>" type="number" placeholder=" In years Ex:25 ">
            </div>
          </div>
          <div class="form-group">
               <label class="col-lg-3 control-label">Update profile</label>
               <div class="col-lg-8">
                 <button type="submit" name="update" class="btn btn-primary">Update</button>
               </div>
          </div>
        </form>
      </div>
  </div>
</div>
<hr>
</body>
</html>