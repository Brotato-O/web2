function validateInput(selector, errorSelector, errorMessage, condition) {
    var input = $(selector);
    var error = $(errorSelector);
    if (condition(input.val())) {
        error.html(errorMessage);
        return false;
    } else {
        error.html(""); // Xóa lỗi nếu hợp lệ
        return true;
    }
}

$(document).ready(function(){
    $(".cart-checkout").click(function (event){
        event.preventDefault();

        var isValid = true;

        isValid &= validateInput(".fullname", "#error-fullName", "Vui lòng nhập họ tên.", value => value == "");

        isValid &= validateInput(".phoneNumber", "#error-phoneNumber", "Số điện thoại phải có 10 số.", value => !/^\d{10}$/.test(value));

        isValid &= validateInput(".email", "#error-email", "Vui lòng nhập email hợp lệ.", value => !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value));

        isValid &= validateInput(".province", "#error-province", "Vui lòng chọn tỉnh/thành phố.", value => value === "default");

        isValid &= validateInput(".district", "#error-district", "Vui lòng chọn quận/huyện.", value => value === "default");

        isValid &= validateInput(".ward", "#error-ward", "Vui lòng chọn phường/xã.", value => value === "default");

        isValid &= validateInput(".address", "#error-address", "Vui lòng nhập địa chỉ chi tiết.", value => value === "");

        if (!isValid) return;

        $.ajax({
            type: "POST",
            url: "cart/xuly.php",
            data: {
                fullName: $(".fullname").val(),
                phoneNumber: $(".phoneNumber").val(),
                email: $(".email").val(),
                province: $(".province option:selected").text(),
                district: $(".district option:selected").text(),
                ward: $(".ward option:selected").text(),
                address: $(".address").val(),
            },
            success: function(response) {
                alert("Đã đặt hàng thành công!");
            },
            error: function(xhr, status, error) {
                console.error("Lỗi AJAX:", status, error);
                console.log("Phản hồi từ server:", xhr.responseText);
            }
        });
    });
});
