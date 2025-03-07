<?php

    echo '<form>
                <div class="infor-wrap">
                    <h2>Thông tin giao hàng</h2>
                    <div class="infor">
                        <div>
                            <input type="text" placeholder="Nhập vào họ tên" class="fullname" style="width: auto;">
                            <input type="text" placeholder="Nhập vào Số điện thoại" class="phoneNumber" style="width: auto;">
                        </div>
                        <div>
                            <input type="text" placeholder="Nhập vào Email" class="email">
                        </div>
                        <div class="select-address">
                            <select class="province">
                                <option value="default" selected>Chọn quận</option>
                            </select>
                            <select class="district">
                                <option value="default" selected>Chọn quận</option>
                            </select>
                            <select class="ward">
                                <option value="default" selected>Chọn phường</option>
                            </select>
                        </div>    
                        <div>
                            <input type="text" placeholder="Địa chỉ chi tiết" class="address">
                        </div>
                        <div style="margin-bottom: 0px;">
                            <input type="text" placeholder="Ghi chú" class="note">
                        </div>    
                    </div>
                </div>
            </form>'
                ?>