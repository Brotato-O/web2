<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TRANG ADMIN</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="assets/styleAdmin.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-2 bg-warning min-vh-100 flex-column" id="sidebar">
                <?php include "includes/sidebarAdmin.php"; ?>
            </div>
            <div class="col-10 bg-danger">
                <?php include "includes/headerAdmin.php"; ?>
                <div id="middle-content" class="container"></div>
                <?php include "includes/footerAdmin.php" ?>

            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/jsAdmin.js"></script>

</body>

</html>