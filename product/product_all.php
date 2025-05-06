<div class="product">
    <div class="product-bar">
        <h2 class="title">SẢN PHẨM</h2>
        <div class="filter-section">
            <button class="filter-btn" onclick="filter()">
                <i class="fa-solid fa-filter"></i> Bộ Lọc
            </button>
            <span class="display-text">Hiển thị</span>
            <select class="product-select" id="product-limit">
                <option value="1">1 sản phẩm</option>
                <option value="4" selected>4 sản phẩm</option>
                <option value="8">8 sản phẩm</option>
                <option value="12">12 sản phẩm</option>
            </select>
        </div>
    </div>

    <div class="product-list-2" id="product-container">
        <!-- Danh sách sản phẩm sẽ được JS đổ vào đây -->
    </div>

    <div class="list-page" id="pagination">
        <ul></ul> <!-- JavaScript sẽ render phân trang tại đây -->
    </div>
</div>
