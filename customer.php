<?php
$insert=false;
if(isset($_POST['customerid'])){
    $server="localhost";
$username="root";
$password="";


//create database connection

$con=mysqli_connect($server,$username,$password);

//chck for connection success

if(!$con){
    die("connection to this database failed due to".mysqli_connect_error());
}

//variables


$customerid=$_POST["customerid"];
$password=$_POST["password"];
$sql="INSERT INTO `dbms`.`customerlogin` (`sno`, `customerid`, `password`, `dt`) VALUES ( '$customerid', '$password', current_timestamp());";



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
  <title>login</title>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="style.css">

</head>

<body>
  <img class="bg" src="bank.jpg" alt="Bank">
  <nav class="navbar navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">My Bank</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar"
        aria-controls="offcanvasDarkNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar"
        aria-labelledby="offcanvasDarkNavbarLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">My Bank</h5>
          <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
            aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              login
            </a>
            <ul class="dropdown-menu dropdown-menu-dark">
              <li><a class="dropdown-item" href="customer.html">Customer</a></li>
              <li><a class="dropdown-item" href="employee.html">Employee</a></li>
              <li>

        </div>
      </div>
    </div>
  </nav>




  <div class="container">
<?php 
if($insert==true){
    echo "<p class='SubmitMsg' >you are logged in>";
}
?>
    <br><br><br><br>

    <form action="partials/_dbconnect.php" method="POST">
      
      <input type="number" name="customerid" id="number" placeholder="Customer id">
      
      <input type="password" name="password" id="password" placeholder="password">
      
      <br>

      <button>LOGIN</button>
      
      <br>
      <h6>forgot password? <a href="#">reset</a></h6>

    </form>
  </div>




</body>

</html>




