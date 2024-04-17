<?php
$conn = mysqli_connect("localhost", "root", "", "farmer_friend");
session_start();
// Storing Session
$user_check = $_SESSION['farmer_login_user'];
$query = "SELECT farmer_name from farmerlogin where email = '$user_check'";
$ses_sql = mysqli_query($conn, $query);
$row = mysqli_fetch_assoc($ses_sql);
$login_session = $row['farmer_name'];
$CustID=$user_check;
?>