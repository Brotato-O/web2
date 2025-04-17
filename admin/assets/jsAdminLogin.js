// Hiển thị lỗi khi bấm nút đăng nhập trong admin
(function () {
  let forms = document.querySelectorAll(".needs-validation");

  Array.prototype.slice.call(forms).forEach(function (form) {
    form.addEventListener("submit", function (event) {
      if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
      }
      form.classList.add("was-validated");
    });
  });
})();

// Xử lý đăng nhập bằng AJAX
document.addEventListener("DOMContentLoaded", function () {
  const loginForm = document.getElementById("loginForm");
  if (loginForm) {
    loginForm.addEventListener("submit", function (e) {
      e.preventDefault();

      if (!this.checkValidity()) {
        e.stopPropagation();
        this.classList.add("was-validated");
        return;
      }
      const formData = new FormData(this);
      fetch("loginAdmin_process.php", {
        method: "POST",
        body: formData, //Mong đợi phản hồi từ server là Form
      })
        .then((response) => response.json())
        .then((data) => {
          if (data.success) {
            window.location.href = "../indexAdmin.php";
          } else {
            const errorDiv = document.getElementById("errorMessage");
            errorDiv.textContent = data.message;
            errorDiv.style.display = "block";
          }
        })
        .catch((error) => {
          console.error("Error:", error);
          const errorDiv = document.getElementById("errorMessage");
          errorDiv.textContent = "Có lỗi xảy ra, vui lòng thử lại sau";
          errorDiv.style.display = "block";
        });
    });
  }
});
// Xử lý đăng xuất bằng AJAX
document.addEventListener("DOMContentLoaded", function () {
  const logoutBtn = document.querySelector("#logoutAdmin");

  if (logoutBtn) {
    logoutBtn.addEventListener("click", function (e) {
      e.preventDefault();

      fetch("pages/logoutAdmin.php", {
        method: "POST",
      })
        .then((response) => response.json())
        .then((data) => {
          if (data.success) {
            window.location.href = "pages/loginAdmin.php";
          } else {
            alert("Đăng xuất thất bại! Vui lòng thử lại.");
          }
        })
        .catch((error) => {
          console.error("Lỗi:", error);
          alert("Có lỗi xảy ra, vui lòng thử lại sau!");
        });
    });
  }
});
