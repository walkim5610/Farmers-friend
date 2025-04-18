<?php
include('fsession.php');

ini_set('memory_limit', '-1');

if (!isset($_SESSION['farmer_login_user'])) {
    header("location: ../index.php");
    exit();
}

$query4 = "SELECT * FROM farmerlogin WHERE email='$user_check'";
$ses_sq4 = mysqli_query($conn, $query4);
$row4 = mysqli_fetch_assoc($ses_sq4);
$para1 = $row4['farmer_id'];
$para2 = $row4['farmer_name'];
?>

<!DOCTYPE html>
<html>
<?php include('fheader.php'); ?>
<body class="bg-white" id="top">
    <?php include('fnav.php'); ?>

    <section class="section section-shaped section-lg">
        <div class="shape shape-style-1 shape-primary">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <div class="container ">
            <div class="row">
                <div class="col-md-8 mx-auto text-center">
                    <span class="badge badge-danger badge-pill mb-3">Crops</span>
                </div>
            </div>

            <div class="row row-content">
                <div class="col-md-12 mb-3">
                    <div class="card text-white bg-gradient-warning mb-3">
                        <div class="card-header">
                            <span class="text-warning display-4">Crop Availability</span>
                        </div>

                        <div class="card-body text-white">
                            <table class="table table-striped table-hover table-bordered bg-gradient-white text-center display" id="myTable">
                                <thead>
                                    <tr class="font-weight-bold text-default">
                                        <th><center>Crop Name</center></th>
                                        <th><center>Quantity (in KG)</center></th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php 
                                    // Fetch data from production_approx table
                                    $sql = "SELECT crop, quantity FROM production_approx WHERE quantity > 0";
                                    $query = mysqli_query($conn, $sql);

                                    while ($res = mysqli_fetch_array($query)) {	
                                        ?>		  
                                        <tr class="text-center">
                                            <td><?php echo $res['crop']; ?></td>
                                            <td><?php echo $res['quantity']; ?></td>
                                        </tr>
                                    <?php 
                                    }

                                    // Fetch data from farmer_crops_trade table
                                    $sql_trade = "SELECT Trade_crop AS crop, SUM(Crop_quantity) AS quantity FROM stock GROUP BY Trade_crop";
                                    $query_trade = mysqli_query($conn, $sql_trade);

                                    while ($res_trade = mysqli_fetch_array($query_trade)) {	
                                        ?>		  
                                        <tr class="text-center">
                                            <td><?php echo $res_trade['crop']; ?></td>
                                            <td><?php echo $res_trade['quantity']; ?></td>
                                        </tr>
                                    <?php 
                                    }
                                    ?>
                                </tbody>
                            </table>			
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php require("footer.php");?>
    
    <script>
        $(document).ready(function () {
            $('#myTable').DataTable();
        });
    </script>
</body>

</html>
