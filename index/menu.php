<?php include __DIR__ . '/../product/conect.php'; ?>
<section id="menu">
    <ul class="menu-bar">
        <li><i class="fa-solid fa-bars"></i><a href="product.php" class="category-link"><p>DANH MỤC SẢN PHẨM</p></a>
            <ul class="category-menu">
              
                    <?php
                    $sql_danhmuc = "SELECT * FROM DANHMUC";
                    $result_danhmuc = mysqli_query($conn, $sql_danhmuc);

                    while ($row = mysqli_fetch_assoc($result_danhmuc)) {
                    ?>
                          <li>
                        <a href="product.php?id=<?php echo $row['id_danhmuc']; ?>" class="category-link">
                            <?php echo htmlspecialchars($row['name_danhmuc']); ?>
                            </a>
                        </li>
                    <?php
                    }
                    ?>
            </ul>
        </li>
            <li><a href = "index.php">Trang chủ</a></li>
            <li><a href="product.php" class="category-link"><p>Sản phẩm</p></a>
                <ul class="category-menu2">
                <?php
                    $sql_danhmuc = "SELECT * FROM DANHMUC";
                    $result_danhmuc = mysqli_query($conn, $sql_danhmuc);

                    while ($row = mysqli_fetch_assoc($result_danhmuc)) {
                    ?>
                          <li>
                        <a href="product.php?id=<?php echo $row['id_danhmuc']; ?>" class="category-link">
                            <?php echo htmlspecialchars($row['name_danhmuc']); ?>
                            </a>
                        </li>
                    <?php
                    }
                    ?>
                </ul>
            </li>
            <li><a>Flash sale</a></li>
            <li><a>Liên hệ</a></li>
            <li><a>Bài viết</a></li>
        </ul>
    </section>