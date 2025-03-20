<?php 
    $conn= mysqli_connect("localhost", "root", "", "webquanao");
    if(!$conn) {
        die("Lỗi kết nối");
    };
    $fullName = $_POST["fullName"];
    $phoneNumber = $_POST["phoneNumber"];
    $email = $_POST["email"];
    $province = $_POST["province"];
    $district = $_POST["district"];
    $ward = $_POST["ward"];
    $address = $_POST["address"];

    $query= "create table customer(
        ID INT AUTO_INCREMENT PRIMARY KEY,
        FULLNAME VARCHAR(255),
        PHONENUMBER VARCHAR(255),
        EMAIL VARCHAR(255),
        PROVINCE VARCHAR(255),
        DISTRICT VARCHAR(255),
        WARD VARCHAR(255),
        ADDRESS VARCHAR(255)
    )";

    $query2= "INSERT INTO customer(FULLNAME, PHONENUMBER, EMAIL, PROVINCE, DISTRICT, WARD, `ADDRESS`) 
        VALUES ('$fullName', '$phoneNumber', '$email', '$province', '$district', '$ward', '$address')";

    $query3= "Delete from customer where id=1";
    mysqli_query($conn, $query3);
?>