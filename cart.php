<html>
    <head>
        <link href="cart/cart.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    </head>
    <body>
    <form>
        <h2 class="heading-cart">THÔNG TIN ĐẶT HÀNG</h2>
        <div class="wrapper-cart">
            <div class="left-cart">
              <?php 
                include("cart/inforCustomer.php");
                include("cart/payMethod.php");
              ?>  
            </div>
            <div class="right-cart">
                <?php include("cart/summary.php");?>
                <input type="submit" name="submit" value="Thanh toán đơn hàng" class="cart-checkout">
                <?php include("cart/more-infor.php");?>
            </div>
        </div>
    </form>
    <script src="cart/cart.js"></script>
    <script src="cart/customer.js"></script>
    </body>
</html>