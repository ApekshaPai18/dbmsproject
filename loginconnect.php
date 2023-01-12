<?php
  $host= "localhost";
  $username= "root";
  $password= "";
  $db="dbms";


  $con=mysqli_connect($host,$username,$password,$db);
  if(mysqli_connect_errno()){
    die("Failed to connect with MySQL:".mysqli_connect_error());

  }

  ?>