<div id="header" class="bg-white d-flex justify-content-between">
  <div id="header_left" class="d-flex align-items-center">
    <button class="btn btn-primary ms-3 me-3" onclick="toggleSidebar()">
      <i class="fa-solid fa-bars"></i>
    </button>
    <form action="" method="post">
      <input class="border-0 fs-5 w-100" type="search" name="" id="search"
        placeholder="Search for something..." />
    </form>
  </div>
  <div id="header_right" class="bg-white">
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
        <ul class="navbar-nav d-flex align-items-center">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#"><img src="../anh.jpg" width="40px"
                alt="logo" style="margin-right: -20px" /></a>
          </li>
          <li class="nav-item position-relative">
            <a class="nav-link" href="#"><i class="fa-solid fa-envelope fs-4 px-4"
                style="color: #63e6be"></i>
              <span class="badge position-absolute bg-warning top-0"
                style="margin-left: -10px">10</span></a>
          </li>
          <li class="nav-item position-relative">
            <a class="nav-link" href="#"><i class="fa-solid fa-bell fs-4 px-4" style="color: #63e6be"></i>
              <span class="badge position-absolute bg-warning top-0"
                style="margin-left: -10px">10</span></a>
          </li>
          <li class="nav-item ps-4">
            <a class="nav-link" href="#">
              <i class="fa-solid fa-right-from-bracket" style="color: #63e6be"></i>
              <span id="logoutAdmin">Log out</span>
            </a>
          </li>
        </ul>
      </div>
    </nav>
  </div>
  <script src="../assets/jsAdminLogin.js"></script> <!-- Đảm bảo file được import -->
</div>