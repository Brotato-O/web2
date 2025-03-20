<?php
    echo "
        <div class='infor-wrap'>
            <h2>Thông tin giao hàng</h2>
            <div class='infor'>
                <div>
                    <div>
                        <input type='text' placeholder='Nhập vào họ tên' name='fullname' class='fullname' style='width: auto;'> 
                        <span class='error' id='error-fullName'></span>
                    </div>
                    <div>
                        <input type='text' placeholder='Nhập vào Số điện thoại' name='phoneNumber' class='phoneNumber' style='width: auto;'>
                        <span class='error' id='error-phoneNumber'></span>
                    </div>
                </div>
                <div>
                    <div>
                        <input type='text' name='email' placeholder='Nhập vào Email' class='email'>
                        <span class='error' id='error-email'></span>
                    </div>
                </div>
                <div class='select-address'>
                    <div>
                        <select class='province'>
                            <option name='province' value='default' selected>Chọn quận</option>
                        </select>
                        <span class='error' id='error-province'></span>
                    </div>
                    <div>
                        <select class='district'>
                            <option name='district' value='default' selected>Chọn quận</option>
                        </select>
                        <span class='error' id='error-district'></span>
                    </div>
                    <div>
                        <select class='ward'>
                            <option name='ward' value='default' selected>Chọn phường</option>
                        </select>
                        <span class='error' id='error-ward'></span>
                    </div>
                </div>    
                <div>
                    <div>
                        <input type='text' name='address' placeholder='Địa chỉ chi tiết' class='address'>
                        <span class='error' id='error-address'></span>
                    </div>
                </div>
                <div style='margin-bottom: 0px;'>
                    <input type='text' name='note' placeholder='Ghi chú' class='note'>
                </div>    
            </div>
        </div>
    ";
?>
