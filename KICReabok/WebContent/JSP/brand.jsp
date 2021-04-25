<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="css/header.css">
    <link rel="stylesheet"  href="css/brand3.css" > 
    <link rel="stylesheet"  href="css/footer.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="js/header.js"></script>
    <title>Document</title>
</head>
<body>
   <div id="container">
   <jsp:include page="header.jsp" />
    <!--  여기 사이에 작성하세요! -->
        
        <div id="slide333">
            <h3 class="tit">
                CAMPAIGNS
                <br>
                <span>전통을 넘어 최고의 라이프스타일이 창조되는 곳</span>
            </h3>  
            <!--오류는 없는데 작동을 안함...-->
            <div class=d_bg>
                <a class="dot" onclick="changeSlide(1)"></a>
                <a class="dot" onclick="changeSlide(2)"></a>
                <a class="dot" onclick="changeSlide(3)"></a>
            </div> 
            
            <div class="text_bg"></div><!--나중에 제외 찿아보기-->
              <div id="text3">
                <p class="text1" id="t1">815</p>
              
              </div>
              <div id="text6">
                <P class="text2" id="t1">지금 이 순간, 나의 이야기</P>
                
              </div>
             </div>

         <div id="right_container">
         
                <span><img src="image/brand/right1.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right2.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right3.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right4.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right5.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right6.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right7.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right8.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right1.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right2.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right3.jpg" width="300px" height="380px"></span>
                <span><img src="image/brand/right4.jpg" width="300px" height="380px"></span>
        </div>
      <jsp:include page="footer.jsp" />  
    </div>
    <script type="text/javascript" src="js/brand2.js"></script>
</body>
</html>