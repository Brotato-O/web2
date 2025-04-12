<?php
include "conect.php";

$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$limit = isset($_GET['limit']) ? intval($_GET['limit']) : 4;
$begin = ($page - 1) * $limit;

if (isset($_GET['id'])) {
    $id_danhmuc = $_GET['id'];  // Lấy ID danh mục từ tham số GET
    $sql = "SELECT * FROM products WHERE id_danhmuc = $id_danhmuc LIMIT $begin, $limit";  // Lọc sản phẩm theo danh mục
} else {
    $sql = "SELECT * FROM products LIMIT $begin, $limit";  // Hiển thị tất cả sản phẩm nếu không có ID danh mục
}

$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_array($result)) {
    ?>
    <div class="product2">
        <img src="../img/<?php echo $row['image']; ?>" alt="">
        <div class="name_product"><?php echo $row['name_product']; ?></div>
        <div class="price_product"><?php echo $row['price']; ?></div>
    </div>
    <?php
}
?>
