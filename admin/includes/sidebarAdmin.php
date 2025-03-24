<div class="card border-0 my-4" style="background: none">
    <div class="card-header">
        <img src="../anh.jpg" class="rounded-circle" style="width: 100px; height: 100px" alt="" />
    </div>
    <div class="card-body">
        <h5 class="card-title">Quản trị viên</h5>
        <p class="card-text">Cài đặt</p>
    </div>
</div>
<nav class="navbar bg-warning">
    <div class="w-100">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a class="nav-link d-flex align-items-center" id="dashboard-link" href="pages/dashboard.php">
                    <i class="fa-solid fa-database"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link d-flex align-items-center dropdown-toggle" href="#" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
                    <i class="fa-solid fa-money-bill-1"></i><span>Báo cáo doanh thu</span>
                    <i class="fa-solid fa-angle-left ms-auto"></i>
                </a>
                <ul class="dropdown-menu ms-5 bg-warning">
                    <li>
                        <a class="dropdown-item" href="reports/revenue_time.php">
                            <span>Theo thời gian</span>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="reports/revenue_product.php">
                            <span>Theo sản phẩm</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link d-flex align-items-center dropdown-toggle" href="#" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
                    <i class="fa-solid fa-money-bill-1"></i><span>QL Sản Phẩm</span>
                    <i class="fa-solid fa-angle-left ms-auto"></i>
                </a>
                <ul class="dropdown-menu ms-5 bg-warning">
                    <li>
                        <a class="dropdown-item" href="products/categories.php">
                            <span>QL Nhóm Sản Phẩm</span>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="pages/manage_product.php">
                            <span>QL Sản Phẩm</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>