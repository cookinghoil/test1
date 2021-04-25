

$(document).ready(function(){
    $('.test_btn1').on('click',toggleTable)
    //$('.test_btn1').on('click',rowAdd)
    //$('.test_btn1').on('click',showTable)
    //$('.test_btn2').on('click',remove)
});
/*
function showTable() {
    var check = $(this).attr('data-btn');

    console.log("check",check);
    if(check==0) {
        $('.check_body0').css('visibility','hidden');
        $('.check_body0').css('display','none');
        
        $('.check_body1').css('visibility','visible');
        $('.check_body1').css('display','table-row');
        //$('.check_body1').css('display','block');

    } else if(check==1) {
        $('.check_body0').css('visibility','visible');
        //$('.check_body0').css('display','block');
        $('.check_body0').css('display','table-row');

        $('.check_body1').css('visibility','hidden');
        $('.check_body1').css('display','none');
    }
}*/

var count = 1

function remove(){
    if(count>0){
        $(`#${count}`).remove()
        count--
    }else{
        $('.check_body0').css('visibility','visible');
        //$('.check_body0').css('display','block');
        $('.check_body0').css('display','table-row');

        $('.check_body1').css('visibility','hidden');
        $('.check_body1').css('display','none');
    }
}
function toggleTable() {
    if(count==1) {
        count=2;
        $('#t_btn').html("데이터 X");
        $('.check_body0').css('visibility','hidden');
        $('.check_body0').css('display','none');
        
        $('.check_body1').css('visibility','visible');
        $('.check_body1').css('display','table-row');

    } else if(count==2) {
        count=1;
        $('#t_btn').html("데이터 O");
        $('.check_body1').css('visibility','hidden');
        $('.check_body1').css('display','none');
        
        $('.check_body0').css('visibility','visible');
        $('.check_body0').css('display','table-row');
    }
}
function rowAdd() {
    count++
    if(count>0){
        $('.check_body0').css('visibility','hidden');
        $('.check_body0').css('display','none');
        
        $('.check_body1').css('visibility','visible');
        $('.check_body1').css('display','table-row');
        
    }
 
    var innerHtml = "";
    innerHtml += `<tr id=${count}>`;
    innerHtml += '<td><input type="checkbox"></td>';
    innerHtml += '<td id="product">';
    innerHtml += '<div class="cart_img">';
    innerHtml += '<img src="../image/shopping/img_shoes.jpg" width=70px height=60px>';
    innerHtml += '</div>';
    innerHtml += '<div id="product_form">';
    innerHtml += '<span>asddasadasd23423342s</span><br>';
    innerHtml += '<select class="pf_sel" style="width:90px;height:20px;">';
    innerHtml += '<option>230</option><option>240</option><option>250</option><option>260</option>';
    innerHtml += '</select><button class="change pro_btn"></button></div></td>';
    innerHtml += '<td> 80,000</td><td><div class="form">';
    innerHtml += '<input type="text" style="width:24px" name="num" class="count_in" value="1">';
    innerHtml += '<img src="../image/shopping/btn_plus.gif" class="plus">';
    innerHtml += '<img src="../image/shopping/btn_minus.gif" class="minus">';
    innerHtml += '<button class="change ch_btn"></button>';
    innerHtml += '</div></td><td> 160,000</td>';
    innerHtml += '<td> 700&nbsp;<img src="../image/shopping/point.gif"></td>';
    innerHtml += '<td><a href="javascript:void(0);"><button id="od_bt"></button></a>';
    innerHtml += '<a href="javascript:void(0);"><button id="dl_bt"></button></a>';
    innerHtml += '</td></tr>';

    $('#shop_cart_list > tbody:last').append(innerHtml);

}


// 수량 변경 메소드
$(function() {
    $('.plus').click(function() {
        var n = $('.plus').index(this);
        var num = $(".num:eq("+n+")").val();
        num = $(".num:eq("+n+")").val(num*1+1)
    });
    $('.minus').click(function(){ 
        var n = $('.minus').index(this);
        var num = $(".num:eq("+n+")").val();
        // :eq(index) 인자로 전달된 index에 해당하는 요소를 가져온다. ( first index : 0 )
        if(num==1) { alert('최소 주문수량은 1개 이상입니다.'); return;}
        num = $(".num:eq("+n+")").val(num*1-1); 
    });
})

$(function() {
    $('.ch_btn').click(function() {
        var n = $('.ch_btn').index(this);
        var num = $(".num:eq("+n+")").val();
        console.log(num);
        //$('.ch_btn').text(String(num)); innerText 적용이 안됨
    })
})