<?php

    
   //set connection variables
    $server="localhost";
    $username="root";
    $password="";


//create a database connection
    $con =mysqli_connect($server,$username,$password);


//check for connection success
    if(!$con){
    die("connection to this database failed due to". mysqli_connect_error());
    }
 echo "Success connecting to the DB";



?>