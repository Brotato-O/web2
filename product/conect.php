<?php 
$server='localhost';
$user='root';
$pass='';
$name='quanlybanhang';
$conn= new mysqLi($server,$user,$pass,$name);
if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
}
?>