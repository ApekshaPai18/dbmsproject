<?php
$insert=false;
if(isset($_POST['branch'])){
    
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
   
$name= $_POST['name'];
$number= $_POST['number'];
$email= $_POST['email'];
$address= $_POST['address'];
$adhar= $_POST['adhar'];
$gender= $_POST['gender'];
$national= $_POST['national'];
$acc= $_POST['acc'];
$branch= $_POST['branch'];
$branchcity= $_POST['branchcity'];


$sql1="INSERT INTO `dbms`.`account` (`name`,`number`, `email`, `address`, `adhar`, `gender`, `national`, `acc`, `branch`,`branchcity`) 
 VALUES ('$name', '$number', '$email', '$address', '$adhar', '$gender', '$national','$acc','$branch','$branchcity');";
$sql2="INSERT INTO `dbms`.`branch` ( `branch`,`branchcity`) 
VALUES ('$branch','$branchcity');";


//execute the query
  //  if($con->query($sql1) == true && $con->query($sql2) == true){
    if($con->query($sql1) == true && $con->query($sql2) == true ){
   // echo "Successfully inserted";
   echo "<script> window.location.assign('page2.html');</script>";
   //flag for successful insertion
        $insert=true;
    }
    else{
   // echo "ERROR: $sql1 and &sql2 <br> $con->error";
    echo "ERROR: $sql1 and $sql2 <br> $con->error";
   
    }


//close the database connection
   $con->close();
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
  <title>Account</title>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="style1.css">
</head>

<body>

    
    <div class="main">
    

         <div class="register">
            <br><h2><b>Create your account here</b></h2>
            <form action="account.php" id="register" method="POST">
                <label><b>Name:</b></label>
                <br>
                <input type="name" name="name" id="name" placeholder="Enter your name">
                <br><br>

                <label><b>phone Number:</b></label>
                <br>
                <input type="number" name="number" id="number" placeholder="Phone number">
                <br><br>
                <label><b>Email:</b></label>
                <br>
                <input type="email" name="email" id="email" placeholder="email id">
                <br><br>
                <label><b>Address:</b></label>
                <br>
                <input type="text" name="address" id="address" placeholder="Address">
                <br><br>

                <label><b>Adhar Number:</b></label>
                <br>
                <input type="number" name="adhar" id="adhar" placeholder="Adhar Number">
                <br><br>
               
                <label><b>Gender:</b></label>
                <br>
                <input type="gender" name="gender" id="branch" placeholder="gender">
                <br><br>
               
                
                <label><b>Nationality:</b></label>
                <br>
                <input type="national" name="national" id="Nationality" placeholder="Nationality">
                <br><br>
                <label><b>Account type:</b></label>
                <br>
                <input type="acc" name="acc" id="acc" placeholder="Account type">
                <br><br>
               
                
                <label><b>Branch Name:</b></label>
                <br>
                <input type="branch" name="branch" id="branch" placeholder="Branch Name">
                <br><br>


                <label><b>Branch City:</b></label>
                <br>
                <input type="branchcity" name="branchcity" id="branchcity" placeholder="Branch City">
                <br><br>
                <button class="btn"><b>Submit</b></button>
            </form>
        </div>
    </div>
</body>

</html>