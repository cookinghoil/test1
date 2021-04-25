var $text1 = document.querySelector(".text1")
var $text2 = document.querySelector(".text2")

var currentSlide = 1;
       
       slide333.onclick = function () {
         currentSlide++;
        if(currentSlide ==4 ){ currentSlide =1 ; }
          changeSlide(currentSlide)
        }
        function changeSlide(n) {
            slide333.style.background = "url('image/brand/s"+n+".jpg')";
            slide333.style.backgroundSize = "cover"
            slide333.style.transition = "0.5s"
            if(n==1){
                $text1.innerHTML = "815"
                $text2.innerHTML = "지금 이 순간, 나의 이야기"
            }else if(n==2){
                $text1.innerHTML = "WRITE YOUR LEGACY"
                $text2.innerHTML = "8일간, 15%광복절 특별할인!"
            }else{
                $text1.innerHTML = "ELLE STAGE"
                $text2.innerHTML = "REEBOK I ELLE STAGE"
            }
            
        }
      
      
    


