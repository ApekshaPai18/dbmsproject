<?php

  include('_dbconnect.php');
  $customerid= $_POST['customerid'];
  $password= $_POST['password'];


  $customerid = stripcslashes($customerid);  
        $password = stripcslashes($password);  
        $customerid = mysqli_real_escape_string($con, $customerid);  
        $password = mysqli_real_escape_string($con, $password);  
      
        $sql = "select *from customerlogin where customerid = '$customerid' and password = '$password'";  
        $result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result); 
          
        if($count == 1){  
            echo "<h1><center> Login successful </center></h1>"; 
            echo "<script> window.location.assign('page2.html'); </script>";
            header(location: page2.html);
        }  
        else{  
            echo "<h1> Login failed. Invalid username or password.</h1>";  
        }     
?>