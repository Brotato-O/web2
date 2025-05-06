<?php
include "conect.php";

// Nhận tham số GET
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$limit = isset($_GET['limit']) ? intval($_GET['limit']) : 4;
$begin = ($page - 1) * $limit;

$id_danhmuc = isset($_GET['id']) ? intval($_GET['id']) : null;
$search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : "";

// Xây dựng câu truy vấn
$sql = "SELECT * FROM products WHERE 1";

if ($id_danhmuc) {
    $sql .= " AND id_danhmuc = $id_danhmuc";
}
if (!empty($search)) {
    $sql .= " AND name_product LIKE '%$search%'";
}

$sql .= " LIMIT $begin, $limit";

// Thực thi truy vấn
$result = mysqli_query($conn, $sql);

// Kiểm tra lỗi truy vấn
if (!$result) {
    http_response_code(500);
    echo "<div style='color: red;'>Lỗi truy vấn: " . mysqli_error($conn) . "</div>";
    exit;
}

// Kiểm tra dữ liệu rỗng
if (mysqli_num_rows($result) === 0) {
    echo "<div style='padding: 1rem; color: gray;'>Không tìm thấy sản phẩm nào.</div>";
    exit;
}

// Hiển thị danh sách sản phẩm
while ($row = mysqli_fetch_array($result)) {
?>
    <div class="product2">
        <!-- Kiểm tra lại đường dẫn này nếu ảnh không hiển thị -->
        <img src="img/<?php echo htmlspecialchars($row['image']); ?>" alt="">
        <div class="name_product"><?php echo htmlspecialchars($row['name_product']); ?></div>
        <div class="price_product"><?php echo htmlspecialchars($row['price']); ?> VND</div>
    </div>
<?php
}
?>
