<?php
session_start();

include_once 'dbconnect.php';

if($_SESSION['user']=="")
{
  header('location:index.php');
}
if(isset($_POST['update']))
{
  $username = $_POST['username'];
  $email = $_POST['email'];
  $age = $_POST['age'];
  $gender= $_POST['gender'];
  $country = $_POST['country'];
  $registereddate=$_POST['date'];

  $updatequery=mysql_query("SELECT * FROM userprofile WHERE userid=".$_SESSION['user']);
  $count=mysql_num_rows($updatequery);
  if($count==1){
      $retval=mysql_query("UPDATE userprofile SET gender='$gender' ,age='$age',country='$country',registered='$registereddate' WHERE userid=".$_SESSION['user']);
       if(! $retval )
        {
          die('Could not update username: ' . mysql_error());
        }
    }
  else{
    $retval=mysql_query("INSERT INTO `userprofile`(`userid`, `gender`, `age`, `country`, `registered`) VALUES (".$_SESSION['user'].",'$gender','$age','$country','$date')");
      if(! $retval )
        {
          die('Could not update username: ' . mysql_error());
        }
  }
   if(strcmp($username,"")!=0){
      $retval=mysql_query("UPDATE users SET username='$username' WHERE user_id=".$_SESSION['user']);
      if(! $retval )
        {
          die('Could not update username: ' . mysql_error());
        }
  }
  if(strcmp($email,"")!=0){
      $retval=mysql_query("UPDATE users SET email='$email' WHERE user_id=".$_SESSION['user']);
      if(! $retval )
        {
          die('Could not update email: ' . mysql_error());
        }
  }
}
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);
$resu=mysql_query("SELECT * FROM userprofile WHERE userid=".$_SESSION['user']);
$userprofileRow=mysql_fetch_array($resu);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>User Profile</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
 <body background="images/background.jpg" />
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
<div class="container bootstrap snippet">
    <h1 class="text-primary"><span class="glyphicon glyphicon-user"></span>  Edit UserProfile</h1>
      <hr>
  <div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
          <img src="images/avatar.png" class="avatar img-circle" alt="avatar">
          <h6>Upload a different photo...</h6>
          <input type="file" class="form-control">
        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <h3>Personal info</h3>
        
        <form class="form-horizontal" role="form" method="post">
          <div class="form-group">
            <label class="col-lg-3 control-label">UserName:</label>
            <div class="col-lg-8">
              <input class="form-control" name="username" value="<?php echo $userRow['username']?>"type="text" placeholder="Example: Name" required="">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input class="form-control" name="email"  value="<?php echo $userRow['email']?>" type="text" placeholder="Example: abc@exampl.com" required="">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Country:</label>
            <div class="col-lg-8">
              <input class="form-control" name="country"  value="<?php echo $userprofileRow['country']?>" type="text" placeholder="Example: India" required="">
            </div>
          </div>
          <div class="form-group">
              <label class="col-lg-3 control-label" for="gender">Gender</label>  
              <div class="col-lg-8">
              <input type="radio" name="gender" value="male" checked> Male<br>
              <input type="radio" name="gender" value="female"> Female<br>
              <input type="radio" name="gender" value="other"> Other
              </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Age:</label>
            <div class="col-lg-8">
              <input class="form-control" name="age" value='<?php echo $userprofileRow['age']?>' type="number" placeholder=" In years Ex:25 "required="">
            </div>
          </div>
           <div class="form-group">
            <label class="col-lg-3 control-label">Date Registered:</label>
            <div class="col-lg-8">
              <input class="form-control" name="date"  value="<?php echo $userprofileRow['date']?>" type="date" placeholder="" required="">
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