<?php 
    require '../core.php';
    require '../database_connector.php';
    require '../functions.php';
    
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
           
            <!-- Navbar-->

            <a class="btn btn-light" href="../logout.php" style="color:#000; margin-left:75%;">Logout</a>
           
           </nav>
           <div id="layoutSidenav">
               <div id="layoutSidenav_nav">
                   <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                       <div class="sb-sidenav-menu">
                         <div class="nav">
                                <div class="sb-sidenav-menu-heading">Core</div>
                                <a class="nav-link" href="adminPanel.php">
                                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                    Dashboard
                                </a>
                                
                        </div>
                       </div>
                       <div class="sb-sidenav-footer">
                           <div class="small">Logged in as:</div>
                           Admin
                       </div>
                   </nav>
               </div>


            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Registered Hospitals</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminPanel.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Registered Hospitals</li>
                        </ol>
                      
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Registered Hospitals
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Address</th>
                                            <th>Email</th>
                                            <th>Phone number</th>
                                            <th>District</th>
                                            <th>Registered Date</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                    <?php

                              $query2="SELECT * FROM `hospital`";

                              if($query_run = mysqli_query($con,$query2)){ 
                                  while ($row = mysqli_fetch_assoc($query_run)){
                                    $h_id = $row['Hospital_id']
                                      ?>

                              <tr>
                                  <td><?php echo $row['H_name']; ?></td>
                                  <td><?php echo $row['H_address'] ?></td>
                                  <td><?php echo $row['H_email'] ?></td>
                                  <td><?php echo $row['H_phoneNumber']?></td>
                                  <td><?php echo $row['H_district']?></td>
                                  <td></td>
                                  <td><?php echo $row['status']?></td>

                                  <td>
                                  <a class="btn btn-danger" href="registeredHospitals_db.php?hos_id=<?php echo $h_id; ?>"> Remove </a>
                                  
                              </td>
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
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
