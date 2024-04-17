<?php

session_start(); 

require('../sql.php'); 
global $error;


function is_valid_email($email)
{
    global $conn;
    global $error;
    
    $slquery = "SELECT farmer_id FROM farmerlogin WHERE email = '$email'";
    $selectresult = mysqli_query($conn, $slquery);
    $rowcount = mysqli_num_rows($selectresult);
    
    if ($rowcount) {
        $error = '
        <div class="alert alert-info alert-dismissible fade show text-center" id="popup" role="alert">
            <strong class="text-center text-dark ">This email already exists</strong>
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
        </div>';
        return false;
    } else {
        return true;
    }
}


function is_valid_passwords($password, $cpassword) 
{
    global $error;
    
    if ($password != $cpassword) {
        $error = '
        <div class="alert alert-info alert-dismissible fade show text-center" id="popup" role="alert">
            <strong class="text-center text-dark ">Your passwords do not match. Please type carefully</strong>
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
        </div>';
        return false;
    } else {
        return true;
    }
}

function create_user($name, $password, $email, $mobile, $gender, $dob, $statename, $district, $city) 
{
    global $conn;
    
   
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    
    $query = "INSERT INTO `farmerlogin` (farmer_name, password, email, phone_no, F_gender, F_birthday, F_State, F_District, F_Location) 
              VALUES ('$name', '$hashed_password', '$email', '$mobile', '$gender', '$dob', '$statename', '$district', '$city')";
    $result = mysqli_query($conn, $query);

    return $result ? true : false;
}


if (isset($_POST['email']) && isset($_POST['password']) && isset($_POST['confirmpassword'])) {

    // Reading form values
    $name = $_POST['name'];
    $email = $_POST['email'];    
    $mobile = $_POST['mobile'];
    $gender = $_POST['gender'];
    $dob = $_POST['dob'];
    $state = $_POST['state'];
    $district = $_POST['district'];
    $city = $_POST['city'];
    $password = $_POST['password'];
    $cpassword = $_POST['confirmpassword'];

    $query5 = "SELECT StateName FROM state WHERE StCode = '$state'";
    $ses_sq5 = mysqli_query($conn, $query5);
    $row5 = mysqli_fetch_assoc($ses_sq5);
    $statename = $row5['StateName'];

    if (is_valid_email($email) && is_valid_passwords($password, $cpassword)) {    
        if (create_user($name, $password, $email, $mobile, $gender, $dob, $statename, $district, $city)) {
            $_SESSION['farmer_login_user'] = $email;  
            header("location: flogin.php");
            exit;
        } else {    
            $error = '
            <div class="alert alert-info alert-dismissible fade show text-center" id="popup" role="alert">
                <strong class="text-center text-dark ">Error While Registering User</strong>
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
            </div>';
        }
    }
}
?>
