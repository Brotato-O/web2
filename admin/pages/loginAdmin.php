<?php
session_start();
if (isset($_SESSION["email"])) {
    header("Location: ../indexAdmin.php");
    exit();
}
?>

<head>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css" />
</head>

<body>
    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="row justify-content-center">
            <div class="col-5 d-flex flex-column gap-3 me-5">
                <div class="title-login fs-1 fw-semibold">Dashboard</div>
                <div>Chào mừng bạn đến với Bảng điều khiển Quản trị!</div>
                <div>
                    Vui lòng đăng nhập để truy cập và quản lý các chức năng cốt lõi của
                    trang web.
                </div>
                <div>
                    Tại đây, bạn có thể theo dõi hiệu suất, cập nhật nội dung, quản lý
                    người dùng và nhiều hơn nữa.
                </div>
                <div>
                    Hãy đảm bảo rằng thông tin đăng nhập của bạn được bảo mật và chỉ
                    những người có thẩm quyền mới được truy cập.
                </div>
                <div>Hãy bắt đầu và giữ cho hoạt động của bạn luôn suôn sẻ!</div>
            </div>

            <div class="col-5 pt-5 px-4 border rounded-3 bg-body-secondary">
                <div>
                    <form id="loginForm" class="needs-validation" novalidate>
                        <div class="w-100 py-3">
                            <input name="email" type="email" class="form-control fs-5" id="validationCustom01"
                                placeholder="Email" required />
                            <div class="invalid-feedback">* Email không được để trống!</div>
                        </div>
                        <div class="w-100 pb-4">
                            <input name="password" type="password" class="form-control fs-5" id="validationCustom02"
                                placeholder="Password" required />
                            <div class="invalid-feedback">
                                * Mật khẩu không được để trống!
                            </div>
                        </div>
                        <div id="errorMessage" class="text-danger mb-3" style="display: none;"></div>
                        <button class="btn btn-primary w-100" type="submit">
                            Đăng nhập
                        </button>
                    </form>

                    <div class="py-3">Đăng nhập để vào trang quản trị</div>
                </div>
            </div>
        </div>
    </div>
    <script src="../assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/jsAdminLogin.js"></script> <!-- Sử dụng file jsAdminLogin.js -->
</body>