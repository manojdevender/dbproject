<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: index.php");
}
if( $_POST["rateit"] ) {
    $myrating=$_POST['myrating'];
    $mid_rating=$_POST['rateit'];
    $q=mysql_query("SELECT * FROM ratings WHERE `mid`='$mid_rating' AND userid=".$_SESSION['user']);
    $c=mysql_num_rows($q);
    if($c==1){
    $updateresult=mysql_query("UPDATE `ratings` SET `rating`='$myrating' WHERE `mid`='$mid_rating' AND userid=".$_SESSION['user']);
    }
    else{
    $insertresult=mysql_query("INSERT INTO `ratings`(`mid`,`rating`,`comment`,`userid`) VALUES ($mid_rating,$myrating,'',".$_SESSION['user'].")");
       if(!$insertresult){
        die('Could not update ' . mysql_error());
      }
    }

}

/*
if(isset($_POST['rateit']))
{
$myrating=$_POST['myrating'];

}*/
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
         if(file_exists($popularimage)==0){$popularimage = "images/moviepics/default.jpg";}
         $Popularid=$popularmovierow['id'];
         $result=mysql_query("SELECT * FROM ratings WHERE mid='$Popularid' AND userid=".$_SESSION['user']);
         $countuser = mysql_num_rows($result);
         if($countuser ==1){$myrating=mysql_fetch_array($result);$yy = $myrating['rating'];}
         else{$yy =0;}
         ?>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <?php echo '<img class="group list-group-image" src="'.$popularimage .'" alt="Random image" />'; ?>
                <div class="caption">
                    <a href="movie.php?id=<?php echo $Popularid ?>"><h4 class="group inner list-group-item-heading">
                        <?php echo $popularmovierow['NAME'];
                              echo " ";
                              echo round($popularmovierow['average'],1);
                        ?></h4></a>
                    <p class="group inner list-group-item-text">
                      Date :<?php echo $popularmovierow['YEAR']?></p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <div class="text-center">
                               <form action = "<?php $_PHP_SELF ?>" method = "post">
                                <input type="text" class="kv-fa rating-loading" name="myrating" value='<?php echo $yy?>' data-size="xs" title="">
                                <button class="btn btn-success btn-lg" name="rateit" value='<?php echo $Popularid?>' id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                                </form>
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
       //$movielatestquery=mysql_query("SELECT * FROM movie ORDER BY year desc LIMIT 6");
       $movieview = mysql_query("CREATE OR REPLACE VIEW movieview AS SELECT id, NAME, YEAR FROM movie ORDER BY year desc");
       $movielatestquery=mysql_query("SELECT * FROM movieview LIMIT 6");
      for ($i=0; $i<6; $i++){
         $latestmovierow = mysql_fetch_assoc($movielatestquery);
         $latestimage = "images/moviepics/".$latestmovierow['id'].".jpg";
         if(file_exists($latestimage)==0){$latestimage = "images/moviepics/default.jpg";}
         $Latestid=$latestmovierow['id'];
         $result=mysql_query("SELECT * FROM ratings WHERE mid='$Latestid' AND userid=".$_SESSION['user']);
         $countuser = mysql_num_rows($result);
         if($countuser ==1){$myrating=mysql_fetch_array($result);$yy = $myrating['rating'];}
         else{$yy =0;}
         $averagequery=mysql_query("SELECT * FROM (SELECT mid, AVG(ratings.rating) as average FROM ratings GROUP BY mid) t1 WHERE mid='$Latestid'");
         $countaverage = mysql_num_rows($averagequery);
         if($countaverage ==1){$averagerating=mysql_fetch_array($averagequery);$tt = $averagerating['average'];}
         else{$tt = 0;}
         ?>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <?php echo '<img class="group list-group-image" src="'.$latestimage .'" alt="Random image" />'; ?>
                <div class="caption">
                    <a href="movie.php?id=<?php echo $Latestid ?>" ><h4 class="group inner list-group-item-heading">
                        <?php echo $latestmovierow['NAME'];
                              echo " ";
                              echo round($tt,1);
                        ?></h4></a>
                    <p class="group inner list-group-item-text">
                      Date :<?php echo $latestmovierow['YEAR']?></p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <div class="text-center">
                                <form action = "<?php $_PHP_SELF ?>" method = "post">
                                <input type="text" class="kv-fa rating-loading" name="myrating" value='<?php echo $yy?>' data-size="xs" title="">
                                <button class="btn btn-success btn-lg" name="rateit" type="number" value='<?php echo $Latestid?>' id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                                </form>
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
      // $files = glob("images/moviepics/*.jpg");
      $movieallquery=mysql_query("SELECT * FROM movie ");
      $Count = mysql_num_rows($movieallquery);
      for ($i=0; $i<$Count; $i++){
         $allmovierow = mysql_fetch_assoc($movieallquery);
         // echo $allmovierow['id'];
         $movieid = $allmovierow['id'];
         $image = "images/moviepics/".$movieid.".jpg";
         if(file_exists($image)==0){$image = "images/moviepics/default.jpg";}
         $resultall=mysql_query("SELECT * FROM ratings WHERE mid='$movieid' AND userid=".$_SESSION['user']);
         $countuserall = mysql_num_rows($resultall);
         if($countuserall ==1){
            $myratingall=mysql_fetch_array($resultall);$yy1 = $myratingall['rating'];
         }
         else{
            $yy1 =0;
        }
         $averagequeryall=mysql_query("SELECT * FROM (SELECT mid, AVG(ratings.rating) as average FROM ratings GROUP BY mid) t1 WHERE mid='$movieid'");
         $countaverageall = mysql_num_rows($averagequeryall);
         if($countaverageall ==1){$averageratingall=mysql_fetch_array($averagequeryall); $tt1 = $averageratingall['average'];}
         else{$tt1 = 0;}
         ?>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <?php echo '<img class="group list-group-image" src="'.$image .'" alt="Random image" />'; ?>
                <div class="caption">
                    <a href="movie.php?id=<?php echo $movieid ?>" ><h4 class="group inner list-group-item-heading">
                        <?php echo $allmovierow['NAME'];
                         echo " ";
                         echo round($tt1,1);
                        ?></h4></a>
                    <p class="group inner list-group-item-text">
                      Date :<?php echo $allmovierow['YEAR']?></p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <div class="text-center">
                                <form action = "<?php $_PHP_SELF ?>" method = "post">
                                 <input type="text" class="kv-fa rating-loading" name="myrating" value='<?php echo $yy1?>' data-size="xs" title="">
                                 <button class="btn btn-success btn-lg" name="rateit" value='<?php echo $movieid?>' id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                                </form>
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