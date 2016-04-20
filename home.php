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
<link rel="stylesheet" href="css/home.css" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="js/home.js"></script>
</head>
<body background="images/background.jpg">
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
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <a href="movie.php"><h4 class="group inner list-group-item-heading">
                        Movie 1</h4></a>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<center><h1>Latest Movies</h1></center>
<div class="container">
    <div id="products" class="row list-group">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/150x200/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Movie 1</h4>
                    <p class="group inner list-group-item-text">
                      Movie description here</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div style=" width: 300px; ">
                              <input id="ratings-hidden" name="rating" type="hidden"> 
                              <div class="text-right">
                                 <div class="stars starrr" data-rating="0"></div>
                                 <button class="btn btn-success btn-lg" type="submit" id="submitrate" style="padding: 2px 11px;">Rate it!</button>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>