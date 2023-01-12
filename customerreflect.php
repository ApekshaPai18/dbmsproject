<?php

    
   //set connection variables
    $server="localhost";
    $username="root";
    $password="";
    $database="dbms";


//create a database connection
    $con =mysqli_connect($server,$username,$password,$database);


//check for connection success
    if(!$con){
    die("connection to this database failed due to". mysqli_connect_error());
    }
 //echo "Success connecting to the DB";


 

 $sql="select * from `account`";
 $data=mysqli_query($con,$sql);


 //find the number of records returned
// $num=mysqli_num_rows($data);
 //echo $num;
// echo "records found in the database"; 

 //display
 //if($num>0){
    //$row=mysqli_fetch_assoc($data);
   // echo var_dump($row);
 
   ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>database</title>
</head>
<body>
<table align="center" border="1px" style="width:100%; line-height:50px;">
<tr>
  <th colspan="25" ><h2>Customer Record</h2></th>
 </tr>
 <th>name</th>
 <th>number</th>
 <th>email</th>
 <th>address</th>
 <th>adhar</th>
 <th>gender</th>
 <th>national</th>
 <th>acc</th>
 <th>branch</th>
 <th>branchcity</th>
 </tr>



<?php
while($row=mysqli_fetch_assoc($data)){
   // echo var_dump($row);
?>

<tr><td><?php echo $row['name'];?></td>
<td><?php echo $row['number'];?></td>
<td><?php echo $row['email'];?></td>
<td><?php echo $row['address'];?></td>
<td><?php echo $row['adhar'];?></td>
<td><?php echo $row['gender'];?></td>
<td><?php echo $row['national'];?></td>
<td><?php echo $row['acc'];?></td>
<td><?php echo $row['branch'];?></td>
<td><?php echo $row['branchcity'];?></td>
</tr>
<?php
}
?>
 </table>
  
  </body>
  </html>