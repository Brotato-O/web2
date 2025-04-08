
<?php
include "conect.php";
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
                    $sql1 = "SELECT * FROM products ";
                    $result1 = mysqli_query($conn, $sql1);
                    while ($row = mysqli_fetch_array($result1)) {
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
                    <select class="product-select" id="product-limit">
                        <option value="1">1 sản phẩm</option>
                        <option value="4" selected>4 sản phẩm</option>
                        <option value="8">8 sản phẩm</option>
                        <option value="12">12 sản phẩm</option>
                    </select>

    
                </div>
            </div>
            
        
            <div class="product-list-2" id="product-container">
    
            </div>

            <div class="list-page" id="pagination">
                <ul>
                    <?php
                    $sql_trang = mysqli_query($conn,"SELECT * FROM products");
                    $row_conut = mysqli_num_rows($sql_trang);
                    $trang = ceil($row_conut / 4);
                    for($i = 1; $i <= $trang; $i++) {
                        echo '<li><a href="#" class="page-link" data-page="'.$i.'">'.$i.'</a></li>';
                    }
                    ?>
                </ul>
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
