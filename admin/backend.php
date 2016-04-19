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
 <!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../css/backend.css" type="text/css" />
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
<center>
<p>
    <textarea placeholder="Message for users!" name="message"></textarea>
    <input type="submit" value="Save" name="msg"><?php echo $confirm; ?>
</p>
</center>
<form class="form-horizontal">
<fieldset>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="name">Movie Name</label>  
  <div class="col-md-4">
  <input id="name" name="name" type="text" placeholder="Movie name" class="form-control input-md" required="">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="mid">Movie ID</label>  
  <div class="col-md-4">
  <input id="mid" name="mid" type="number" placeholder="Movie ID" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Directorfirstname">Directorfirstname</label>  
  <div class="col-md-4">
  <input id="Directorfirstname" name="Directorfirstname" type="text" placeholder="Directorfirstname" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="Directorlastname">Directorlastname</label>  
  <div class="col-md-4">
  <input id="Directorlastname" name="Directorlastname" type="text" placeholder="Directorlastname" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="did">Director ID</label>  
  <div class="col-md-4">
  <input id="did" name="did" type="number" placeholder="Director ID"  class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="year">Release Date</label>  
  <div class="col-md-4">
  <input id="year" name="year" type="number" placeholder="Release Date" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="Actorfirstame">Actorfirstame</label>  
  <div class="col-md-4">
  <input id="Actorfirstame" name="Actorfirstame" type="text" placeholder="Actorfirstame" class="form-control input-md">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="Actorlastame">Actorlastame</label>  
  <div class="col-md-4">
  <input id="Actorlastame" name="Actorlastame" type="text" placeholder="Actorlastame" class="form-control input-md">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="id">id</label>  
  <div class="col-md-4">
  <input id="id" name="id" type="text" placeholder="id" class="form-control input-md">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="gender">Gender</label>  
  <div class="col-md-4">
  <input type="radio" name="gender" value="male" checked> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="genre">Genre</label>
  <div class="col-md-4">
    <select id="genre" name="genre" class="form-control">
      <option value="-1">Select</option>
      <option value="1">Action</option>
      <option value="2">Biography</option>
      <option value="3">Comedy</option>
      <option value="4">Crime</option>
      <option value="5">Drama</option>
      <option value="6">Documentary</option>
      <option value="7">Family</option>
      <option value="8">Fantasy</option>
      <option value="9">History</option>
      <option value="10">Horror</option>
      <option value="11">Music</option>
      <option value="12">Mystery</option>
      <option value="13">News</option>
      <option value="14">RealityTV</option>
      <option value="15">Romance</option>
      <option value="16">Sci-fi</option>
      <option value="17">Short</option>
      <option value="18">Sport</option>
      <option value="19">Talkshow</option>
      <option value="20">Thriller</option>
      <option value="21">War</option>
      <option value="22">Western</option>
      <option value="23">Animation</option>
      <option value="24">Adventure</option>
    </select>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Addingmovie"></label>
  <div class="col-md-4">
    <button id="Addmovie" name="Addmovie" class="btn btn-success">Add Movie</button>
  </div>
</div>

</fieldset>
</form>

</body>
</html>