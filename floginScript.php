<?php
session_start();  
$error = '';  
require('../sql.php');

if(isset($_POST['farmerlogin'])) {
    $farmer_email = $_POST['farmer_email'];
    $farmer_password = $_POST['farmer_password'];
    
    
    $farmerquery = "SELECT * FROM `farmerlogin` WHERE email='$farmer_email'";
    $result = mysqli_query($conn, $farmerquery);
    
    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $hashed_password = $row['password'];
        
        
        if (password_verify($farmer_password, $hashed_password)) {
           
            $_SESSION['farmer_login_user'] = $farmer_email;
            header("location: fprofile.php");
            exit;
        } else {
           
            $error = "Username or Password is invalid";
        }
    } else {
      
        $error = "Username or Password is invalid";
    }
    
    mysqli_free_result($result);
    mysqli_close($conn);  
}
?>
