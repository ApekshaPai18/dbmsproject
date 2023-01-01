<?php


$server="localhost";
$username="root";
$password="";
$database="dbms";

$customerid=$_POST["customerid"];
$password=$_POST["password"];




$conn=mysqli_connect($server,$username,$password,$database);



if (!$conn){
    echo "success";
}
else{
    die("Error". mysqli_connect_error());
}


?>

