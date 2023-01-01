<?php
//if($_SERVER["REQUEST_METHOD"] == "POST"){
 // $err =false;
  //include 'partials/_dbconnect.php';
  $customerid=$_POST["customerid"];
  $email=$_POST["email"];
  $password=$_POST["password"];
  if(!empty($customerid)|| !empty($email)|| !empty($password))
  {
    $host="localhost";
    $dbUsername="root";
    $dbpassword="";
    $dbname="dbms";

    $conn=new mysqli($host,$dbUsername, $dbpassword,$dbname);

    if (mysqli_connect_error()){
      die('Connect Error('. mysqli_connect_errno().')'.mysqli_connect_error());
    }else{
      $SELECT="SELECT email from register where email =? Limit 1";
      $INSERT="INSERT into register (customerid,email,password)values(?,?,?)";

      //prepare statement
      $stmt=$conn->prepare($SELECT);
      $stmt->bind_param("s",$email);
      $stmt->execute();
      $stmt->bind_result($email);
      $stmt->store_result();
      $rnum=$stmt->num_rows;

      if($rnum==0){
        $stmt->close();
        $stmt=$conn->prepare($INSERT);
        $stmt->bind_param("ssssii",$customerid,$email,$password);
        $stmt->execute();
        echo "New record inserted";
      }else{
        echo "someone already registerd with this email";
      }
      $stmt->close();
      $conn->close();
    }
  }
    else{
      echo "All field are required";
      die();
    }

  
  //$exists=false;
  //$sql="INSERT INTO `customerlogin` (`sno`, `customerid`, `password`, `date`) VALUES ('$customerid', '$password', current_timestamp())";
 // $result=mysqli_query($conn, $sql);
 // if($result){
 //   $err =true;
 // }
//}
?>
