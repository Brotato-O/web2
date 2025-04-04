<!-- Dùng để kiểm tra Session trên mọi trang -->
<?php
session_start();
if (!isset($_SESSION["email"])) {
    header("Location: /web2/admin/pages/loginAdmin.php");
    exit();
}
