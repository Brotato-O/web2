
<?php
                    include "conect.php";
                    $sql = "SELECT * FROM products";
                    $result = mysqli_query($conn, $sql); 
                    $products = [];
                    while ($row = mysqli_fetch_array($result)) {
                     $products[] = $row; // Lưu toàn bộ dữ liệu vào mảng
}
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản Phẩm Nổi Bật</title>
    <link rel="stylesheet" href="product.css">
    <script src="product.js"></script>
</head>
<body>
    <div class="page-product">
        <div class="product-list-1">
            <h2>SẢN PHẨM NỔI BẬT</h2>
            <?php
                     foreach ($products as $row) { // Mở vòng lặp while
                        if($row["hot"]==1) {
                ?>

            <div class="product">
                <div><img src="../img/<?php echo $row['image']; ?>" alt=""></div>
                <div class="product-info">
                    <h3> <?php echo $row['name_product']; ?> </h3>
                    <div class="price"><?php echo $row['price']; ?></div>
                </div>
            </div>
            <?php }
            } ?> 
        </div>

        <div class="product">
            <div class="product-bar">
                
                <h2 class="title">SẢN PHẨM</h2>
                <div class="filter-section">
                    <button class="filter-btn" onclick="filter()">
                        <i class="fa-solid fa-filter"></i> Bộ Lọc
                        
                    </button>
                    <span class="display-text">Hiển thị</span>
                    <select class="product-select">
                        <option>a0 sản phẩm</option>
                        <option>40 sản phẩm</option>
                        <option>60 sản phẩm</option>
                        <option>80 sản phẩm</option>
                        <option>100 sản phẩm</option>
                    </select>
    
                </div>
            </div>
            
        
            <div class="product-list-2">
                <?php
                    foreach ($products as $row) { // Mở vòng lặp while
                ?>
                <div class="product2">
                    <img src="../img/<?php echo $row['image']; ?>" alt="">
                    <div class="name_product">
                    <?php echo $row['name_product']; ?>
                    </div>
                    <div class="price_product">
                    <?php echo $row['price']; ?>
                    </div>
                </div>
                <?php } ?> 
            </div>

        </div>
    </div>
    <div id="filter" class="filter-container" >
        <div class="filter-header">
            <h2>Bộ Lọc</h2>
            <button class="close-btn"  onclick="closeFilter()">✖</button>
        </div>

        <!-- Lọc theo màu sắc -->
        <div class="filter-section1">
            <h3>Màu sắc</h3>
            <label><input type="checkbox" class="color-filter" value="xanh"> Xanh</label>
            <label><input type="checkbox" class="color-filter" value="do"> Đỏ</label>
        </div>

        <!-- Lọc theo giá -->
        <div class="filter-section1">
            <h3>Lọc Theo Giá:</h3>
            <input type="range" min="0" max="20000000" value="20000000" class="price-slider">
            <p> <span id="price-value">20.000.000</span> VND</p>
        </div>

        <!-- Lọc theo đánh giá -->
        <div class="filter-section1">
            <h3>Lọc theo đánh giá</h3>
            <label><input type="checkbox" class="rating-filter" value="5"> ⭐⭐⭐⭐⭐ (5)</label><br>
            <label><input type="checkbox" class="rating-filter" value="4"> ⭐⭐⭐⭐☆ (4)</label><br>
            <label><input type="checkbox" class="rating-filter" value="3"> ⭐⭐⭐☆☆ (3)</label><br>
            <label><input type="checkbox" class="rating-filter" value="4"> ⭐⭐☆☆☆ (2)</label><br>
            <label><input type="checkbox" class="rating-filter" value="3"> ⭐☆☆☆☆ (1)</label>
        </div>
    </div>
</body>

</html>
