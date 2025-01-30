<?php
session_start();
include("config.php");
if(isset($_SESSION['user']))
{
    header("location:home.php");
}
if($_SERVER['REQUEST_METHOD']=="POST")
 {

 $myusername=$_POST['name'];
    $mypassword=$_POST['pass'];
    $password=md5($mypassword); // encrypted password
  $sql="SELECT r_id FROM register WHERE r_username='$myusername' AND r_pass='$password'";
  $result=mysql_query($sql);
  $row=mysql_fetch_array($result);
  $count=mysql_num_rows($result);

    if($count==1)
    {
      $_SESSION['user']=$myusername;
      header("location:home.php");
    }
    else
    {
        echo "Your Login name or password is invalid";
    }
  }
 ?>

<html>
<head>
</head>
<body>
<form action="" method="POST">
<center>
<!-- <img src="" height="20%"  width="20%"></center> -->
<hr>
<h2>Log in to your  User Account</h2>
<hr>
</br></br>
  <input type="text" name="name" value="" placeholder="User Name"> </br></br>
  <input type="password" name="pass" value="" placeholder="Password"></br></br>
  <input type="submit" value="LOGIN">   <input type="reset" value="REFRESH"> </br>
  <button><a href="register.php">Register for New  User</a></button>
</form>
</center>
</body>
</html>