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
        <!-- Danh sách sản phẩm (JS có thể đổ vào đây) -->
    </div>

    <div class="list-page" id="pagination">
        <ul>
            <?php
            $sql_trang = mysqli_query($conn, "SELECT * FROM products");
            $row_conut = mysqli_num_rows($sql_trang);
            $trang = ceil($row_conut / 4);
            for ($i = 1; $i <= $trang; $i++) {
                echo '<li><a href="#" class="page-link" data-page="'.$i.'">'.$i.'</a></li>';
            }
            ?>
        </ul>
    </div>
</div>
