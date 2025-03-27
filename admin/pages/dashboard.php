<?php
//Tráng việc click lần 2 vào dashboard
include __DIR__ . '/../includes/cardRevenue.php';
?>
<div id="Dashboard">
    <!-- Vẽ biểu đồ -->
    <div id="chart" class="bg-white my-3">
        <div id="title-chart " class="container d-flex justify-content-between border-bottom py-3 align-items-center">
            <div class="fs-5 small">BIỂU ĐỒ DOANH THU NĂM 2025</div>
            <div class="btn-group border border-black">
                <button id="btn_chart_year" type="button " class="btn btn-outline-light text-black">
                    Biểu đổ năm
                </button>
                <button id="btn_chart_month" type="button " class="btn btn-outline-light text-black">
                    Biểu đổ tháng
                </button>
            </div>
        </div>
        <div class="d-flex">
            <canvas id="myChart" class="ps-5" height="360" width="1100"
                style="height: 240px; width: 100%; max-width: 800px">
            </canvas>
            <span>Tổng số đơn hàng : 60</span>
        </div>
    </div>
    <!-- Danh sách đơn hàng -->
    <div id="orderList" class="bg-white my-3">
        <div class="container border-bottom fs-5 small py-3">
            DANH SÁCH ĐƠN HÀNG MỚI
        </div>
        <div class="container">
            <div class="text-danger py-2">
                *Tổng cuối là tổng chưa bao gồm giảm giá
            </div>
            <div class="pb-5">
                <table class="table table-info table-bordered table-striped border-dark-subtle">
                    <thead>
                        <tr>
                            <th class="text-center">Mã</th>
                            <th class="text-center">Ngày tạo</th>
                            <th class="text-center">Khách hàng</th>
                            <th class="text-center">Giảm giá(vnđ)</th>
                            <th class="text-center">Tổng cuối(vnđ)</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>