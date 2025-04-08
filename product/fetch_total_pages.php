<?php
include "conect.php";

$limit = isset($_GET['limit']) ? intval($_GET['limit']) : 4;
$sql = "SELECT COUNT(*) as total FROM products";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

$total = $row['total'];
$totalPages = ceil($total / $limit);

echo json_encode(["totalPages" => $totalPages]);
?>