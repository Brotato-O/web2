<?php
session_start();
session_destroy();
header('Content-Type: application/json'); // Đảm bảo phản hồi là JSON
echo json_encode(['success' => true, 'message' => 'Đăng xuất thành công']);
exit();
