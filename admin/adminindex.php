<!DOCTYPE html>
<html>
<?php
include ('adminpartials/session.php');
include ('adminpartials/head.php');
?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php
  include ('adminpartials/header.php');
  include ('adminpartials/aside.php');
  ?>
 

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
      <div>
        <a href="product.php">
          <button class="btn btn-primary">
            Add Products
          </button>
        </a>
      </div>
      <div style="padding: 10px 0px 0px 0px;">
        <a href="categories.php">
          <button class="btn btn-primary">
            Add Categories
          </button>
        </a>
      </div>
      <div style="padding: 10px 0px 0px 0px;">
        <a href="orders.php">
          <button class="btn btn-primary">
            Show orders
          </button>
        </a>
      </div>
      <hr>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php
include ('adminpartials/footer.php');

?>
</body>
</html>
