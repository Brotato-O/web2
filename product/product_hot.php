<div class="product-list-1">
    <h2>SẢN PHẨM NỔI BẬT</h2>
    <?php
        $sql1 = "SELECT * FROM products";
        $result1 = mysqli_query($conn, $sql1);
        while ($row = mysqli_fetch_array($result1)) {
            if ($row["hot"] == 1) {
    ?>
    <div class="product">
        <div><img src="img/<?php echo $row['image']; ?>" alt=""></div>
        <div class="product-info">
            <h3><?php echo $row['name_product']; ?></h3>
            <div class="price"><?php echo $row['price']; ?></div>
        </div>
    </div>
    <?php } } ?>
</div>
