<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="css/header.css">
    <link rel="stylesheet"  href="css/shop_cart.css" > 
    <link rel="stylesheet"  href="css/footer.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="js/header.js"></script>
    <script src="js/shop_cart.js"></script>
    <title>Document</title>
</head>
<body>
    <div id="container">
        <jsp:include page="header.jsp" />
    <!--  여기 사이에 작성하세요! -->       
        <section id="content_wrap">
            <form>
            <div id="title_area">
                <div id="tit_left">
                    <img src="image/shopping/cart_title.gif">      
                    <span id="title_txt">Home > 장바구니</span>              
                </div>
                <div id = "order">
                    <ul id="tit_right">
                        <li><img src="image/shopping/cart.gif"></li>
                        <li><img src="image/shopping/order.gif"></li>
                        <li><img src="image/shopping/order_end.gif"></li>
                    </ul>
                </div>
            </div>
            <div id="content" >
                <div id="grid">
                    <div id ="dl">
                    <dl id="info">
                        <dt></dt>                    
                        <dd>
                            <ul id="explain">
                                <li>- 장바구니에 담긴 상품리스트는 최대 30일간 저장되며, 판매가 종료된 상품은 장바구니에서 자동 삭제됩니다.</li>
                                <li>- 장바구니 비우기 버튼을 클릭하시면 장바구니의 모든 상품이 취소됩니다.</li>
                                <li>- 사이즈 또는 주문 수량을 변경하시려면 사이즈 또는 수량을 새로 선택하신 후 변경버튼을 눌러 주십시오.</li>
                                <li>- 두 개 이상의 상품을 구매하셨을 경우, 빠른 배송을 위해 주문하신 상품이 각각 배송될 수 있습니다.</li>
                                <li><strong>- 장바구니에 보관된 상품은 결제완료된 상품이 아니므로 사정에 따라 품절 및 할인율이 변경될 수 있습니다.</strong></li>
                            </ul>
                        </dd>
                    </dl>
                    </div>
                </div>
                <div id="grid2">
                    <div id="cart">
                        <img src ="image/shopping/cont_tit_cart.gif">
                    </div>
                    <div id = cart_list>
                        <table summary="장바구니" id="shop_cart_list">
                            <colgroup>
                                <col width="26px">
                                <col width="365px">
                                <col width="85px">
                                <col width="104px">
                                <col width="100px">
                                <col width="84px">
                                <col width="86px">
                            </colgroup>
                            <thead>
                                <tr width="850px">
                                <th scope="col"><input type="checkbox"></th>
                                <th scope="col">상품명</th>
                                <th scope="col">판매금액</th>
                                <th scope="col">수량</th>
                                <th scope="col">주문금액</th>
                                <th scope="col">예상포인트</th>
                                <th scope="col">주문/삭제</th>
                                </tr>
                            </thead>
                            <tbody id="body1">
                                <tr class="check_body0">
                                    <td colspan="7"> 장바구니 리스트가 없습니다.</td>
                                </tr>
                            </tbody>
                            <tbody id="body2"> 
                                <tr class="check_body1">
                                    <td><input type="checkbox"></td>
                                    <td id="product"> 
                                        <div class="cart_img">
                                            <img src="image/shopping/img_shoes.jpg" width=70px height=60px>
                                        </div> 
                                        <div id="product_form">
                                            <span>asddasadasd23423342s</span><br>
                                            <select class="pf_sel" style="width:90px;height:20px;">
                                                <option>230</option>
                                                <option>240</option>
                                                <option>250</option>
                                                <option>260</option>
                                            </select>                                        
                                            <button class="change pro_btn"></button>
                                        </div>
                                    </td>
                                    <td> 80,000</td>
                                    <td> 
                                        <div class="form">
                                        <!-- <input type="number" style="width:24px" class="count_in" value="1"
                                        step="1" min="1" max="100"> -->
                                        <input type="text" style="width:24px" name="num" class="num" value="1">
                                        <img src="image/shopping/btn_plus.gif" class="plus">
                                        <img src="image/shopping/btn_minus.gif" class="minus">
                                        <button class="change ch_btn"></button>
                                        </div>
                                    </td>
                                    <td> 160,000</td>
                                    <td> 700&nbsp;<img src="image/shopping/point.gif"></td>
                                    <td> 
                                        <a href="javascript:void(0);"><button id="od_bt"></button></a>
                                        <a href="javascript:void(0);"><button id="dl_bt"></button></a>  
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div id="total">
                            <div id="left_del">
                               <span>선택한 상품</span>
                            <button class="del_btn"><a href="javascript:void(0);"></a></button>
                            </div>
                            <div id="right_del">
                            <dl>
                                <dt id="dt_text"><strong>총주문금액</strong></dt>
                                <dd><strong>0 원</strong></dd><br>
                                <dt>예상포인트</dt>
                                <dd>0&nbsp;&nbsp;<img src="image/shopping/point.gif"></dd>
                            </dl>
                            </div>
                        </div>
                        <div id ="all_button">
                            <div id="button_container">
                                <div>
                                    <ul id="left_btn">
                                        <li><a href="javascript:void(0);">
                                            <img src="image/shopping/continue.gif"></a></li>
                                        <li><a href="javascript:void(0);">
                                            <img src="image/shopping/clear.gif"></a></li>
                                    </ul>
                                </div>
                                <div>
                                    <ul id="right_btn">
                                        <li><a href="javascript:void(0);">
                                            <img src="image/shopping/all_order.gif"></a></li>
                                        <li><a href="javascript:void(0);">
                                            <img src="image/shopping/check_order.gif"></a></li>
                                        <li><a href="javascript:void(0);">
                                            <img src="image/shopping/Npay_order.jpg"></a></li>
                                    </ul>
                                </div>
                            </div> <!--button_container-->
                        </div> <!--all_button-->
                    </div><!--cart_list-->              
                </div><!-- grid 2-->
            </div><!--content--><p>
            <button type="button" id="t_btn" class="test_btn1" data-btn="0">테스트</button>
            <!-- <button type="button" class="test_btn2" data-btn="1">만들기2</button> -->
            </form>
        </section>
   <jsp:include page="footer.jsp" />     
    </div><!--contanier-->
    <!--<script type="text/javascript" src="js/brand2.js"></script>-->
</body>
</html>