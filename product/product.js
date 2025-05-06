let currentCategoryId, currentPage, currentLimit, currentSearch;
let productList, paginationContainer, limitSelect;

function getQueryParam(param) {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get(param);
}

function loadPage(page, limit) {
    let url = `product/fetch_products.php?page=${page}&limit=${limit}`;
    if (currentCategoryId) {
        url += `&id=${currentCategoryId}`;
    }
    if (currentSearch) {
        url += `&search=${encodeURIComponent(currentSearch)}`;
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

function searchProduct() {
    console.log("searchProduct được gọi");
    const query = document.getElementById('searchInput').value.trim();
    currentSearch = query;
    currentPage = 1;
    loadPage(currentPage, currentLimit);
    let newUrl = `product.php?page=1&limit=${currentLimit}`;
    if (currentCategoryId) newUrl += `&id=${currentCategoryId}`;
    if (query) newUrl += `&search=${encodeURIComponent(query)}`;
    history.pushState(null, "", newUrl);
}

document.addEventListener("DOMContentLoaded", function () {
    currentCategoryId = getQueryParam("id");
    currentPage = parseInt(getQueryParam("page")) || 1;
    currentLimit = parseInt(getQueryParam("limit")) || 4;
    currentSearch = getQueryParam("search") || "";

    productList = document.querySelector(".product-list-2");
    paginationContainer = document.querySelector(".list-page ul");
    limitSelect = document.getElementById("product-limit");

    if (limitSelect) {
        limitSelect.value = currentLimit;

        limitSelect.addEventListener("change", function () {
            currentLimit = parseInt(this.value);
            currentPage = 1;
            loadPage(currentPage, currentLimit);
            let newUrl = `product.php?page=${currentPage}&limit=${currentLimit}`;
            if (currentCategoryId) newUrl += `&id=${currentCategoryId}`;
            if (currentSearch) newUrl += `&search=${encodeURIComponent(currentSearch)}`;
            history.pushState(null, "", newUrl);
        });
    }

    paginationContainer.addEventListener("click", function (e) {
        if (e.target.classList.contains("page-link")) {
            e.preventDefault();
            const selectedPage = parseInt(e.target.dataset.page);
            if (selectedPage !== currentPage) {
                currentPage = selectedPage;
                loadPage(currentPage, currentLimit);
                let newUrl = `product.php?page=${currentPage}&limit=${currentLimit}`;
                if (currentCategoryId) newUrl += `&id=${currentCategoryId}`;
                if (currentSearch) newUrl += `&search=${encodeURIComponent(currentSearch)}`;
                history.pushState(null, "", newUrl);
            }
        }
    });

    document.getElementById("searchButton").addEventListener("click", searchProduct);

    loadPage(currentPage, currentLimit);
});
