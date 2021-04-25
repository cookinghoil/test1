<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/footer.css" />
    <link rel="stylesheet" href="css/userPage.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="js/header.js"></script>
    <title>상품 상세페이지</title>
  </head>
  <body>
    <div id="container">
     <jsp:include page="header.jsp" />
      <section id="user_main">
        <div id="contents">
            <div id="left_box">
                <h4><img src="image/userPage/title.gif"></h4>
                <dl id="list_box">
                   <dt>나의 쇼핑내역</dt>
                   <dd>
                       <ul>
                           <li>주문/배송조회</li>
                           <li>취소/반품조회</li>
                           <li>교환내역 조회</li>
                           <li>취소/반품 결제대기</li>
                           <li>교환 결제대기</li>
                           <li>증빙서류발급</li>
                       </ul>
                   </dd>
                   <dt>나의 쇼핑내역</dt>
                   <dd>
                       <ul>
                           <li>쿠폰현황</li>
                           <li>포인트 현황</li>
                       </ul>
                   </dd>
                   <dt>나의 쇼핑내역</dt>
                   <dd>
                       <ul>
                           <li>오늘 본 상품</li>
                       </ul>
                   </dd>
                   <dt>나의 쇼핑내역</dt>
                   <dd>
                       <ul>
                           <li><a href="userModify.do">회원정보 수정</a></li>
                           <li>배송지 관리</li>
                           <li>회원탈퇴</li>
                           <li>SNS 연결설정</li>
                       </ul>
                   </dd>
                   <dt>나의 쇼핑내역</dt>
                   <dd>
                       <ul>
                           <li>1:1 문의내역</li>
                       </ul>
                   </dd>
                   <dt>나의 쇼핑내역</dt>
                   <dd>
                       <ul>
                           <li>나의 이벤트 현황</li>
                           <li>내가 작성한 상품평</li>
                       </ul>
                   </dd>
                </dl>
            </div>
            <div id="right_box">
                <div id="right_1">
                    <p>HOME > 마이페이지</p>
                </div>
                <div id="right_2">
                  <div id="right_2_sub1">
                    <img src="image/userPage/ree_club.gif" height="72px" width="72px">
                    <img src="image/userPage/btn_1.gif" height="23px" width="72px">
                  </div>
                  <div id="right_2_sub2">
                    <h3>홍길동님</h3>
                    <table>
                      <tr>
                        <th>
                          <img src="image/userPage/coupon.gif">
                        </th>
                        <td><strong>1</strong> 장</td>
                      </tr>
                      <tr>
                        <th>
                          <img src="image/userPage/mypoint.gif">
                        </th>
                        
                        <td><strong>0</strong>&nbsp;<img src="image/userPage/Picon.gif"></td>
                      </tr>
                    </table>
                  </div>
                  <div id="right_2_sub3">
                      <div id="right_2_sub3_1">
                        <h4>나의 쇼핑</h4>
                        <ul>
                          <li>결제완료 <a href="#">0</a>건 |</li>
                          <li>배송준비중 <a href="#">0</a>건 |</li>
                          <li>배송중 <a href="#">0</a>건 |</li>
                          <li>배송완료 <a href="#">0</a>건</li>
                        </ul>
                      </div>
                      <div id="right_2_sub3_2">
                        <div id="sub3_2_1">
                          <h4>나의 정보</h4>
                          <img src="image/userPage/btn_2.gif">
                        </div>
                        <div id="sub3_2_2">
                          <p>주소:</p>
                          <p>휴대폰: 010-0000-0000</p>
                        </div>
                      </div>

                  </div>
                </div>
                <div id="right_3"><img src="image/userPage/order.gif"> <span>상품별 결제금액은 주문시 총 결제 금액과 다를 수 있으며 자세한 정보를 보시려면 주문번호를 클릭하셔서 확인해주십시오.</span></div>
                <hr>
                <div id="right_4">
                    <span> <img src="image/userPage/blt_1.gif">기간조회 <img src="image/userPage/btn_3month.gif"> <img src="image/userPage/btn_6month.gif"> <img src="image/userPage/btn_2years.gif"></span>
                    <span>
                        <input type="text"/>&nbsp;~&nbsp;<input type="text"/> <img src="image/userPage/btn_3.gif">
                    </span>
                </div>
                <div id="right_5">
                    <table>
                        <thead>
                            <tr>
                                <td width="40px"><strong>매장명</strong></td>
                                <td><strong>주문번호/일자</strong></td>
                                <td width="160px"><strong>상품명</strong></td>
                                <td><strong>판매금액</strong></td>
                                <td><strong>사이즈</strong></td>
                                <td width="30px"><strong>주문수량</strong></td>
                                <td width="30px"><strong>취소수량</strong></td>
                                <td><strong>주문상태</strong></td>
                                <td><strong>취소/반품</strong></td>
                                <td><strong>교환</strong></td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th colspan="10">주문배송 현황이 없습니다.</th>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="right_6">
                  <div id="right_6_sub1">
                      <div id="right_6_sub1_1">
                        <img src="image/userPage/tit_main01.gif" width="55px" height="15px">
                        <img src="image/userPage/btn_more.gif" width="30px" height="15px">
                      </div>
                      <div id="right_6_sub1_2">
                        <div><p>취소</p><ul><li>취소신청 <a href="#">0</a>건</li>&nbsp; &nbsp;<li>취소완료 <a href="#">0</a>건</li>&nbsp;&nbsp; <li>매장취소 <a href="#">0</a>건</li></ul></div>
                        <div><p>반품</p><ul><li>반품신청 <a href="#">0</a>건</li>&nbsp; &nbsp;<li>반품완료 <a href="#">0</a>건</li></ul></div>
                        <div><p>교환</p><ul><li>교환신청 <a href="#">0</a>건</li>&nbsp; &nbsp;<li>교환완료 <a href="#">0</a>건</li></ul></div>
                      </div>
                  </div>
                  <div id="right_6_sub2">
                    <div id="right_6_sub2_1">
                      <img src="image/userPage/tit_main02.gif" width="55px" height="15px">
                      <img src="image/userPage/btn_more.gif" width="30px" height="15px">
                    </div>
                   <div id="right_6_sub2_2">
                     <div>&nbsp;문의내역이 없습니다.</div>
                     <div id="bg"></div>
                     <div></div>
                     <div id="bg"></div>
                   </div>
                  </div>
                </div>
                <div id="right_7">
                  <div id="right_7_sub1">
                    <div id="right_6_sub2_1">
                      <img src="image/userPage/tit_main02.gif" width="55px" height="15px">
                      <img src="image/userPage/btn_more.gif" width="30px" height="15px">
                    </div>
                    <div id="right_6_sub2_2">
                      <div>&nbsp;문의내역이 없습니다.</div>
                      <div id="bg"></div>
                      <div></div>
                      <div id="bg"></div>
                    </div>
                  </div>
                  <div id="right_7_sub2">
                    <div id="right_6_sub2_1">
                      <img src="image/userPage/tit_main02.gif" width="55px" height="15px">
                      <img src="image/userPage/btn_more.gif" width="30px" height="15px">
                    </div>
                    <div id="right_7_sub2_2">
                      
                      <div id="right_7_sub2_div">
                        <img src="image/userPage/no.gif">
                        <p>작성하신 상품평이 없습니다.</p>
                      </div>
                      
                      <div id="right_7_sub2_div">
                        <img src="image/userPage/no.gif">
                        <p>작성하신 상품평이 없습니다.</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div id="right_8">
                    <div id="list_title"><span>오늘 본 상품</span><span><img src="image/userPage/btn_more2.gif"></span></div>
                    <div id="item_box">
                        <figure>
                            <img src="image/product/shoes1.jpg" width="90px" height="90px">
                            <figcaption>18000원</figcaption>
                        </figure>
                    </div>
                </div>
            </div>
        </div>

      </section>
<jsp:include page="footer.jsp" />
    </div>
  </body>
</html>
