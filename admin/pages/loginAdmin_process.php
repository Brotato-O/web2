<!-- Xử lý đăng nhập và lưu vô Session -->
<?php
session_start();
include_once "../db/queries/queriesEmp.php";
include_once "../db/connect.php";

// Đảm bảo không có output nào trước header
ob_clean();
header('Content-Type: application/json'); //Báo cho client biết phản hồi là JSON

try {
    $email_emp = $_POST['email'];
    $password_emp = $_POST['password'];

    $queriesEmp = new QueriesEmp();
    $arrEmp = $queriesEmp->getAllEmployees();

    $flag = false; //Kiểm tra đăng nhập thành công hay không

    while ($item = $arrEmp->fetch_assoc()) {
        if ($email_emp === $item['email'] && $password_emp === $item['password']) {
            $_SESSION["email"] = $email_emp;
            $flag = true;
            break;
        }
    }

    if ($flag == true) {
        echo json_encode([
            'success' => true,
            'message' => 'Đăng nhập thành công'
        ]);
    } else {
        echo json_encode([
            'success' => false,
            'message' => 'Email hoặc mật khẩu không chính xác'
        ]);
    }
} catch (Exception $e) {
    echo json_encode([
        'success' => false,
        'message' => 'Có lỗi xảy ra: ' . $e->getMessage()
    ]);
}
