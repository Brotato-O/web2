<?php
 echo '<div class="method-wrap">
                    <h2>Phương thức thanh toán</h2>
                    <div class="method">
                        <label for="cod">
                            <input type="radio" name="method" id="cod" value="cod">
                            <i class="fas fa-truck"></i>
                            <span>Thanh toán khi nhận hàng</span>
                        </label>
                        <label for="momo">
                            <input type="radio" name="method" id="momo" value="momo">
                            <img src="img/momo.png" style="width: 5%">
                            <span>Thanh toán qua ví Momo</span>
                        </label>
                        <label for="vnpay">
                            <input type="radio" name="method" id="vnpay" value="vnpay">
                            <img src="img/vnpay.png" style="width: 5%">
                            <span>Thanh toán qua ví điện tử VNPAY</span>
                        </label>
                        <label for="paypal">
                            <input type="radio" name="method" id="paypal" value="paypal">
                            <i class="fab fa-paypal fa-lg"></i>
                            <span>Thanh toán qua PayPal</span>
                        </label>
                    </div>
                </div>'
                ?>