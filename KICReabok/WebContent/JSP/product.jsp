<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
    Clone Cording Project : follow Reebok Homepage
    Part : 1. Product.html/ 2. Product.css / 3. image/product
    Writer : C.S. Heo
    Project start : 2020.08.28 ~
    Team : H.I Son, B.G Kang, C.G. Lee, I.G. Hwang, J.A. KIM
    History
    8/31 상단메뉴/배너 및 전체 레이아웃 작성 section 3등분(좌측 nav,우측 상단 grid,하단 grid)
    9/1 section - 가데이터 제작 및 틀 안에 들어갈 내용 만들기
    9/2 section - 1구역 - 우측 상단 그리드 및 상품설명 디자인
                  2구역 - 좌측 nav라인 리스트 제작
                  3구역 - 하단 그리드의 베스트 메뉴 레이아웃 및 디자인 완성
    9/3 section - 1구역 - 상단 그리드 완성
                  2구역 - 좌측 리스트 디자인 및 완성         * 1차 마무리
    9/4 section - 1구역 - 상단 그리드 이미지 호버 이미지 기능 추가
    9/5 section - 조장의 도움을 받아 js 작업시작
    9/6 section - hover_item 정렬, item box이미지 넣기, 슬라이드 이쁘게 하기는 실패 
    9/12 section - hover 초과 이미지(4개이상) 정리(JQuery), 슬라이드 기능 및 디자인 정리 끝
    ---------------------------- front-end fine ------------------------------
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="css/header.css">
    <link rel="stylesheet"  href="css/product.css">
    <link rel="stylesheet"  href="css/footer.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="js/product.js"></script>
    <script src="js/header.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="container">
       <jsp:include page="header.jsp" />
        <!--  상단 메인 이미지 -->
        <section>
        <div class="product_main">
            <img src="image/product/product_main.jpg"  width="1300px">
        </div>
        </section>
        <!-- 이미지 출력 끝 -->
    
    <!-- 본문 시작-->
    <section id="context">
        <div class = "product_wrapper">
            <div class = "product_header">
            <font size="16"><b>MEN</b></font> 총 578개 상품
                <div class = "product_header_inner">
                    <select class="sel1"> 
                        <option selected>셀렉트박스</option>
                        <option>옵션1</option>
                        <option>옵션2</option>
                        <option>옵션3</option>
                    </select>
                    &nbsp;&nbsp;Page&nbsp;
                    <select class="sel2">
                        <option selected>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select> of 7&nbsp;&nbsp;
                    <img src="image/product/left.jpg">
                    <img src="image/product/right.jpg">    
                </div>
            </div> <!--product_header -->
            <div class="product_content">
                <div class="product_left_select"> <!-- 좌측 바 / 우측 상품이미지 -->
                    <div>
                    <ul class="pl_list">
                        <li class="pro_list1"><a href="#">NEW</a></li>
                        <li class="pro_list1"><a href="#">BEST</a></li>
                        <li class="pro_list1"><a href="#">SALE</a></li>
                        <li class="pro_list2">
                           <div id="shoes" class="col"><a href="javascript:void(0);" >신발</a></div>
                            <ul id="shoes_sub" class="pro_list2_sub">
                                <li  class="pro_list_top">
                                    <h4 id="list_sub">전체보기</h4>
                                </li>
                                <li>
                                    <h4>>스포츠별 (295)</h4>
                                    <ul class="sub_ul">
                                        <li><a href="#">트레이닝 (28)</a></li>
                                        <li><a href="#">러닝 (162)</a></li>
                                        <li><a href="#">농구 (8)</a></li>
                                        <li><a href="#">캐쥬얼 (212)</a></li>
                                        <li class="li_last"><a href="#">기타 (4)</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <h4>>상품별 (145)</h4>
                                    <ul class="sub_ul">
                                        <li><a href="#">하이컷/미드컷 (8)</a></li>
                                        <li><a href="#">로우컷 (120)</a></li>
                                        <li class="li_last"><a href="#">샌들/슬리퍼 (18)</a></li>
                                    </ul>
                                </li>
                           </ul>
                        </li>
                        <li class="pro_list2">
                            <div id="clothes" class="col"><a href="javascript:void(0);">의류</a></div>
                            <ul id="clothes_sub" class="pro_list2_sub">
                                <li class="pro_list_top">
                                    <h4 id="list_sub">전체보기</h4>
                                </li>
                                <li>
                                    <h4>>스포츠별 (254)</h4>
                                    <ul class="sub_ul">
                                        <li><a href="#">트레이닝 (96)</a></li>
                                        <li><a href="#">러닝 (21)</a></li>
                                        <li><a href="#">아웃도어 (2)</a></li>
                                        <li class="li_last"><a href="#">캐쥬얼 (135)</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <h4>>상품별 (256)</h4>
                                    <ul class="sub_ul">
                                        <li><a href="#">자켓 (21)</a></li>
                                        <li><a href="#">트랙탑/저지탑 (14)</a></li>
                                        <li><a href="#">티셔츠 (94)</a></li>
                                        <li><a href="#">슬리브리스 (9)</a></li>
                                        <li><a href="#">긴팔티셔츠 (8)</a></li>
                                        <li><a href="#">팬츠 (70)</a></li>
                                        <li><a href="#">팬츠/타이즈 (30)</a></li>
                                        <li><a href="#">윈터자켓 (5)</a></li>
                                        <li class="li_last"><a href="#">후디/스웨트셔츠 (32)</a></li>
                                    </ul>
                                </li>
                           </ul>
                        </li>
                        <li class="pro_list2">
                            <div id="product" class="col"><a href="javascript:void(0);" >용품</a></div>
                            <ul id="product_sub" class="pro_list2_sub">
                                <li class="pro_list_top">
                                    <h4 id="list_sub">전체보기</h4>
                                </li>
                                <li>
                                    <h4>>스포츠별 (44)</h4>
                                    <ul class="sub_ul">
                                        <li class="li_last"><a href="#">전체보기 (37)</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <h4>>상품별 (54)</h4>
                                    <ul class="sub_ul">
                                        <li><a href="#">양말 (15)</a></li>
                                        <li class="li_last"><a href="#">전체보기 (40)</a></li>
                                    </ul>
                                </li>
                           </ul>
                        </li>
                        <li class="pro_list2">
                        <div class="col"><a href="javascript:void(0);" class="top">Select Size</a></div>
                        <div class="pro_grid_wrap">   
                            <h6>신발</h6>
                            <div class="sub_grid">
                                <div><a href="#">220</a></div>
                                <div><a href="#">225</a></div>
                                <div><a href="#">230</a></div>
                                <div><a href="#">235</a></div>
                                <div><a href="#">240</a></div>
                                <div><a href="#">245</a></div>
                                <div><a href="#">250</a></div>
                                <div><a href="#">255</a></div>
                                <div><a href="#">260</a></div>
                                <div><a href="#">265</a></div>
                                <div><a href="#">270</a></div>
                                <div><a href="#">275</a></div>
                                <div><a href="#">280</a></div>
                                <div><a href="#">BIG</a></div>
                            </div>
                            
                            <h6>의류</h6>
                            <div class="sub_grid">
                                <div><a href="#">/2XL</a></div>
                                <div><a href="#">/3XL</a></div>
                                <div><a href="#">/L</a></div>
                                <div><a href="#">/M</a></div>
                                <div><a href="#">/S</a></div>
                                <div><a href="#">/XL</a></div>
                                <div><a href="#">/XS</a></div>
                                <div><a href="#">2XL</a></div>
                                <div><a href="#">3XL</a></div>
                                <div><a href="#">L</a></div>
                                <div><a href="#">M</a></div>
                                <div><a href="#">S</a></div>
                                <div><a href="#">XL</a></div>
                                <div><a href="#">XS</a></div>
                            </div>

                            <h6>용품</h6>
                            <div class="sub_grid">
                                <div><a href="#">1921</a></div>
                                <div><a href="#">2224</a></div>
                                <div><a href="#">F</a></div>
                                <div><a href="#">L</a></div>
                                <div><a href="#">M</a></div>
                                <div><a href="#">OSFM</a></div>
                                <div><a href="#">S</a></div>
                                <div><a href="#">XL</a></div>
                            </div>
                        </div>
                        </li>
                        <li class="pro_list2">
                            <div class="col"><a href="javascript:void(0);" class="top" >Select Color</a></div>
                            <div class="sub_grid2"> 
                                <div class="c1"><a href="#">&nbsp;</a></div>
                                <div class="c2"><a href="#">&nbsp;</a></div>
                                <div class="c3"><a href="#">&nbsp;</a></div>
                                <div class="c4"><a href="#">&nbsp;</a></div>
                                <div class="c5"><a href="#">&nbsp;</a></div>
                                <div class="c6"><a href="#">&nbsp;</a></div>
                                <div class="c7"><a href="#">&nbsp;</a></div>
                                <div class="c8"><a href="#">&nbsp;</a></div>
                                <div class="c9"><a href="#">&nbsp;</a></div>
                                <div class="c10"><a href="#">&nbsp;</a></div>
                                <div class="c11"><a href="#">&nbsp;</a></div>
                                <div class="c12"><a href="#">&nbsp;</a></div>
                                <div class="c13"><a href="#">&nbsp;</a></div>
                                <div class="c14"><a href="#">&nbsp;</a></div>
                                <div class="c15"><a href="#">&nbsp;</a></div>
                                <div class="c16"><a href="#">&nbsp;</a></div>
                                <div class="c17"><a href="#">&nbsp;</a></div>
                            </div>
                        </li>
                    </ul>
                    </div>
                </div> <!-- product_left_select -->
                <div class="product_right_select"> <!-- 우측 상품 이미지 및 설명 진열(flex/grid)-->
                    <div class="product_right_grid">
                        <div class="item" onclick="location.href='productDetail.do';">
                            <div class ="img">
                            <img src="image/product/shoes1.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes1_1.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>인스타 펌프 퓨리부스트</h5><br><br>
                                219,000원
                            </div>
                        </div>
                        <div class="item" id="item_2">
                            <div class ="img">
                            <img src="image/product/shoes2.jpg">
                            </div>  
                            <div class="s_container">
                                <div class="s_slider">
                                    <img src="image/product/shoes2_2.jpg" class="s_item item1">
                                    <img src="image/product/shoes2_1.jpg" class="s_item item2">
                                    <img src="image/product/shoes2_3.jpg" class="s_item item2">
                                    <img src="image/product/shoes2_4.jpg" class="s_item item2">
                                    <img src="image/product/shoes2_5.jpg" class="s_item item2">
                                    <!--<img class="s_item item6">
                                    <img class="s_item item7">
                                    <img class="s_item item8">
                                    <img class="s_item item9">-->
                                </div>
                            </div>
                            <ul class="page_btn">
                                <li><button class="prev btn" data-btn="0"></button></li>
                                <li><button class="next btn" data-btn="1"></button></li>
                            </ul>
                            <div class ="img_ex">
                                <h6>Reebok Classic/Unisex</h6><br>
                                <h5>리복 클래식 슬라이드</h5><br><br>
                                29,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                                <img src="image/product/shoes3.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes3_1.png" width="70">
                                <img src="image/product/shoes3_2.png" width="70">
                                <img src="image/product/shoes3_3.png" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>리복 퀵체이스</h5><br><br>
                                59,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';"> 
                            <div class ="img">
                                <img src="image/product/shoes4.jpg">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>펌프 코트</h5><br><br>
                                199,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                            <img src="image/product/shoes5.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes5_1.jpg" width="70">
                                <img src="image/product/shoes5_2.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Men's Tennis</h6><br>
                                <h5>클럽 C 85</h5><br><br>
                                69,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                                <img src="image/product/shoes6.jpg">
                            </div>
                            <div class ="img_ex">
                                <h6>Reebok Classic/Unisex</h6><br>
                                <h5>클래식 레더 레거시</h5><br><br>
                                89,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                            <img src="image/product/shoes7.jpg">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>BT21 터보 임펄스 클린 KOYA</h5><br><br>
                                79,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                            <img src="image/product/shoes8.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes8_1.jpg" width="70">
                                <img src="image/product/shoes8_2.jpg" width="70">
                                <img src="image/product/shoes8_3.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Reebok Classic/Unisex</h6><br>
                                <h5>로얄 브릿지 3 SYN</h5><br><br>
                                79,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                            <img src="image/product/shoes9.jpg">
                            </div>
                            <div class ="img_ex">
                                <h6>Men's Running</h6><br>
                                <h5>클래식 래더 MU</h5><br><br>
                                99,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                                <img src="image/product/shoes10.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes10_1.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>EC 라이드</h5><br><br>
                                69,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                                <img src="image/product/shoes11.jpg">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>인스타펌프퓨리 OG - 시티<br>콜라보레이션 서울팩</h5><br><br>
                                189,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                                <img src="image/product/shoes12.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes12_1.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>직 키네티카</h5><br><br>
                                139,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                            <img src="image/product/shoes13.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes13_1.jpg" width="70">
                                <img src="image/product/shoes13_2.jpg" width="70">
                                <img src="image/product/shoes13_3.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Tennis</h6><br>
                                <h5>리복 로얄 컴플리트 스포츠</h5><br><br>
                                55,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                            <img src="image/product/shoes14.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes14_1.jpg" width="70">
                                <img src="image/product/shoes14_2.jpg" width="70">
                                <img src="image/product/shoes14_3.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>인터벌 96</h5><br><br>
                                79,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                            <img src="image/product/shoes15.jpg">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>이베이젼</h5><br><br>
                                79,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                            <img src="image/product/shoes16.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes16_1.jpg" width="70">
                                <img src="image/product/shoes16_2.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>퓨리라이트 샌들</h5><br><br>
                                69,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                            <img src="image/product/shoes17.jpg">
                            </div>
                            <div class ="img_ex">
                                <h6>Reebok Classic/Unisex</h6><br>
                                <h5>듀얼 코트</h5><br><br>
                                99,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                                <img src="image/product/shoes18.jpg">
                            </div>
                            <div class ="img_ex">
                                <h6>Men's Tennis</h6><br>
                                <h5>리복 로얄 테크티</h5><br><br>
                                65,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                                <img src="image/product/shoes19.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes19_1.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Unisex Running</h6><br>
                                <h5>인스타펌프 퓨리 OG NM</h5><br><br>
                                189,000원
                            </div>
                        </div>
                        <div class="item" onclick="location.href='#';">
                            <div class ="img">
                                <img src="image/product/shoes20.jpg">
                            </div>
                            <div class="hover_item">
                                <img src="image/product/shoes20_1.jpg" width="70">
                            </div>
                            <div class ="img_ex">
                                <h6>Reebok Classic/Unisex</h6><br>
                                <h5>DMX 시리즈 1000</h5><br><br>
                                69,000원
                            </div>
                        </div>
                    </div> <!-- product_right_grid-->
                </div> <!-- product_right_select-->
            </div> <!-- product_content-->
            <div class="product_content_best">
                <div class = "product_header_inner2">
                    <select class="sel1"> 
                        <option selected>셀렉트박스</option>
                        <option>옵션1</option>
                        <option>옵션2</option>
                        <option>옵션3</option>
                    </select>
                    &nbsp;&nbsp;Page &nbsp;
                    <select class="sel2">
                        <option selected>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select> of 7 &nbsp; &nbsp;
                    <img src="image/product/left.jpg">
                    <img src="image/product/right.jpg">    
                </div>
                <div class = "product_best_item">
                    <h4>지금 다른 사람들이 보고있는 상품</h4>
                    <div class = "product_best_inner">
                        <div class="best_item">
                            <div class="best_img" onclick="location.href='#';">
                                <img src="image/product/shoes1.jpg" width=200px height=200px>
                            </div>
                            <b>인스타펌프 퓨리부스트</b>
                            <div class="best_item_text"><br>219,000원</div>
                        </div>
                        <div class="best_item">
                            <div class="best_img" onclick="location.href='#';">
                                <img src="image/product/shoes2.jpg" width=200px height=200px>
                            </div>
                            <b>리복 클래식 슬라이드</b>
                            <div class="best_item_text"><br>21,000원</div>
                        </div>
                        <div class="best_item">
                            <div class="best_img" onclick="location.href='#';">
                                <img src="image/product/shoes3.jpg" width=200px height=200px>
                            </div>
                            <b>리복 퀵체이스</b>
                            <div class="best_item_text"><br>59,000원</div>
                        </div>
                        <div class="best_item">
                            <div class="best_img" onclick="location.href='#';">
                                <img src="image/product/shoes4.jpg" width=200px height=200px>
                            </div>
                            <b>펌프 코트</b>
                            <div class="best_item_text"><br>199,000원</div>
                        </div>
                    </div> <!-- product_best_inner -->
                </div><!-- product_best_item -->
            </div> <!-- product_content_best-->
        </div><!-- product_wrapper-->
    </section><!-- content -->
  <jsp:include page="footer.jsp" />  
</div><!--container-->
    <script src="js/product.js"></script>
</body>
</html>