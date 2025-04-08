<?php
include "conect.php";

$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$limit = isset($_GET['limit']) ? intval($_GET['limit']) : 4;
$begin = ($page - 1) * $limit;

$sql = "SELECT * FROM products LIMIT $begin, $limit";
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
