<!-- Xóa tất cả các Session khi đăng xuất -->
<?php
session_start();
session_destroy();
header("Location: loginAdmin.php");
exit();
?>