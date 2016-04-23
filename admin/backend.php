
<?php
session_start();
include_once '../dbconnect.php';

if(!isset($_SESSION['admin']))
{
  header("Location: index.php");
}
/*$actors_query=mysql_query("SELECT * FROM actor");
$rows = array();
while ($row = mysql_fetch_array($actors_query, MYSQL_ASSOC)) {
    $rows[] = $row;
}
$no_of_actors=mysql_num_rows($actors_query); 
*/
if(isset($_POST['Addmovie']))
{
  $moviename = mysql_real_escape_string($_POST['moviename']);
  $year = $_POST['year'];
  $genre = $_POST['genre'];
  $description = $_POST['description'];
  $movieres=mysql_query("SELECT id,NAME,YEAR FROM movie WHERE NAME='$moviename' AND YEAR='$year'");
  $moviecount = mysql_num_rows($movieres); 
  
  if($moviecount == 0)
  {
   $moviequery="INSERT INTO `movie`(`NAME`, `YEAR`, `description`) VALUES ('$moviename','$year','$description')";
   mysql_query($moviequery);
        ?>
        <script>alert('Movie successfully Added to database!');</script>
        <?php

   $curmovie=mysql_query("SELECT * FROM movie WHERE NAME='$moviename' AND YEAR='$year'");
   $movierow=mysql_fetch_array($curmovie);
   $mid=$movierow['id'];
   $genrequery="INSERT INTO `genre`(`mid`,`genre`) VALUES ('$mid','$genre')";
   mysql_query($genrequery);
        ?>
        <script>alert('Genre successfully Added to database!');</script>
        <?php
  }
  else{
         ?>
        <script>alert('Error: Movie with this name and year already exists!');</script>
        <?php
  }
}
if(isset($_POST['Addactor']))
{
  $Actorfirstname = mysql_real_escape_string($_POST['Actorfirstname']);
  $Actorlastname = mysql_real_escape_string($_POST['Actorlastname']);
  $gender = $_POST['gender'];
  $actorres=mysql_query("SELECT ID,FNAME,LNAME,GENDER FROM actor WHERE FNAME='$Actorfirstname' AND LNAME='$Actorlastname' AND gender='$gender'");
  $actorrow=mysql_fetch_array($actorres);
  $actorcount = mysql_num_rows($actorres); 
  
  if($actorcount == 0)
  {
   $actorquery="INSERT INTO `actor`(`FNAME`, `LNAME` , `GENDER`) VALUES ('$Actorfirstname','$Actorlastname','$gender')";
   mysql_query($actorquery);
        ?>
        <script>alert('Actor successfully Added to database!');</script>
        <?php
  }
  else{
         ?>
        <script>alert('Error: Actor with this firstname,lastname and gender already exists!');</script>
        <?php
  }
}
if(isset($_POST['AddDirector']))
{
  $Directorfirstname = mysql_real_escape_string($_POST['Directorfirstname']);
  $Directorlastname = mysql_real_escape_string($_POST['Directorlastname']);
  $Directorres=mysql_query("SELECT id,FNAME,LNAME FROM directors WHERE FNAME='$Directorfirstname' AND LNAME='$Directorlastname'");
  $Directorrow=mysql_fetch_array($Directorres);
  $Directorcount = mysql_num_rows($Directorres); 
  
  if($Directorcount == 0)
  {
   $Directorquery="INSERT INTO `directors`(`FNAME`, `LNAME`) VALUES ('$Directorfirstname','$Directorlastname')";
   mysql_query($Directorquery);
        ?>
        <script>alert('Director successfully Added to database!');</script>
        <?php
  }
  else{
         ?>
        <script>alert('Error: Director with this firstname,lastname already exists!');</script>
        <?php
  }
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
<div class="container">       
        <div class="column">
<div class="col-md-12">
<center>
<h1>Add a new Movie</h1>
</center> 
<form class="form-horizontal" method="post">
  <fieldset>
  <!-- Text input-->
  <div class="form-group">
    <label class="col-md-4 control-label" for="moviename">Movie Name</label>  
    <div class="col-md-4">
    <input id="moviename" name="moviename" type="text" placeholder="Movie name" class="form-control input-md" required="">
      
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label" for="year">Release Date</label>  
    <div class="col-md-4">
    <input id="year" name="year" type="date" placeholder="Release Date" class="form-control input-md" required="">
      
    </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label" for="genre">Genre</label>
    <div class="col-md-4">
      <select id="genre" name="genre" class="form-control">
        <option value="-1">Select</option>
        <option value="Action">Action</option>
        <option value="Biography">Biography</option>
        <option value="Comedy">Comedy</option>
        <option value="Crime">Crime</option>
        <option value="Drama">Drama</option>
        <option value="Documentary">Documentary</option>
        <option value="Family">Family</option>
        <option value="Fantasy">Fantasy</option>
        <option value="History">History</option>
        <option value="Horror">Horror</option>
        <option value="Music">Music</option>
        <option value="Mystery">Mystery</option>
        <option value="News">News</option>
        <option value="RealityTV">RealityTV</option>
        <option value="Romance">Romance</option>
        <option value="Sci-fi">Sci-fi</option>
        <option value="Short">Short</option>
        <option value="Sport">Sport</option>
        <option value="Talkshow">Talkshow</option>
        <option value="Thriller">Thriller</option>
        <option value="War">War</option>
        <option value="Western">Western</option>
        <option value="Animation">Animation</option>
        <option value="Adventure">Adventure</option>
        <option value="Film-Noir">Film-Noir</option>
      </select>
     </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label" for="description">Movie description</label>  
    <div class="col-md-4">
    <input id="description" name="description" type="text" placeholder="Movie description" class="form-control input-md" required="">
      
    </div>
  </div>
<!--
   <div class="form-group">
    <label class="col-md-4 control-label" for="cast">Choose Cast</label>
    <div class="col-md-4">
      <select id="cast" name="cast" class="form-control">
        <option value="-1">Select</option>
        
        <?//php
        // for ($x = 0; $x <= $no_of_actors; $x++) {
            //    ?>
                 <option value=<?//php echo $rows[$x]['FNAME'] ?> > <?//php echo rows[$x]['FNAME']  ?> </option>
                 <?//php
                //} 

        //?>
      </select>
     </div>
  </div>
-->
  <!-- Button -->
  <div class="form-group">
    <label class="col-md-4 control-label" for="Addingmovie"></label>
    <div class="col-md-4">
      <button id="Addmovie" name="Addmovie" class="btn btn-success">Add Movie</button>
    </div>
  </div>
  </fieldset>
</form>
</div>
<div class="col-md-12">
<center>
<h1>Add a new Actor/Actress</h1>
</center>
<form class="form-horizontal" method="post">
  <fieldset>
  <div class="form-group">
    <label class="col-md-4 control-label" for="Actorfirstname">Actor's FirstName</label>  
    <div class="col-md-4">
    <input id="Actorfirstname" name="Actorfirstname" type="text" placeholder="First Name" class="form-control input-md">
      
    </div>
  </div>

  <div class="form-group">
    <label class="col-md-4 control-label" for="Actorlastname">Actor's LastName</label>  
    <div class="col-md-4">
    <input id="Actorlastname" name="Actorlastname" type="text" placeholder="Last Name" class="form-control input-md">
      
    </div>
  </div>

  <div class="form-group">
    <label class="col-md-4 control-label" for="gender">Gender</label>  
    <div class="col-md-4">
    <input type="radio" name="gender" value="m" checked> Male<br>
    <input type="radio" name="gender" value="f"> Female<br>
    </div>
  </div>

  <!-- Button -->
  <div class="form-group">
    <label class="col-md-4 control-label" for="Addingactor"></label>
    <div class="col-md-4">
      <button id="Addactor" name="Addactor" class="btn btn-success">Add Actor</button>
    </div>
  </div>

  </fieldset>
</form>
</div>
<div class="col-md-12">
<center>
<h1>Add a new Director</h1>
</center>
<form class="form-horizontal" method="post">
  <fieldset>
  <div class="form-group">
    <label class="col-md-4 control-label" for="Directorfirstname">Director's FirstName</label>  
    <div class="col-md-4">
    <input id="Directorfirstname" name="Directorfirstname" type="text" placeholder="First Name" class="form-control input-md">
      
    </div>
  </div>

  <div class="form-group">
    <label class="col-md-4 control-label" for="Directorlastname">Director's LastName</label>  
    <div class="col-md-4">
    <input id="Directorlastname" name="Directorlastname" type="text" placeholder="Last Name" class="form-control input-md">
      
    </div>
  </div>

  <!-- Button -->
  <div class="form-group">
    <label class="col-md-4 control-label" for="AddingDirector"></label>
    <div class="col-md-4">
      <button id="AddDirector" name="AddDirector" class="btn btn-success">Add Director</button>
    </div>
  </div>

  </fieldset>
</form>
</div>
</div>
</div>

</body>
</html>