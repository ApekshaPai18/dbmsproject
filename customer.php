<?php
$insert=false;
if(isset($_POST['customerid'])){
    
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
// echo "Success connecting to the DB";


//collect post variables
   
    $customerid=$_POST['customerid'];
    $password=$_POST['password'];
    
    //$sql="INSERT INTO `dbms`.`log` (`loan_id`,`name`, `number`, `pnum`, `email`, `address`, `type`, `amount`, `reason`) 
   // VALUES ('$name', '$number', '$pnum', '$email', '$address,', '$type', '$amount', '$reason');";
  // $sql1= "INSERT INTO `dbms`.`customerlogin` (`customerid`, `password`) 
   // VALUES ( '$customerid', '$password');";
    $sql1="INSERT INTO `dbms`.`customerlogin` ( `customerid`, `password`, `dt`) 
    VALUES ( '$customerid', '$password', current_timestamp());";
    $sql2= "INSERT INTO `dbms`.`customer` (`customerid`, `password`) 
    VALUES ( '$customerid', '$password');";
   // echo $sql;


//execute the query
    if($con->query($sql1) == true && $con->query($sql2) == true ){
   // echo "Successfully inserted";
     echo "<script> window.location.assign('page2.html');</script>";

   //flag for successful insertion
        $insert=true;
    }
    else{
    echo "ERROR: $sql1 and $sql2 <br> $con->error";
   
    }


//close the database connection
   $con->close();
    }
?>



<!doctype html>
<html lang="en">
0
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
  <title>login</title>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="style2.css">

</head>

<body>
  
  

<div class="main">

<div class="register">
   <br><h2><b>LOGIN</b></h2>
   <form action="customer.php" id="register" method="POST">
       <label><b>Customerid:</b></label>
       <br>
       <input type="number" name="customerid" id="number" placeholder="Customerid">
       <br><br>

       <label><b>password:</b></label>
       <br>
       <input type="password" name="password" id="password" placeholder="password">
       <br><br>
      

 <button class="btn"><b>Submit</b></button>
 


</form>
</div>
</div>
</body>

</html>