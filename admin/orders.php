<!DOCTYPE html>
<html>
<?php
include('adminpartials/session.php');
include('adminpartials/head.php');
?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php
  include('adminpartials/header.php');
  include('adminpartials/aside.php');
  

  ?>
  <!-- Left side column. contains the logo and sidebar -->
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-sm-9">
          

        <div class="container overflow-hidden">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Customer ID</th>
                    <th scope="col">ADDRESS</th>
                    <th scope="col">PHONE</th>
                    <th scope="col">TOTAL</th>
                    <th scope="col">ACTION</th>
                  </tr>
                </thead>
                <?php
                include('../partials/connect.php');

                $sql = "SELECT * FROM orders";
                $results = $connect->query($sql);
                while ($final = $results->fetch_assoc()) { ?>


                  <tbody>
                    <tr>
                      <td>

                          <h3><?php echo $final['id'] ?></h3><br>

                      </td>
                      <td>

                          <h3><?php echo $final['customer_id'] ?></h3><br>
                      </td>
                      <td>

                          <h3><?php echo $final['address'] ?></h3><br>

                      </td>
                      <td>
                        <h3><?php echo $final['phone'] ?></h3><br>
                      </td>
                      <td>
                      <h3><?php echo $final['total'] ?></h3><br>
                      </td>
                      <td>
                        <a href="ordershow.php?pro_id=<?php echo $final['id']?>">
                          <button class="btn btn-primary btn-sm">View</button>
                        </a>
                        <a href="orderdelete.php?del_id=<?php echo $final['id'] ?>">
                          <button class="btn btn-danger btn-sm">Delete</button>
                        </a>
                      </td>
                    </tr>
                  </tbody>
                  <?php
                }
                ?>
              </table>
            </div>




        </div>

      
<div class="col-sm-3">

  </div>
</div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php
 include('adminpartials/footer.php');
 ?>
</body>
</html>
