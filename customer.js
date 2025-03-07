
$(document).ready(function(){
    $(".cart-checkout").click(function (event){
        event.preventDefault();

        var fullname = $(".fullname");
        var phoneNumber = $(".phoneNumber");
        var email = $(".email");
        var province = $(".province");
        var district = $(".district");
        var ward = $(".ward");
        var address = $(".address");

        // Kiểm tra dữ liệu nhập vào
        if (fullname.val() === "") {
            alert("Vui lòng nhập họ tên.");
            fullname.focus();
            return;
        }

        if (!/^\d{10}$/.test(phoneNumber.val())) { 
            alert("Số điện thoại không hợp lệ. Vui lòng nhập 10 chữ số.");
            phoneNumber.focus();
            return;
        }

        if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email.val())) {
            alert("Email không hợp lệ.");
            email.focus();
            return;
        }

        if (province.val() === "default") {
            alert("Vui lòng chọn tỉnh/thành phố.");
            province.focus();
            return;
        }

        if (district.val() === "default") {
            alert("Vui lòng chọn quận/huyện.");
            district.focus();
            return;
        }

        if (ward.val() === "default") {
            alert("Vui lòng chọn phường/xã.");
            return;
        }

        if (address.val() === "") {
            alert("Vui lòng nhập địa chỉ chi tiết.");
            address.focus();
            return;
        }

        $.ajax({
            type: "POST",
            dataType: JSON,
            data:{
                fullname: fullname.val(),
                phoneNumber: phoneNumber.val(),
                email: email.val(),
                province: province.val(),
                ward: ward.val(),
                address: address.val(),   
            }
        });
    });
});

