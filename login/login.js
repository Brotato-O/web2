var registerLink = document.getElementById('register-link');
var loginLink = document.getElementById('login-link');

registerLink.addEventListener('click', function() {
    document.getElementById('loginForm').style.display = 'none';
    document.getElementById('registerForm').style.display = 'block';
});

loginLink.addEventListener('click', function() {
    document.getElementById('registerForm').style.display = 'none';
    document.getElementById('loginForm').style.display = 'block';
});

document.getElementById('login-submit').addEventListener('click', function(event) {
    event.preventDefault(); // Prevent the default form submission behavior
    console.log('Login button was clicked');
    let username = document.getElementById('login-username').value;
    let password = document.getElementById('login-password').value;

    if (username === '' || password === '') {
        alert('Vui lòng điền đầy đủ thông tin!');
        return;
    }

    validate
    // Simulate a successful login
    alert('Đăng nhập thành công!');
});

document.getElementById('register-submit').addEventListener('click', function(event) {
    event.preventDefault(); // Prevent the default form submission behavior
    console.log('Register button was clicked');
    let username = document.getElementById('register-username').value;
    let password = document.getElementById('register-password').value;
    let confirmPassword = document.getElementById('register-confirm-password').value;

    if (username === '' || password === '' || confirmPassword === '') {
        alert('Vui lòng điền đầy đủ thông tin!');
        return;
    }

    if (password !== confirmPassword) {
        alert('Mật khẩu không khớp!');
        return;
    }

    // Simulate a successful registration
    alert('Đăng ký thành công!');
});
