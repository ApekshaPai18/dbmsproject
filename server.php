<? php
session _start();

//initialization variables

$customerid="";
$email="";
$errors=array();

//connect to the database

$db=mysqli_connect('localhost','root','','dbms');

//Register user

if(isset($_POST['reg_user'])){
    //receive all input values from the form
    $customerid=mysqli_real_escape_string($db,$_POST['customerid']);
    
    $password=mysqli_real_escape_string($db,$_POST['password']);
   

    //form validation
    if(empty($customerid)) {array_push($errors,"customerid is required");}
    
    if(empty($password)) {array_push($errors,"password is required");}
    
    //first check the database to make sure the user doesn't exists
    $user_check_query="SELECT * FROM users WHERE username='$customerid' ;
    $result=mysqli_query($db,$user_check_query);
    $user=mysqli_fetch_assoc($result);

    if($user){
        if($user['customerid']==$customerid){
            array_push($errors,"already exists");
        }
        
}

//finally register user

}