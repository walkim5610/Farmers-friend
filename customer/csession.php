<?php
// mysqli_connect() function opens a new connection to the MySQL server.
$conn = mysqli_connect("localhost", "root", "", "farmer_friend");
session_start(); 
// Storing Session
$user_check = $_SESSION['customer_login_user'];
$query = "SELECT cust_name from custlogin where email = '$user_check'";
$ses_sql = mysqli_query($conn, $query);
$row = mysqli_fetch_assoc($ses_sql);
$login_session = $row['cust_name'];
$CustID=$user_check;
?>

