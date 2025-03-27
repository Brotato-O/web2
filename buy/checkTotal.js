
function update(){
    var checkbox= $("input:checkbox:checked");
    var sum=0;
    checkbox.each(function(){
        var price= $(this).val();
        sum+= parseInt(price);
    });
    console.log(sum);
    $(".total-items").html(sum);
}
setTimeout(function(){
    $("input:checkbox").change(update);
}, 500);
$(".next").click(function(){
    console.log(parseInt($(".total-items").html()));
    if (parseInt($(".total-items").html())==0){
        alert("Chưa chọn sản phẩm nào");
        return false;
    }
    else{
        window.location.href = "cart.php";
    }
});