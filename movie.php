<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
    header("Location: index.php");
}
if( $_GET["id"] ) {
    $movieid=$_GET["id"];
}
else{
    header("Location: home.php");
}
/*
if( $_POST["commentit"] ) {
    $comment=$_POST['comment'];
    echo $comment;
    }*/
if( $_POST["rateit"] ) {
    $myrating=$_POST['myrating'];
    $mid_rating=$_POST['rateit'];
    $comment=$_POST['comment'];
    $q=mysql_query("SELECT * FROM ratings WHERE `mid`='$mid_rating' AND userid=".$_SESSION['user']);
    $c=mysql_num_rows($q);
    if($c==1){
    $updateresult=mysql_query("UPDATE `ratings` SET `rating`='$myrating',`comment`='$comment'  WHERE `mid`='$mid_rating' AND userid=".$_SESSION['user']);
    }
    else{
     $insertresult=mysql_query("INSERT INTO `ratings`(`mid`,`rating`,`comment`,`userid`) VALUES ($mid_rating,$myrating,'$comment',".$_SESSION['user'].")");
     if(!$insertresult){
        die('Could not update ' . mysql_error());
      }
    }
}
$ratingarray= array("Awww NOOO", "Very Poor", "Poor","Ok","Good", "Excellent");
/*
if(!isset($_SESSION["movieid"]))
{
    header("Location: home.php");
}*/
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);
/*
$moviequery = mysql_query("SELECT * FROM movie WHERE id=".$_SESSION['movieid']);
$movierow = mysql_fetch_array($moviequery);
<script>alert(<?php echo $movierow['NAME'];?>);</script>
*/
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
<link rel="stylesheet" href="css/movie.css" type="text/css" />
 <link rel="stylesheet" type="text/css" href="css/review.css">
<script type="text/javascript" href="js/movie.js"></script>
</head>
<body background="images/background.jpg">
<div id="header">
    <div id="left">
    <a href="home.php"><label>Movie Rater</label></a>
    </div>
    <div id="right">
        <div id="content">
            Hello  <a href="profile.php"><?php echo $userRow['username']; ?></a>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>
    </div>
</div>
<div class="container">       
        <div class="row">
            <div class="col-sm-4">
             
                 <?php
                     $directorquery=mysql_query("SELECT * FROM moviedirectors,movie,directors WHERE moviedirectors.mid=movie.id AND moviedirectors.did=directors.id AND movie.id='$movieid'");
                     $directorsarray=mysql_fetch_array($directorquery);
                     $countdirectors=mysql_num_rows($directorquery);
                     if($countdirectors==1){
                        $director=$directorsarray['FNAME']." ".$directorsarray['LNAME'];
                     }
                     else{
                        $director="no director";
                     }
                     $genrequery=mysql_query("SELECT * FROM genre,movie WHERE movie.id=genre.mid AND movie.id='$movieid'");
                     $countgenre=mysql_num_rows($genrequery);
                     if($countgenre!=0){
                        $genre="";
                        for ($i=0; $i < $countgenre; $i++) { 
                             $genrerow=mysql_fetch_assoc($genrequery);
                             $genre=$genre." ".$genrerow['genre'];
                        }
                       
                     }
                     else{
                        $genre="N.A";
                     }
                     $moviequery=mysql_query("SELECT * FROM movie WHERE id='$movieid'");
                     $result=mysql_query("SELECT * FROM ratings WHERE mid='$movieid' AND userid=".$_SESSION['user']);
                     $countuser = mysql_num_rows($result);
                     if($countuser ==1){
                        $myrating=mysql_fetch_array($result);
                        $yy1 = $myrating['rating'];
                        $mycomment= $myrating['comment'];
                      }
                     else{
                        $yy1 =0;
                        $mycomment="";
                     }
                     $averagequery=mysql_query("SELECT * FROM (SELECT mid, AVG(ratings.rating) as average FROM ratings GROUP BY mid) t1 WHERE mid='$movieid'");
                     $countaverage = mysql_num_rows($averagequery);
                     if($countaverage ==1){
                        $averagerating=mysql_fetch_array($averagequery); $tt1 = $averagerating['average'];
                      }
                     else{
                        $tt1 = 0;
                      }
                     $image = "images/moviepics/".$movieid.".jpg";
                     if(file_exists($image)==0){$image = "images/moviepics/default.jpg";}
                     echo '<img src="'.$image .'" alt="Random image" />'; 
                  ?>
                    <h4>
                        <?php echo $movierow['NAME'];
                              echo " ";
                              echo round($tt1,2);
                        ?></h4>
                    <p>
                      Date :<?php echo $movierow['YEAR']?></p>
                    <p>
                      Director: <?php echo $director?>
                    </p>
                    <p>
                      Genre: <?php echo $genre?>
                    </p>
                    <div class="row">
                        <div>
                            <div style="">
                              <div class="text-left">
                                <form action ="movie.php?id=<?php echo $movieid ?>" method = "POST">
                                <input type="text" class="kv-fa rating-loading" name="myrating" value='<?php echo $yy1?>' data-size="sm" title="">
                                 <hr/>
                                <label for="inputsm">Comments:</label>
                                <input class="form-control" name="comment" value='<?php echo $mycomment ?>' id="inputsm" type="text">
                                <button class="btn btn-success btn-lg" name="rateit" value='<?php echo $movieid?>' id="submitrate" style="padding: 2px 11px;">Comment/Rate it!</button>
                                </form>
                              </div>
                            </div>
                        </div>
                    </div>
            </div>    
            <div class="col-sm-3">
                <div class="rating-block">
                    <h4>Average user rating</h4>
                    <h2 class="bold padding-bottom-7"><?php  echo round($tt1,2)?><small>/ 5</small></h2>    
                    <input class="kv-fa rating-loading"  disabled="true" value='<?php  echo round($tt1,2)?>' data-size="xs" title="">
                </div>
            </div>

            <?php

            $rate5 = mysql_query("SELECT * FROM ratings WHERE mid='$movieid'and rating >4 and rating <=5");
            $count5 = mysql_num_rows($rate5);
            $rate4 = mysql_query("SELECT * FROM ratings WHERE mid='$movieid'and rating >3 and rating <=4");
            $count4 = mysql_num_rows($rate4);
            $rate3 = mysql_query("SELECT * FROM ratings WHERE mid='$movieid'and rating >2 and rating <=3");
            $count3 = mysql_num_rows($rate3);
            $rate2 = mysql_query("SELECT * FROM ratings WHERE mid='$movieid'and rating >1 and rating <=2");
            $count2 = mysql_num_rows($rate2);
            $rate1 = mysql_query("SELECT * FROM ratings WHERE mid='$movieid'and rating >=0 and rating <=1");
            $count1 = mysql_num_rows($rate1);
            $Count = $count1 + $count2 + $count3 + $count4 + $count5 ;
            $percent1 = ($count1/$Count)*100;
            $percent2 = ($count2/$Count)*100;
            $percent3 = ($count3/$Count)*100;
            $percent4 = ($count4/$Count)*100;
            $percent5 = ($count5/$Count)*100;
            ?>
            <div class="col-sm-4">
                <h4>Rating breakdown</h4>
                <div class="pull-left">
                    <div class="pull-left" style="width:35px; line-height:1;">
                        <div style="height:9px; margin:5px 0;">5 <span class="glyphicon glyphicon-star"></span></div>
                    </div>
                    <div class="pull-left" style="width:180px;">
                        <div class="progress" style="height:9px; margin:8px 0;">
                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $percent5?>%">
                            <span class="sr-only">80% Complete (danger)</span>
                          </div>
                        </div>
                    </div>
                    <div class="pull-right" style="margin-left:10px;"><?php echo $count5?></div>
                </div>
                <div class="pull-left">
                    <div class="pull-left" style="width:35px; line-height:1;">
                        <div style="height:9px; margin:5px 0;">4 <span class="glyphicon glyphicon-star"></span></div>
                    </div>
                    <div class="pull-left" style="width:180px;">
                        <div class="progress" style="height:9px; margin:8px 0;">
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="4" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $percent4?>%">
                            <span class="sr-only">80% Complete (danger)</span>
                          </div>
                        </div>
                    </div>
                    <div class="pull-right" style="margin-left:10px;"><?php echo $count4?></div>
                </div>
                <div class="pull-left">
                    <div class="pull-left" style="width:35px; line-height:1;">
                        <div style="height:9px; margin:5px 0;">3 <span class="glyphicon glyphicon-star"></span></div>
                    </div>
                    <div class="pull-left" style="width:180px;">
                        <div class="progress" style="height:9px; margin:8px 0;">
                          <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="3" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $percent3?>%">
                            <span class="sr-only">80% Complete (danger)</span>
                          </div>
                        </div>
                    </div>
                    <div class="pull-right" style="margin-left:10px;"><?php echo $count3?></div>
                </div>
                <div class="pull-left">
                    <div class="pull-left" style="width:35px; line-height:1;">
                        <div style="height:9px; margin:5px 0;">2 <span class="glyphicon glyphicon-star"></span></div>
                    </div>
                    <div class="pull-left" style="width:180px;">
                        <div class="progress" style="height:9px; margin:8px 0;">
                          <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $percent2?>%">
                            <span class="sr-only">80% Complete (danger)</span>
                          </div>
                        </div>
                    </div>
                    <div class="pull-right" style="margin-left:10px;"><?php echo $count2?></div>
                </div>
                <div class="pull-left">
                    <div class="pull-left" style="width:35px; line-height:1;">
                        <div style="height:9px; margin:5px 0;">1 <span class="glyphicon glyphicon-star"></span></div>
                    </div>
                    <div class="pull-left" style="width:180px;">
                        <div class="progress" style="height:9px; margin:8px 0;">
                          <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $percent1?>%">
                            <span class="sr-only">80% Complete (danger)</span>
                          </div>
                        </div>
                    </div>
                    <div class="pull-right" style="margin-left:10px;"><?php echo $count1?></div>
                </div>
            </div> 

        </div>   
        <div class="row">
             <div class="col-sm-12">
                <hr/>
                 <p style="font-size:140%;color:#1a1a00" >Description :<?php echo $movierow['description']?></p>
             </div>
        </div>
        <!--
           <div class="row">
                  <div class="col-sm-8">
                     <div class="form-group">
                         <form action ="movie.php?id=<?php //echo $movieid ?>" method = "POST">
                         <label for="inputsm">Comments:</label>
                         <input class="form-control" name="comment" id="inputsm" type="text">
                          <button class="btn btn-success btn-lg" name="commentit" style="padding: 2px 11px;">Post comment</button>
                         </form>
                     </div>  
                 </div>   
            </div> 
     -->
    
        <div class="row">
            <?php 
            $usercommentsquery=mysql_query("SELECT * FROM (SELECT userid as user_id,mid,rating,comment FROM ratings WHERE mid='$movieid') t1 NATURAL JOIN users ORDER BY rating DESC");
            $count=mysql_num_rows($usercommentsquery);
            for($i=0;$i<$count;$i++){
                $usercommentrow=mysql_fetch_assoc($usercommentsquery);
                ?>
            <div class="col-sm-10">
                <hr/>
                <div class="review-block">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="images/user.png" class="img-rounded">
                            <div class="review-block-name"><a href="#"><?php echo $usercommentrow['username']?></a></div>
                            <div class="review-block-date"><?php echo $usercommentrow['email']?></div>
                        </div>
                        <div class="col-sm-9">
                            <div class="review-block-rate">
                                <input class="kv-fa rating-loading" disabled="true" value='<?php echo $usercommentrow['rating']?>' data-size="xs" title="">
                            </div>
                            <div class="review-block-title"><?php echo $ratingarray[round($usercommentrow['rating'])]?></div>
                            <div class="review-block-description"><?php echo $usercommentrow['comment']?></div>
                        </div>
                    </div>
                    <hr/>
                </div>
            </div>

            <?php } ?>
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