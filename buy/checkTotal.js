$(document).ready(function(){
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
$("input:checkbox").change(function(){
    console.log("Đã thay đổi");
    update();
});
})