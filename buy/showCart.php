<?php 
    $conn= mysqli_connect("localhost", "root", "", "webquanao");
    if(!$conn) {
        die("Lỗi kết nối");
    };
    $query= "SELECT * FROM cart";
    $name = array();
    $price = array();
    $quantity = array();
    $total = array();
    $size = array();
    $img = array();
    $result= mysqli_query($conn, $query);
    while($row= mysqli_fetch_array($result)){
        $id[] = $row["id"];
        $name[] = $row["name"];
        $price[] = $row["price"];
        $quantity[] = $row["quantity"];
        $total[] = $row["total"];
        $size[] = $row["size"];
        $img[] = $row["img"];
    }
    echo json_encode([
        "id" => $id,
        "name" => $name,
        "price" => $price,
        "quantity" => $quantity,
        "total" => $total,
        "size" => $size,
        "img" => $img
    ]);
?>