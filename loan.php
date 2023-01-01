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
    $number=$_POST['anumber'];
    $pnum=$_POST['number'];
    $email=$_POST['email'];
    $address=$_POST['text'];
    $type=$_POST['loan'];
    $amount=$_POST['text'];
    $reason=$_POST['desc'];
    $sql="INSERT INTO `dbms`.`login` (`name`, `number`, `pnum`, `email`, `address`, `type`, `amount`, `reason`) 
    VALUES ('$name', '$number', '$pnum', '$email', '$address,', '$type', '$amount', '$reason');";
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
        <form>
            <table>
                <tr>
                    <td>
                        <b>Name</b>
                    </td>
                    <td>
                        <input type="name" name="name" id="name" placeholder="Your Name" >
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Account Number</b>
                    </td>
                    <td>
                        <input type="number" name="anumber" id="number" placeholder="AccNumber">
                    </td>
                </tr>
               
                <tr>
                    <td>
                        <b>Phone Number</b>
                    </td>
                    <td>
                        <input type="number" name="number" id="number" placeholder="##########">
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email</b>
                    </td>
                    <td>
                        <input type="email" name="email" id="email" placeholder="xyz@gamil.com">
                    </td>
                </tr>

                <tr>
                    <td>
                        <b>Address</b>
                    </td>
                    <td>
                        <input type="text" name="text" id="text" placeholder="address">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="loan"><b>Choose a loan type</b></label>
                    </td>
                    <td>
                        <select name="loan" id="loan">
                            <option value="Education">Education</option>
                            <option value="Vehicle">Vehicle</option>
                            <option value="Agriculture">Agriculture</option>
                            <option value="Home">Home</option>
                            <option value="Gold">Gold</option>
                            <option value="Personal">Personal</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Desired loan amount</b>
                    </td>
                    <td>
                        <input type="text" name="text" id="text" placeholder="amount">
                    </td>
                </tr>
                <td>
                    <b>Why do u need loan?</b>&nbsp&nbsp
                </td>
                <td>
                   
                    <textarea name="desc" id="desc" cols="30" rows="10"
                    placeholder="Enter your reason"></textarea>
                </td>
            </tr>
               


            
            </table>
            <div class="center">
            <button type="button" onclick="alert('submitted successfully')">submit!</button>
        </div>

        </form>
</body>

</html>