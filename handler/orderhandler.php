<?php
session_start();
include('../partials/connect.php');

$total=$_POST['total'];

$phone=$_POST['phone'];

$address=$_POST['address'];
$customerid=$_SESSION['customerid'];
$payment=$_POST['payment'];

$sql="INSERT INTO orders(customer_id, address, phone, total, pay_method) VAlUES('$customerid','$address','$phone','$total', '$payment')";
$connect->query($sql);


$sql2="Select id from orders order by id DESC limit 1";
$result=$connect->query($sql2);
$final=$result->fetch_assoc();
$orderid=$final['id'];



foreach ($_SESSION['cart'] as $key => $value) {
	$proid=$value['item_id'];
	$quantity=$value['quantity'];


	$sql3="INSERT Into order_details(order_id,product_id,quantity,pay_method) VAlUES('$orderid','$proid','$quantity','$payment')";
	$connect->query($sql3);
	# code...
}
if ($payment=="paypal") {
	$_SESSION['total']=$total;
	echo '<script>window.open("http://www.google.com/");</script>';
}else{
	echo "<script> alert('ORDER IS PLACED');
		window.location.href='../index.php';
		</script>";
}
unset($_SESSION['cart']);

?>