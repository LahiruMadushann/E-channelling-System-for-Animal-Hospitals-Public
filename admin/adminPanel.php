<?php 
    require '../core.php';
    require '../database_connector.php';
    require '../functions.php';
    
    if(loggedin()){
    

        //COUNT OF  TOTAL HOSPITALS IN THE SYSTEM
        $hos_total_query="SELECT * FROM `hospital`";
    
        if($query_run_total = mysqli_query($con,$hos_total_query)){
            $hos_total_count = mysqli_num_rows( $query_run_total );
        }else{
            $hos_total_count = 0;
        }
    
        //COUNT OF  TOTAL USERS IN THE SYSTEM
        $users_total_query="SELECT * FROM `petowner`";
    
        if($query_run_total = mysqli_query($con,$users_total_query)){
            $users_total_count = mysqli_num_rows( $query_run_total );
        }else{
            $users_total_count = 0;
        }
        
        //COUNT OF  HOSPITALS THAT ARE ACTIVATED
        $hos_active_query="SELECT * FROM `hospital` WHERE `status`= 'activated'";
    
        if($query_run_active = mysqli_query($con,$hos_active_query)){
            $hos_active_count = mysqli_num_rows( $query_run_active );
        }else{
            $hos_active_count = 0;
        }
    
        //COUNT OF HOSPITALS THAT ARE DEACTIVATED
        $hos_deactive_query="SELECT * FROM `hospital` WHERE `status`= 'deactivated'";
    
        if($query_run_deactive = mysqli_query($con,$hos_deactive_query)){
            $hos_deactive_count = mysqli_num_rows( $query_run_deactive );
        }else{
            $hos_deactive_count = 0;
        }
    
        //COUNT OF HOSPITALS THAT REQUEST FOR ACTIVATION
        $hos_req_active_query="SELECT * FROM `hospital` WHERE `status`= 'deactivated' AND requestActivation='yes'";
    
        if($query_run_req_active = mysqli_query($con,$hos_req_active_query)){
            $hos_req_active_count = mysqli_num_rows( $query_run_req_active );
        }else{
            $hos_req_active_count = 0;
        }

        //COUNT OF HOSPITALS THAT REQUEST FOR ACTIVATION
        $todayDate = date('Y-m-d');
        $appoint_query="SELECT * FROM `appointment` WHERE appointmentDate >= '$todayDate'";
    
        if($query_run_appoint = mysqli_query($con,$appoint_query)){
            $appoint_count = mysqli_num_rows( $query_run_appoint );
        }else{
            $appoint_count = 0;
        }
    
    }
    // else{
    //     header("Location: ../mainPage.php");
    // }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin Panel</title>
        <link rel="shortcut icon" href="../img/logo.png" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="adminPanel.php">Admin Panel</a>
            
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>

            
            <a href="../logout.php" style="color:#fff; margin-left:75%;">Logout</a>
           
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="adminPanel.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                           
                           
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                               Table
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#userOverview" aria-expanded="false" aria-controls="userOverview">
                                        User Overview
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="userOverview" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="registeredUsers.php">Registered Users</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#hospitalOverview" aria-expanded="false" aria-controls="hospitalOverview">
                                        Hospital Overview
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="hospitalOverview" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="registeredHospitals.php">Registered Hospitals</a>
                                            <a class="nav-link" href="deactivatedHospitals.php">Deactivated Hospitals</a>
                                            <a class="nav-link" href="requestActivation.php">Request Activation</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#appointmentOverview" aria-expanded="false" aria-controls="appointmentOverview">
                                        Appointments
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="appointmentOverview" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="appointments.php">Appointments</a>

                                        </nav>
                                    </div>
                                  
                                </nav>
                            </div>
                            <a class="nav-link" href="ChangePassword.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Change Password
                            </a>

                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Admin
                    </div>
                </nav>
            </div>

            <!-- Right Content of the page -->

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>

                        <!-- USERS OVERVIEW -->

                        <h3>Users Overview</h3>

                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4 shadow">
                                    <div class="card-body">Number of Registered Users - <?php echo $users_total_count; ?></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="registeredUsers.php">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card text-dark bg-light mb-4 shadow">
                                    <div class="card-body">Number of Appointments -  <?php echo $appoint_count; ?></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-dark stretched-link" href="appointments.php">View Details</a>
                                        <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                          
                        </div>

                        <!-- HOSPITALS OVERVIEW -->

                        <h3>Hospital Overview</h3>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4 shadow">
                                    <div class="card-body">Number of Registered Hospitals - <?php echo $hos_total_count; ?></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="registeredHospitals">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card text-dark bg-light mb-4 shadow">
                                    <div class="card-body">Number of Activated Hospitals - <?php echo $hos_active_count; ?></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-dark stretched-link" href="activatedHospitals.php">View Details</a>
                                        <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4 shadow">
                                    <div class="card-body">Number of Deactivated Hospitals - <?php echo $hos_deactive_count; ?></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="deactivatedHospitals.php">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4 shadow">
                                    <div class="card-body">hospitals requested for activation - <?php echo $hos_req_active_count; ?></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="requestActivation.php">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                     
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Today's Reservations -> <?php echo $todayDate; ?>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Hospital Name</th>
                                            <th>Hospital District</th>
                                            <th>Petowner Name</th>
                                            <th>Treatment Type</th>
                                            <th>Animal Category</th>
                                            <th>Appointment Date</th>

                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                    <?php
                              
                              $query2="SELECT * FROM `appointment` WHERE reservedDate = '$todayDate'";

                              if($query_run = mysqli_query($con,$query2)){ 
                                  while ($row = mysqli_fetch_assoc($query_run)){
                                      ?>

                              <tr>
                                  <td><?php echo $row['Hospital_name']; ?></td>
                                  <td><?php echo $row['Hospital_district'] ?></td>
                                  <td><?php echo $row['Petowner_name'] ?></td>
                                  <td><?php echo $row['Treatment_type']?></td>
                                  <td><?php echo $row['Animal_category']?></td>
                                  <td><?php echo $row['appointmentDate']?></td>
                              </tr>
                      <?php
                          }
                          }else{
                              echo "Error in the query";
                          }
                      ?>

                                      
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
