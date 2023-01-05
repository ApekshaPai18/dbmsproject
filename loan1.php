<?php
$insert=false;
if(isset($_POST['name'])){
    
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
   
    $name=$_POST['name'];
    $number=$_POST['number'];
    $pnum=$_POST['number1'];
    $email=$_POST['email'];
    $address=$_POST['address'];
    $type=$_POST['type'];
    $amount=$_POST['amount'];
    $reason=$_POST['text'];
    //$sql="INSERT INTO `dbms`.`log` (`loan_id`,`name`, `number`, `pnum`, `email`, `address`, `type`, `amount`, `reason`) 
   // VALUES ('$name', '$number', '$pnum', '$email', '$address,', '$type', '$amount', '$reason');";
   $sql= "INSERT INTO `dbms`.`log` (`loan_id`, `number`, `pnum`, `email`, `address`, `type`, `amount`, `reason`) 
    VALUES ( '$name', '$number', '$pnum', '$email', '$address,', '$type', '$amount', '$reason');";
   // echo $sql;


//execute the query
    if($con->query($sql) == true){
   // echo "Successfully inserted";

   //flag for successful insertion
        $insert=true;
    }
    else{
    echo "ERROR: $sql <br> $con->error";
   
    }


//close the database connection
   $con->close();
    }
?>















<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>loan</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="style.css">
</head>


    <img class="bg" src="bank.jpg" alt="Bank">
    <div class="navbar">
        <a class="active" href="page2.html"><i class="fa fa-fw fa-home"></i> Home</a>

    </div>


    <ul class="breadcrumb justify-content-center">
        <div data-role="page-header">
            <div data-role="control" data-type="form-header" data-hash="00000002" data-type-id="27" data-colspan="20"
                id="form-heading-00000002-acc" aria-labelledby="form-heading-00000002-acc" data-i18n-html="Headline">
                <h1 style="text-align:center">Loan Application Form</h1>
                <p style="text-align:justify">Please fill in all needed information in the loan application form below
                    to request a loan from your organization. Information regarding income assets are requested for
                    qualification.&nbsp;</p>
                <hr>
            </div>
        </div>

    </ul>
    <div class="container2">
    <?php
        if($insert==true){
         echo  "<p class='SubmitMsg' >Your application has been submitted!!!</p>
        <br><br>";
        }
      ?>


   <form action="loan1.php" method="post">
    <label for="name"><b>Name</b></label>
   <input type="text" name="name" id="name" placeholder="enter your name">
   <label for="number"><b>Account Number</b></label>
   <input type="number" name="number" id="number" placeholder="account number">
   <label for="number1"><b>Phone Number</b></label>
   <input type="number" name="number1" id="number1" placeholder="phone number">
   <label for="email"><b> Email</b></label>
   
   <input type="email" name="email" id="email" placeholder="enter your email">
   <label for="address"><b>Address</b></label>
   <input type="address" name="address" id="address" placeholder="address">
   <label for="type"><b>Loan Type</b></label>
   <input type="text" name="type" id="type" placeholder="loan type">
   <label for="amount"><b>Amount</b></label>
   <input type="number" name="amount" id="amount" placeholder="amount">
   <label for="text"><b>Your Reason<b></label>
   <input type="text" name="text" id="text" placeholder="reason">
   
   <button class="btn"><b>Submit</b></button>
</form>
</div>
<script src="index.js"></script>
