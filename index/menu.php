<?php include __DIR__ . '/../product/conect.php'; ?>
<section id="menu">
    <ul class="menu-bar">
        <li><i class="fa-solid fa-bars"></i> <a href="#" class="category-link" data-id="all"><p>DANH MỤC SẢN PHẨM</p>
            <ul class="category-menu">
              
                    <?php
                    $sql_danhmuc = "SELECT * FROM DANHMUC";
                    $result_danhmuc = mysqli_query($conn, $sql_danhmuc);

                    while ($row = mysqli_fetch_assoc($result_danhmuc)) {
                    ?>
                        <li>
                            <a href="#" class="category-link" data-id="<?php echo $row['id_danhmuc']; ?>">
                                <?php echo htmlspecialchars($row['name_danhmuc']); ?>
                            </a>
                        </li>
                    <?php
                    }
                    ?>
            </ul>
        </li>
            <li><a>Trang chủ</a></li>
            <li>Sản phẩm
                <ul class="category-menu2">
                    <li>Áo</li>
                    <li>Quần</li>
                    <li>Giày</li>
                    <li>Phụ kiện</li>
                </ul>
            </li>
            <li><a>Flash sale</a></li>
            <li><a>Liên hệ</a></li>
            <li><a>Bài viết</a></li>
        </ul>
    </section>