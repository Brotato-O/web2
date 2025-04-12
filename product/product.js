document.addEventListener("DOMContentLoaded", function () {
    // Helper: Lấy tham số từ URL
    function getQueryParam(param) {
        const urlParams = new URLSearchParams(window.location.search);
        return urlParams.get(param);
    }

    let currentCategoryId = getQueryParam("id"); // id có thể null
    let currentPage = parseInt(getQueryParam("page")) || 1;
    let currentLimit = parseInt(getQueryParam("limit")) || 4;

    const productList = document.querySelector(".product-list-2");
    const paginationContainer = document.querySelector(".list-page ul");
    const limitSelect = document.getElementById("product-limit");

    if (limitSelect) {
        limitSelect.value = currentLimit;
    }

    // Hàm tải sản phẩm bằng AJAX
    function loadPage(page, limit) {
        let url = `product/fetch_products.php?page=${page}&limit=${limit}`;
        if (currentCategoryId) {
            url += `&id=${currentCategoryId}`;
        }

        fetch(url)
            .then(res => res.text())
            .then(html => {
                productList.innerHTML = html;

                // Lấy tổng số trang và tạo phân trang
                fetch(`product/fetch_total_pages.php?limit=${limit}${currentCategoryId ? '&id=' + currentCategoryId : ''}`)
                    .then(res => res.json())
                    .then(data => {
                        paginationContainer.innerHTML = "";
                        for (let i = 1; i <= data.totalPages; i++) {
                            const activeClass = (i === page) ? 'active' : '';
                            paginationContainer.innerHTML += `
                                <li><a href="#" class="page-link ${activeClass}" data-page="${i}">${i}</a></li>
                            `;
                        }
                    });
            });
    }

    // Thay đổi limit => AJAX + update URL
    if (limitSelect) {
        limitSelect.addEventListener("change", function () {
            currentLimit = parseInt(this.value);
            currentPage = 1;
            loadPage(currentPage, currentLimit);
            const newUrl = `product.php?page=1&limit=${currentLimit}${currentCategoryId ? '&id=' + currentCategoryId : ''}`;
            history.pushState(null, "", newUrl);
        });
    }

    // Phân trang => AJAX + update URL
    paginationContainer.addEventListener("click", function (e) {
        if (e.target.classList.contains("page-link")) {
            e.preventDefault();
            const selectedPage = parseInt(e.target.dataset.page);
            if (selectedPage !== currentPage) {
                currentPage = selectedPage;
                loadPage(currentPage, currentLimit);
                const newUrl = `product.php?page=${currentPage}&limit=${currentLimit}${currentCategoryId ? '&id=' + currentCategoryId : ''}`;
                history.pushState(null, "", newUrl);
            }
        }
    });

    // Load dữ liệu lần đầu
    loadPage(currentPage, currentLimit);
});
