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
          <div class="container-fluid">
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">NOME</th>
                      <th scope="col">PREÇO</th>
                      <th scope="col">DESCRIÇAO</th>
                      <th scope="col">IMAGEM</th>
                    </tr>
                  </thead>
                  <?php
                  include('../partials/connect.php');

                  $id=$_GET['pro_id'];
                  $sql="SELECT * from products WHERE id='$id'";
                  $results=$connect->query($sql);

                  $final=$results->fetch_assoc();        
                  ?>
                  <tbody>
                    <tr>
                      <td>
                        <h3><?php echo $final['name']?> </h3>
                      </td>
                      <td>
                        <h3><?php echo $final['price']?> </h3>
                      </td>
                      <td>
                        <h3><?php echo $final['description']?> </h3>
                      </td>
                      <td>
                        <div class="zoom">
                          <img src="../<?php echo $final['picture'] ?>" alt="No File" style="height:50px; width:50px">
                        </div>
                      </td>
                    </tr>
                  </tbody>
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
