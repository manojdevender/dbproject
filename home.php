<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: index.php");
}
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);

$msg = "SELECT message FROM admin WHERE admin_id=1";
$msg_query = mysql_query($msg);
$disp = mysql_fetch_array($msg_query);
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $userRow['email']; ?></title>
 <!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/home.css" type="text/css" />
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

<div id="body">
<p>Message is :<?php echo $disp['message']; ?></p>
<div class="container bootstrap snipets">
   <h1 class="text-center text-muted">Popular Movies</h1>
   <div class="row flow-offset-1">
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="http://static.livedemo00.template-help.com/wt_58434/images/shop-1.jpg" alt=""></a>
         <div class="caption">
           <h6><a href="#">Short Sleeve T-Shirt</a></h6><span class="price">
             <del>$24.99</del></span><span class="price sale">$12.49</span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="http://static.livedemo00.template-help.com/wt_58434/images/shop-2.jpg" alt=""></a>
         <div class="caption">
           <h6><a href="#">Short Sleeve T-Shirt</a></h6><span class="price">
             <del>$24.99</del></span><span class="price sale">$12.49</span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="http://static.livedemo00.template-help.com/wt_58434/images/shop-3.jpg" alt=""></a>
         <div class="caption">
           <h6><a href="#">Short Sleeve T-Shirt</a></h6><span class="price">$12.49</span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="http://static.livedemo00.template-help.com/wt_58434/images/shop-4.jpg" alt=""></a>
         <div class="caption">
           <h6><a href="#">Short Sleeve T-Shirt</a></h6><span class="price">
             <del>$24.99</del></span><span class="price sale">$12.49</span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="http://static.livedemo00.template-help.com/wt_58434/images/shop-5.jpg" alt=""></a>
         <div class="caption">
           <h6><a href="#">Short Sleeve T-Shirt</a></h6><span class="price">
             <del>$24.99</del></span><span class="price sale">$12.49</span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="http://static.livedemo00.template-help.com/wt_58434/images/shop-6.jpg" alt=""></a>
         <div class="caption">
           <h6><a href="#">Short Sleeve T-Shirt</a></h6><span class="price">
             <del>$24.99</del></span><span class="price sale">$12.49</span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="http://static.livedemo00.template-help.com/wt_58434/images/shop-7.jpg" alt=""></a>
         <div class="caption">
           <h6><a href="#">Short Sleeve T-Shirt</a></h6><span class="price">$12.49</span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="http://static.livedemo00.template-help.com/wt_58434/images/shop-8.jpg" alt=""></a>
         <div class="caption">
           <h6><a href="#">Short Sleeve T-Shirt</a></h6><span class="price">
             <del>$24.99</del></span><span class="price sale">$12.49</span>
         </div>
       </div>
     </div>
     <div class="col-xs-6 col-md-4">
       <div class="product tumbnail thumbnail-3"><a href="#"><img src="http://static.livedemo00.template-help.com/wt_58434/images/shop-9.jpg" alt=""></a>
         <div class="caption">
           <h6><a href="#">Short Sleeve T-Shirt</a></h6><span class="price">
             <del>$24.99</del></span><span class="price sale">$12.49</span>
         </div>
       </div>
     </div>
   </div>
 </div>
</div>

</body>
</html>