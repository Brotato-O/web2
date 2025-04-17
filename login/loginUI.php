<div id="Main-SignForm">
<section id="loginForm">
        <div class="left" id="left">
            <h1>ĐĂNG NHẬP</h1>
            <div class="input-login">
                <input class="input" required type="text" id="login-username">
                <label class="label" for="username">Tên đăng nhập</label>
            </div>
            <div class="input-login">
                <input class="input" required type="password" id="login-password">
                <label class="label" for="password">Mật khẩu</label>
            </div>
            <button id="login-submit" class="btn-login">Đăng nhập</button>
            <div class="more">
            <p>Chưa có tài khoản?</p>
            <a id="register-link">Đăng ký</a>
            </div>
        </div>
    </section>
    
    <section id="registerForm">
        <div class="right" id="right">
            <h1>ĐĂNG KÝ</h1>
            <div style="display: flex; gap:20px">
            <div>
            <div class="input-login">
                <input class="input" required type="text" id="name">
                <label class="label" for="name">Họ và tên</label>
            </div>
            <div class="input-login">
                <input class="input" required type="text" id="address">
                <label class="label" for="address">Địa chỉ</label>
            </div>
            <div class="input-login">
                <input class="input" required type="number" id="phone">
                <label class="label" for="phone">Số điện thoại</label>
            </div>
            </div>
            <div>
            <div class="input-login">
                <input class="input" required type="text" id="register-username">
                <label class="label" for="register-username">Tên đăng nhập</label>
            </div>
            <div class="input-login">
                <input class="input" required type="password" id="register-password">
                <label class="label" for="register-password">Mật khẩu</label>
            </div>
            <div class="input-login">
                <input class="input" required type="password" id="register-confirm-password">
                <label class="label" for="register-confirm-password">Nhập lại mật khẩu</label>
            </div>
            </div>
            </div>
            <button id="register-submit" class="btn-login">Đăng kí</button>
            <div class="more">
            <p>Đã có tài khoản?</p>
            <a id="login-link">Đăng nhập</a>
            </div>
    </div>
</section>
</div>