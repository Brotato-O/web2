function filter() {
    document.getElementById("filter").style.display = "block";
}

function closeFilter() {
    document.getElementById("filter").style.display = "none";
}


document.addEventListener("DOMContentLoaded", function () {
    let currentCategoryId = null;  // Biến lưu ID của danh mục hiện tại
    let currentPage = 1;           // Biến lưu trang hiện tại
    let currentLimit = 4;          // Biến lưu số lượng sản phẩm trên mỗi trang

    const productList = document.querySelector(".product-list-2"); // Phần hiển thị sản phẩm
    const paginationContainer = document.querySelector(".list-page ul"); // Phần hiển thị phân trang
    const limitSelect = document.getElementById("product-limit"); // Select box để thay đổi số lượng sản phẩm mỗi trang

    // Gắn sự kiện cho các link danh mục
    document.querySelectorAll(".category-link").forEach(link => {
        link.addEventListener("click", function (e) {
            e.preventDefault();  // Ngừng hành động mặc định (chuyển trang)

            currentCategoryId = this.dataset.id === "all" ? null : this.dataset.id;  // Kiểm tra nếu "Hiển thị tất cả sản phẩm"
            currentPage = 1;  // Reset về trang 1
            loadPage(currentPage, currentLimit);  // Tải lại sản phẩm

            // Cập nhật URL với tham số id (hoặc null nếu là tất cả sản phẩm)
            const newUrl = `product.php?page=${currentPage}&limit=${currentLimit}${currentCategoryId ? '&id=' + currentCategoryId : ''}`;
            history.pushState(null, "", newUrl);  // Cập nhật URL mà không reload trang
        });
    });

    // Hàm tải dữ liệu sản phẩm
    function loadPage(page, limit) {
        let url = `product/fetch_products.php?page=${page}&limit=${limit}`;
        if (currentCategoryId) {
            url += `&id=${currentCategoryId}`;  // Thêm id danh mục nếu có
        }

        fetch(url)
            .then(res => res.text())
            .then(html => {
                productList.innerHTML = html; // Cập nhật danh sách sản phẩm

                // Fetch tổng số trang
                fetch(`product/fetch_total_pages.php?limit=${limit}${currentCategoryId ? '&id=' + currentCategoryId : ''}`)
                    .then(res => res.json())
                    .then(data => {
                        paginationContainer.innerHTML = "";
                        for (let i = 1; i <= data.totalPages; i++) {
                            paginationContainer.innerHTML += `<li><a href="#" class="page-link" data-page="${i}">${i}</a></li>`;
                        }
                    });
            });
    }

    // Khi thay đổi số lượng sản phẩm mỗi trang
    limitSelect.addEventListener("change", function () {
        currentLimit = parseInt(this.value);
        currentPage = 1;  // Reset về trang đầu
        loadPage(currentPage, currentLimit);  // Tải lại trang với số sản phẩm mới
    });

    // Click phân trang
    paginationContainer.addEventListener("click", function (e) {
        if (e.target.classList.contains("page-link")) {
            e.preventDefault();
            currentPage = parseInt(e.target.dataset.page);
            loadPage(currentPage, currentLimit);
        }
    });

    // Khởi tạo tải trang đầu tiên
    loadPage(currentPage, currentLimit);
});
