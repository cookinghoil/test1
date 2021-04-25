var slider = document.querySelector("#main_slider");
var slidersection = document.querySelector("#slider_section");
console.log(slider)


function handleslider(){
    if(window.scrollY==0){
        slidersection.style.top ="0"
        slider.style.backgroundSize ="110% 130%"
        slidersection.style.transition ="0.8s"
    }else{
        slidersection.style.top ="-550px"
        slider.style.backgroundSize ="120% 140%"
        slidersection.style.transition ="0.5s"
        
    }
}
window.addEventListener("wheel", handleslider);




var $one_changer1=document.querySelector('#one_changer1');
var $one_changer2=document.querySelector('#one_changer2');
var $one_box=document.querySelector('#one_box');

var oneBox_falg = 1

function controlbtn2(){
    if(oneBox_falg == 1){
        $one_changer1.style.backgroundColor = "inherit"
        $one_changer1.style.color ="black"
        $one_changer1.style.border ="2px solid #797b80"

        $one_changer2.style.backgroundColor = "black"
        $one_changer2.style.color ="white"
        $one_changer2.style.border ="2px solid black"


        $one_box.style.backgroundImage = "url(../image/index/three5.jpg)"
        $one_box.style.transition ="0.5s"
        oneBox_falg = 2
    }
}
function controlbtn1(){
    if(oneBox_falg == 2){
        $one_changer2.style.backgroundColor = "inherit"
        $one_changer2.style.color ="black"
        $one_changer2.style.border ="2px solid #797b80"

        $one_changer1.style.backgroundColor = "black"
        $one_changer1.style.color ="white"
        $one_changer1.style.border ="2px solid black"


        $one_box.style.backgroundImage = "url(../image/index/three4.jpg)"
        $one_box.style.transition ="0.5s"
        oneBox_falg = 1
    }
}

$one_changer1.addEventListener("click",controlbtn1)
$one_changer2.addEventListener("click",controlbtn2)




var $container = 1000;
var $display = 4;
var $item = $container / $display
var $count = $('.item').length;
var $slidebox = $item * $count

console.log($container)
console.log($display)
console.log($item)
console.log($count)
console.log($slidebox)

function init(){
    console.log("함수시작")
    $('.container').css('width',$container)
    $('.slider').css('width',$slidebox)

    $('.item').css('width',$item)
}

function moveSlider(){
    var check = $(this).attr('data-btn');

    if(check == 0 ){
        $('.slider').animate({left:'+='+$item*$display+"px"},300,slideEnd)
    }else if(check == 1){
        $('.slider').animate({left:'-='+$item*$display+"px"},300,slideEnd)
    }
}

function slideEnd(){
    var nowLeft = $('.slider').position().left;

    var end = -($slidebox-$container);
    console.log("nowleft",nowLeft)
    console.log("end",end)

    if(nowLeft<=end) {
        $('.slider').animate({left:end});
    }else if(nowLeft > 0){
        $('.slider').animate({left:0})
    }

}

$(document).ready(function(){
    init();
    $('.next').on('click',moveSlider);
    $('.prev').on('click',moveSlider)
})