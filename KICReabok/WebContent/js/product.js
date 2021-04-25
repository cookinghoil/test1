
//상품 이미지 
var original = ""; // 원본 이미지를 저장할 src
var items = $(".item") // grid 각각 아이템
console.log(items)
for(let i=0;i<items.length;i++){    // item요소 전부에게 효과를 적용한다.
    if(items[i].children[1].children[0].localName == "img") {  // 만약 hover 이미지가 있다면?
        for(let j=0;j<items[i].children[1].children.length;j++){
                $(items[i].children[1].children[j]).mouseover(function() { 
                //hover img요소에 j번째의 이미지에 마우스를 갖다댄 경우
                original = $(items[i].children[0].children[0]).prop('src') 
                // 그 item의 원래 이미지 경로를 저장해두고.
                $(items[i].children[0].children[0]).attr("src",$(items[i].children[1].children[j]).prop('src'))
                //지금 선택된 이미지로 노출되는 이미지를 변경한다.
            })
                $(items[i].children[1].children[j]).mouseout(function( ){
                $(items[i].children[0].children[0]).attr("src",`${original}`) 
                // 마우스 벗어난 경우 원래대로 이미지 복귀
            }) 
        }
    }
    if(items[i].children[1].children[0].localName == "div"){
      
        for(let j=0; j<items[i].children[1].children[0].children.length;j++){
            $(items[i].children[1].children[0].children[j]).mouseover(function(){
                original = $(items[i].children[0].children[0]).prop('src') 
                console.log(original)
                $(items[i].children[0].children[0]).attr("src",$(items[i].children[1].children[0].children[j]).prop('src'))
            })

            $(items[i].children[1].children[0].children[j]).mouseout(function( ){
            $(items[i].children[0].children[0]).attr("src",`${original}`) 
                // 마우스 벗어난 경우 원래대로 이미지 복귀
            }) 
        }
        
    }
    
}

//좌측 메뉴
var s_flag = true
$('#shoes').click(function() { 
    if(s_flag == true) {
        $('#shoes_sub').css('height','451px');
        $('#shoes_sub').css('visibility','visible');
        $('#shoes_sub').css('transition','0.4s'); 
        $("#shoes_sub li").css('visibility','visible')
        s_flag = false
    }else {
        $("#shoes_sub li").css('visibility','hidden')
        $('#shoes_sub').css('height','0px');
        $('#shoes_sub').css('visibility','hidden'); 
        $('#shoes_sub').css('transition','0.5s');
        s_flag = true
    }
})
var c_flag = true
$('#clothes').click(function() { 
    if(c_flag == true) {
        $('#clothes_sub').css('height','600px');
        $('#clothes_sub').css('visibility','visible');
        $('#clothes_sub').css('transition','0.4s'); 
        $("#clothes_sub li").css('visibility','visible')
        c_flag = false
    } else {
        $("#clothes_sub li").css('visibility','hidden')
        $('#clothes_sub').css('height','0px');
        $('#clothes_sub').css('visibility','hidden'); 
        $('#clothes_sub').css('transition','0.5s');
        c_flag = true
    }
})

var p_flag = true
$('#product,#product_sub').click(function() { 
    if(p_flag == true) {
        $('#product_sub').css('height','300px');
        $('#product_sub').css('visibility','visible');
        $('#product_sub').css('transition','0.4s'); 
        $("#product_sub li").css('visibility','visible')
        p_flag = false
    }else {
        $("#product_sub li").css('visibility','hidden')
        $('#product_sub').css('height','0px');
        $('#product_sub').css('visibility','hidden'); 
        $('#product_sub').css('transition','0.5s');
        p_flag = true
    }    
})

//slider div
    //slider_sub div
        // img src -> 5개 / width : 70px

//slider 전체크기 지정
    //slider_sub 슬라이드 관리/ 슬라이드 수만큼 크기할당
        //이미지 요소들

/* -- 여기서 풀면 됨
var $slider = 210;
var $display = 3; // 보여줄 이미지는 3개
var $img_it = $slider / $display // 개당 70px
var $count = $('.img_it').length; // 총량은 5개
var $slidebox = $img_it * $count; //5개만큼의 크기 

//디버깅
console.log($slider)
console.log($display)
console.log($img_it)
console.log($count)
console.log($slidebox)

function init(){
    console.log("함수시작")
    $('.slider').css('width',$slider) // 210px
    $('.slider_sub').css('width',$slidebox) // 70x5
    $('.img_it').css('width',$img_it) // 70px
}
//일단 여기까지 세팅은 된 듯

function moveSlider() {
    var check = $(this).attr('data-btn');
    console.log(check); //여기까지는 잘 받아옴
    if(check == 0) {
        console.log('실행됨'); // 작동됨
        $('.slider_sub').animate({left:'+='+$img_it+"px"},500,slideEnd) 
    } else if(check == 1){
        console.log('실행됨2');
        $('.slider_sub').animate({left:'-='+$img_it+"px"},500,slideEnd)
    }
}

function slideEnd() {
    var nowLeft = $('.slider_sub').position().left;
    var end = -($slidebox-$container);
    console.log("nowleft",nowLeft)
    console.log("end",end)

    if(nowLeft<=end) {
        $('.slider_sub').animate({left:end});
    }else if(nowLeft > 0){
        $('.slider_sub').animate({left:0})
    }
}

$(document).ready(function() {
    init();
    $('.b_left').on('click',moveSlider);
    $('.b_right').on('click',moveSlider);
})

// 호버 이미지 슬라이더
var $left = document.querySelector("#left")
var $right = document.querySelector("#right")
var $slider = document.querySelector("#slider_sub")

function goleft() {
    if($slider.scrollLeft>0) {
        $slider.scrollLeft=$slider.scrollLeft-70     
        $slider.scrollLeft-70
    }
}
function goright() {
    if($slider.scrollLeft<144) {
        $slider.scrollLeft=$slider.scrollLeft+70
    }
}
*/
var $container = 230;
var $display = 3;
var $item = $container / $display
var $count = $('.s_item').length;
var $slidebox = $item * $count

console.log($container)
console.log($display)
console.log($item)
console.log($count)
console.log($slidebox)

function init(){
    //console.log("함수시작")
    $('.s_container').css('width',$container)
    $('.s_slider').css('width',$slidebox)
    $('.s_item').css('width',$item)
}

function moveSlider(){
    var check = $(this).attr('data-btn');

    if(check == 0 ){
        $('.s_slider').animate({left:'+='+$item+"px"},300,slideEnd)
    }else if(check == 1){
        $('.s_slider').animate({left:'-='+$item+"px"},300,slideEnd)
    }
}

function slideEnd(){
    var nowLeft = $('.s_slider').position().left;
    var end = -($slidebox-$container);
    //console.log("nowleft",nowLeft)
    //console.log("end",end)

    if(nowLeft<=end) {
        $('.s_slider').animate({left:end});
    }else if(nowLeft > 0){
        $('.s_slider').animate({left:0})
    }
}
$(document).ready(function(){
    init();
    $('.next').on('click',moveSlider);
    $('.prev').on('click',moveSlider)
})


$('#item_2').mouseover(function(){
    $('.s_container').css('display','block');
    $('.btn').css('visibility','visible')
})
$('#item_2').mouseout(function(){
    $('.s_container').css('display','none');
    $('.btn').css('visibility','hidden')
})