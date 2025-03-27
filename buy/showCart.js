$(document).ready(function(){
    $.ajax({
        url: "buy/showCart.php",
        dataType: "json",
        success: function(response){
            console.log("Dữ liệu đã nhận:", response);
            content="";
            for (var i=0; i< response.name.length; i++){
                content+=`
                    <div class="cart-row">
                        <div><input type="checkbox" name="check" checked value="${response.total[i]}"></div>
                        <div>${response.name[i]}</div>
                        <div>${response.price[i]}</div>
                        <div>${response.quantity[i]}</div>
                        <div>${response.total[i]}</div>
                        <div>${response.img[i]}</div>
                        <div><button class="delete" type="button">Xóa</button></div>
                    </div>`
                
            }
            $(".cart-items").html(content);
            console.log($(".cart-items").html(content));
        }
    });
});