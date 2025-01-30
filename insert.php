<?php
include("config.php");
if($_SERVER['REQUEST_METHOD'] == "POST")
{
    $name=$_POST['name']; 
    $cont=$_POST['num']; 
    $age=$_POST['age']; 
    $user=$_POST['uname']; 
    $pass=$_POST['pass']; 
    $add=$_POST['add']; 
    $accno=$_POST['acno']; 
    $ifsc=$_POST['ifsc']; 
    $accty=$_POST['accty']; 
    $nom=$_POST['nom']; 
    $atmpin=$_POST['pin'];
    
    
    $qry=mysql_query("INSERT into atm.register(r_name,r_cont,r_age,r_username,r_pass,r_add,r_pin,r_acc_no,r_ifsc,r_acc_type,r_nominee)VALUES('$name','$cont','$age','$user','$pass','$add','$accno','$ifsc','$accty','$nom','$atmpin')");
    if($qry==true)
    { 
      header("location:login.php");
      
    }
  else
    {
     echo"not".mysql_error();
    }
  }
  else
    {
      echo"REQUEST METHOD IS NOT POST";
    }
  ?>
      