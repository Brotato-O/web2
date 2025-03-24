<?php
include __DIR__ . '/../includes/cardRevenue.php';
?>
<div id="turnover_product">
    <div class="row my-3 container">
        <div class="col-5">
            <div class="fs-3 py-2 fw-bold">
                Báo cáo doanh thu theo sản phẩm
            </div>
            <div class="py-2">Nhập thông tin chung của người sử dụng</div>
            <div>
                Lưu ý: Những trường đánh dấu
                <span class="text-danger">(*)</span> là bắt buộc
            </div>
        </div>
        <div class="col-7">
            <div class="fs-3 py-2 fw-bold">Chọn khoảng thời gian:</div>
            <div class="bg-body-secondary p-3">
                <div class="row g-0">
                    <div class="col-6 p-0">
                        <div class="py-2">
                            Ngày bắt đầu <span class="text-danger">(*)</span>
                        </div>
                        <input type="date" class="form-control w-75" />
                    </div>
                    <div class="col-6 p-0">
                        <div class="py-2">
                            Ngày kết thúc <span class="text-danger">(*)</span>
                        </div>
                        <input type="date" class="form-control w-75" />
                    </div>
                </div>
                <button type="button" class="btn btn-primary mt-3">
                    Gửi báo cáo
                </button>
            </div>
        </div>
    </div>
    <div class="bg-white mt-5">
        <div class="container p-3">
            <table class="table table-info table-bordered table-striped border-dark-subtle">
                <thead>
                    <tr>
                        <th class="text-center">SKU</th>
                        <th class="text-center w-25">Tên SP</th>
                        <th class="text-center">SL khách</th>
                        <th class="text-center">SL hàng bán</th>
                        <th class="text-center">Tiền hàng(vnđ)</th>
                        <th class="text-center">Tổng chiết khấu(vnđ)</th>
                        <th class="text-center">Doanh thu(vnđ)</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
</div>