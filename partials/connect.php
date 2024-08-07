<?php

$host="localhost";
$user= "root";
$password="";
$dbname="phpstore";

$connect= mysqli_connect($host,$user,$password,$dbname);

 if($connect->error){
     echo "no connection";
 }else{
     echo "connected";
 }

?>