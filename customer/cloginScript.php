<?php
session_start(); 
$error = ''; 

require('../sql.php'); 

if(isset($_POST['customerlogin'])) {
    $customer_email = $_POST['cust_email'];
    $customer_password = $_POST['cust_password'];

    // Retrieve the hashed password from the database based on the provided email
    $checkquery = "SELECT * FROM `custlogin` WHERE email='$customer_email'";
    $result = mysqli_query($conn, $checkquery);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $hashed_password = $row['password'];

        // Debugging statements
        echo "Hashed Password from Database: $hashed_password<br>";
        echo "Password Entered by User: $customer_password<br>";

        // Verify the password
        if (password_verify($customer_password, $hashed_password)) {
            // Password is correct, set session and redirect
            $_SESSION['customer_login_user'] = $customer_email;

            // Clear cart after successful login
            $deletequery = "DELETE FROM cart";
            $deletecart = mysqli_query($conn, $deletequery);

            header("location: cprofile.php");
            exit;
        } else {
            // Password is incorrect
            $error = "Username or Password is invalid";
        }
    } else {
        // No user found with the provided email
        $error = "Username or Password is invalid";
    }

    mysqli_free_result($result);
    mysqli_close($conn); 
}
?>
