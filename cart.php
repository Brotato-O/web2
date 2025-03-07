<html>
    <head>
        <link href="cart.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    </head>
    <body>
        <form>
        <h2 class="heading-cart">THÔNG TIN ĐẶT HÀNG</h2>
        <div class="wrapper-cart">
            <div class="left-cart">
              <?php 
                include("inforCustomer.php");
                include("payMethod.php");
              ?>  
                
            </div>
            <div class="right-cart">
                <h2>Đơn hàng</h2>
                <div class="product-cart"></div>
                <div class="summary">
                    <div class="summary-item">
                        <div>Giảm giá</div>
                        <div style="color: red">-0đ</div>
                    </div>
                    <div class="summary-item">
                        <div>Phí vận chuyển</div>
                        <div>Miễn phí</div>
                    </div>
                    <div class="summary-item">
                        <div>Tổng tiền</div>
                        <div class="cart-total">0đ</div>
                    </div>
                    <input type="button" value="Chọn thêm sản phẩm khác" class= "buymore">
                </div>
                <input type="button" value="Thanh toán đơn hàng" class="cart-checkout">
                <div class="more-infor-wrap">
                    <h2>THÔNG TIN BỔ SUNG</h2>
                    <div class="more-infor">
                        <strong>Chính sách đổi, trả hàng: </strong>
                        <div>Ngoại trừ lỗi do nhà sản xuất hoặc khác mẫu yêu cầu, những trường hợp còn lại Quý khách không được đổi-trả hàng.</div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="cart.js"></script>
    <script src="customer.js"></script>
    </body>
</html>