<?php
include "conect.php";

$limit = isset($_GET['limit']) ? intval($_GET['limit']) : 4;
$search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';
$categoryId = isset($_GET['id']) ? intval($_GET['id']) : 0;

$sql = "SELECT COUNT(*) as total FROM products WHERE 1";

if ($categoryId > 0) {
    $sql .= " AND id_danhmuc = $categoryId";
}

if (!empty($search)) {
    $sql .= " AND name_product LIKE '%$search%'";

}

$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

$total = $row['total'];
$totalPages = ceil($total / $limit);

echo json_encode(["totalPages" => $totalPages]);
?>
