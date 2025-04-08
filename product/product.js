function filter() {
    document.getElementById("filter").style.display = "block";
}

function closeFilter() {
    document.getElementById("filter").style.display = "none";
}


document.addEventListener("DOMContentLoaded", function () {
    let currentPage = 1;
    let currentLimit = 4;

    const productList = document.querySelector(".product-list-2");
    const paginationContainer = document.querySelector(".list-page ul");
    const limitSelect = document.getElementById("product-limit");

    function loadPage(page, limit) {
        fetch(`fetch_products.php?page=${page}&limit=${limit}`)
            .then(res => res.text())
            .then(html => {
                productList.innerHTML = html;

                // Update URL
                history.pushState(null, "", `?page=${page}&limit=${limit}`);

                // Fetch total product count to update pagination
                fetch(`fetch_total_pages.php?limit=${limit}`)
                    .then(res => res.json())
                    .then(data => {
                        paginationContainer.innerHTML = "";
                        for (let i = 1; i <= data.totalPages; i++) {
                            paginationContainer.innerHTML += `<li><a href="#" class="page-link" data-page="${i}">${i}</a></li>`;
                        }
                    });
            });
    }

    // On limit change
    limitSelect.addEventListener("change", function () {
        currentLimit = parseInt(this.value);
        currentPage = 1; // Reset về trang đầu
        loadPage(currentPage, currentLimit);
    });

    // Click pagination
    paginationContainer.addEventListener("click", function (e) {
        if (e.target.classList.contains("page-link")) {
            e.preventDefault();
            currentPage = parseInt(e.target.dataset.page);
            loadPage(currentPage, currentLimit);
        }
    });

    // Init
    loadPage(currentPage, currentLimit);
});


