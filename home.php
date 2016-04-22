<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: index.php");
}
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $userRow['email']; ?></title>
 <!-- Bootstrap -->

<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/star-rating.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="css/theme-krajee-fa.css" media="all" type="text/css"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/star-rating.js" type="text/javascript"></script>

<link rel="stylesheet" href="css/home.css" type="text/css" />
<script type="text/javascript" src="js/home.js"></script>
<!--
<script type="text/javascript">
(function movie(id) {
      <?php //$_SESSION['movieid']=id; ?> 
     document.location.href="movie.php"; 
});
</script>
-->
</head>
<body background="images/background.jpg">
<div id="header">
	   <div id="left">
        <label>Movie Rater</label>
    </div>
    <div id="right">
    	<div id="content">
        	Hello  <a href="profile.php"><?php echo $userRow['username']; ?></a>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>
    </div>
    
</div>
<center><h1>Popular Movies</h1></center>
<div class="container">
    <div class="well well-sm">
        <strong>Choose view</strong>
        <div class="btn-group">
            <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
            </span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
                class="glyphicon glyphicon-th"></span>Grid</a>
        </div>
    </div>
    <div id="products" class="row list-group">
      <?php
       $moviepopularquery=mysql_query("SELECT * FROM (SELECT mid as id, AVG(ratings.rating) as average FROM ratings GROUP BY mid) t1 NATURAL JOIN movie ORDER BY average DESC LIMIT 6");
      
      for ($i=0; $i<6; $i++){
         $popularmovierow = mysql_fetch_assoc($moviepopularquery);
         $popularimage = "images/moviepics/".$popularmovierow['id'].".jpg";
         $Popularid=$popularmovierow['id'];
         $result=mysql_query("SELECT * FROM ratings WHERE mid='$Popularid' AND userid=".$_SESSION['user']);
         $myrating=mysql_fetch_array($result);
         ?>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <?php echo '<img class="group list-group-image" src="'.$popularimage .'" alt="Random image" />'; ?>
                <div class="caption">
                    <a href="movie.php?id=<?php echo $Popularid ?>"><h4 class="group inner list-group-item-heading">
                        <?php echo $popularmovierow['NAME'];
                              echo " ";
                              echo round($popularmovierow['average'],2);
                        ?></h4></a>
                    <p class="group inner list-group-item-text">
                      Date :<?php echo $popularmovierow['YEAR']?></p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <div class="text-center">
                                <input type="text" class="kv-fa rating-loading" value='<?php echo $myrating['rating']?>' data-size="xs" title="">
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php }
        ?>
    </div>
</div>

<center><h1>Latest Movies</h1></center>
<div class="container">
    <div id="products" class="row list-group">
      <?php
       $movielatestquery=mysql_query("SELECT * FROM movie ORDER BY year desc LIMIT 6");
      for ($i=0; $i<6; $i++){
         $latestmovierow = mysql_fetch_assoc($movielatestquery);
         $latestimage = "images/moviepics/".$latestmovierow['id'].".jpg";
         $Latestid=$latestmovierow['id'];
         $result=mysql_query("SELECT * FROM ratings WHERE mid='$Latestid' AND userid=".$_SESSION['user']);
         $myrating=mysql_fetch_array($result);
         $averagequery=mysql_query("SELECT * FROM (SELECT mid, AVG(ratings.rating) as average FROM ratings GROUP BY mid) t1 WHERE mid='$Latestid'");
         $averagerating=mysql_fetch_array($averagequery);
         ?>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <?php echo '<img class="group list-group-image" src="'.$latestimage .'" alt="Random image" />'; ?>
                <div class="caption">
                    <a href="movie.php?id=<?php echo $Latestid ?>" ><h4 class="group inner list-group-item-heading">
                        <?php echo $latestmovierow['NAME'];
                              echo " ";
                              echo round($averagerating['average'],2);
                        ?></h4></a>
                    <p class="group inner list-group-item-text">
                      Date :<?php echo $latestmovierow['YEAR']?></p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <div class="text-center">
                                <input type="text" class="kv-fa rating-loading" value='<?php echo $myrating['rating']?>' data-size="xs" title="">
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php }
        ?>
    </div>
</div>

<center><h1>All Movies</h1></center>
<div class="container">
    <div id="products" class="row list-group">
      <?php
      $files = glob("images/moviepics/*.jpg");
      for ($i=0; $i<count($files); $i++){
         $image = $files[$i];
         $movieid = filter_var($image, FILTER_SANITIZE_NUMBER_INT);
         $moviequery = mysql_query("SELECT NAME,YEAR,description FROM movie WHERE id=$movieid");
         $movierow = mysql_fetch_array($moviequery);
         $resultall=mysql_query("SELECT * FROM ratings WHERE mid='$movieid' AND userid=".$_SESSION['user']);
         $myratingall=mysql_fetch_array($resultall);
         $averagequeryall=mysql_query("SELECT * FROM (SELECT mid, AVG(ratings.rating) as average FROM ratings GROUP BY mid) t1 WHERE mid='$movieid'");
         $averageratingall=mysql_fetch_array($averagequeryall);
         ?>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <?php echo '<img class="group list-group-image" src="'.$image .'" alt="Random image" />'; ?>
                <div class="caption">
                    <a href="movie.php?id=<?php echo $movieid ?>" ><h4 class="group inner list-group-item-heading">
                        <?php echo $movierow['NAME'];
                         echo " ";
                         echo round($averageratingall['average'],2);
                        ?></h4></a>
                    <p class="group inner list-group-item-text">
                      Date :<?php echo $movierow['YEAR']?></p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <div class="text-center">
                                 <input type="text" class="kv-fa rating-loading"  value='<?php echo $myratingall['rating']?>' data-size="xs" title="">
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php }
        ?>
    </div>
</div>

</body>
<script>
    $(document).on('ready', function () {
        $('.kv-fa').rating({
            theme: 'krajee-fa',
            filledStar: '<i class="fa fa-star"></i>',
            emptyStar: '<i class="fa fa-star-o"></i>'
        });
        $('.rating,.kv-fa').on(
                'change', function () {
                    console.log('Rating selected: ' + $(this).val());
                });
    });
</script>
</html>