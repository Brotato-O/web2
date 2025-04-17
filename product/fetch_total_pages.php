<?php
include "conect.php";

$limit = isset($_GET['limit']) ? intval($_GET['limit']) : 4;

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);  // Lấy ID danh mục từ tham số GET
    $sql = "SELECT COUNT(*) as total FROM products WHERE id_danhmuc = $id";  // Đếm sản phẩm theo danh mục
} else {
    $sql = "SELECT COUNT(*) as total FROM products";  // Đếm tất cả sản phẩm nếu không có ID danh mục
}

$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

$total = $row['total'];
$totalPages = ceil($total / $limit);

echo json_encode(["totalPages" => $totalPages]);
?>
