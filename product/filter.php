<div id="filter" class="filter-container">
    <div class="filter-header">
        <h2>Bộ Lọc</h2>
        <button class="close-btn" onclick="closeFilter()">✖</button>
    </div>

    <div class="filter-section1">
        <h3>Màu sắc</h3>
        <label><input type="checkbox" class="color-filter" value="xanh"> Xanh</label>
        <label><input type="checkbox" class="color-filter" value="do"> Đỏ</label>
    </div>

    <div class="filter-section1">
        <h3>Lọc Theo Giá:</h3>
        <input type="range" min="0" max="20000000" value="20000000" class="price-slider">
        <p><span id="price-value">20.000.000</span> VND</p>
    </div>

    <div class="filter-section1">
        <h3>Lọc theo đánh giá</h3>
        <label><input type="checkbox" class="rating-filter" value="5"> ⭐⭐⭐⭐⭐ (5)</label><br>
        <label><input type="checkbox" class="rating-filter" value="4"> ⭐⭐⭐⭐☆ (4)</label><br>
        <label><input type="checkbox" class="rating-filter" value="3"> ⭐⭐⭐☆☆ (3)</label><br>
        <label><input type="checkbox" class="rating-filter" value="2"> ⭐⭐☆☆☆ (2)</label><br>
        <label><input type="checkbox" class="rating-filter" value="1"> ⭐☆☆☆☆ (1)</label>
    </div>
</div>
