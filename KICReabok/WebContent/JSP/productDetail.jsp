<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">



<%-- pdcode : ${pdArticle.pdcode}입니다.
p_name : ${pdArticle.p_name}입니다.
p_classify : ${pdArticle.p_classify}입니다.
p_color : ${pdArticle.p_color}입니다.
p_page: ${pdArticle.p_page}입니다.
p_price : ${pdArticle.p_price}입니다.
p_explain : ${pdArticle.p_explain}입니다.
p_img : ${pdArticle.p_img}입니다. --%>


  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/productDetail.css" />
    <link rel="stylesheet" href="css/footer.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="js/header.js"></script>
    <title>상품 상세페이지</title>
  </head>
  <body>
    <div id="container">
      <jsp:include page="header.jsp" />
      <div id="contents_wrap">
        <!-- breadcrumb div 내부로 넣음 -->
        <div id="product_information">
          <div id="breadcrumb">
            <a href="https://shop.reebok.co.kr/">HOME</a>
            <img src="image/productDetail/bg_location_next.gif" />
            <a
              href="https://shop.reebok.co.kr/RPF020101.action?GUBUN=REEBOK&LEVEL=1"
              >${pdArticle.p_page}</a
            >
            <img src="image/productDetail/bg_location_next.gif" />
            <a
              href="https://shop.reebok.co.kr/RPF020201.action?ALL=ALL&S_LABEL=MEN&S_CTGR_CD=02001001&S_HIGH_CTGR_CD=02001&S_LEVEL=2&GUBUN=REEBOK"
              >MEN</a
            >
            <img src="image/productDetail/bg_location_next.gif" />
            <a href="https://shop.reebok.co.kr/RPF020401.action?PROD_CD=FU7205#"
              >${pdArticle.p_classify}</a
            >
            <img src="image/productDetail/bg_location_next.gif" />
            <a
              href="https://shop.reebok.co.kr/RPF020201.action?ALL=NONE&S_LABEL=%EC%83%81%ED%92%88%EB%B3%84&S_CTGR_CD=02001001002003&S_HIGH_CTGR_CD=02001001002&S_LEVEL=3&GUBUN=REEBOK"
              >상품별</a
            >
            <img src="image/productDetail/bg_location_next.gif" />
            <a
              id="current_page"
              href="https://shop.reebok.co.kr/RPF020201.action?ALL=NONE&S_LABEL=%EC%83%8C%EB%93%A4/%EC%8A%AC%EB%A6%AC%ED%8D%BC&S_CTGR_CD=02001001002003&S_HIGH_CTGR_CD=02001001002&S_LEVEL=3&GUBUN=REEBOK"
              >샌들/슬리퍼</a
            >
          </div>
          <div id="imgs">
            
            <div class="wrap" id="big_img">
              
              <img class="target"  src="image/productDetail/FU7205-01-08_500X500.jpg" />
            </div>
            <div class="big_thum" id="thumbnails">
            <c:forEach var="subimg" items="${subimg}" begin="1">
    				<img src="img/${subimg}"/>
			</c:forEach>
             <!--  <img src="image/productDetail/thumbnail01_60X60.jpg"/>
              <img src="image/productDetail/thumbnail02_60X60.jpg"/>
              <img src="image/productDetail/thumbnail03_60X60.jpg" />
              <img src="image/productDetail/thumbnail04_60X60.jpg" />
              <img src="image/productDetail/thumbnail05_60X60.jpg" />
              <img src="image/productDetail/thumbnail06_60X60.jpg" />
              <img src="image/productDetail/thumbnail07_60X60.jpg" />
              <img src="image/productDetail/thumbnail08_60X60.jpg" /> -->
            </div>
          </div>
          <div id="purchase">
            <div id="star">
              <img src="image/productDetail/ico_rating_empty.png" />
              <a href="#product_reviews">상품평 전체보기</a>
            </div>
            <p>UNISEX SWIM</p>
            <h2>${pdArticle.p_name}</h2>
            <div id="pricetag">
              <span id="pre_price">${pdArticle.p_price+10000}</span>
              <span id="sale_price"><strong>${pdArticle.p_price}</strong></span>
              <span id="point">예상포인트</span>
              <span class="point">1,400 [5%]</span>
            </div>
            <div id="other_colors">
              <p><strong>Color :</strong> ${pdArticle.p_color}</p>
              <div id="imglist_color">
                <a id="img_color_0"
                  ><img src="image/productDetail/thumbnail01_60X60.jpg"
                /></a>
                <a id="img_color_1"
                  ><img src="image/productDetail/FU7207-01-01_60X60.jpg"
                /></a>
              </div>
            </div>
            <div id="colors_on_sale">
              <p>할인중인 컬러</p>
              <div id="saleImglist_color">
                <a id="img_color_0"
                  ><img src="image/productDetail/thumbnail01_60X60.jpg"
                /></a>
                <a id="img_color_1"
                  ><img src="image/productDetail/FU7207-01-01_60X60.jpg"
                /></a>
              </div>
            </div>
            <div id="size_box">
              <p><a id="sizechart">사이즈 차트 보기</a></p>
              <div id="size_qty">
                <form action="" method="POST">
                  <select name="size_selection" id="size_selection">
                    <option value="0">사이즈 선택</option>
                  </select>
                  <select name="quantity" id="quantity">
                    <option value="0">수량 선택</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                  </select>
                </form>
              </div>
              <hr />
              <div id="etc_info">
                <dt>배송비</dt>
                <dd>
                  5만원 이상 구매시 무료배송 (도서 산간 지역은 추가 배송비 발생)
                </dd>
                <div id="card_info">
                  <a href="#">카드무이자</a>
                  <a href="#">자세히보기</a>
                </div>
              </div>
              <div id="buy_buttons">
                <a href="#" id="buy"><span>바로구매</span></a>
                <a href="#" id="cart"><span>장바구니</span></a>
                <img
                  id="npay"
                  src="image/productDetail/btn_buy_npay.jpg"
                  alt="네이버페이"
                />
              </div>
            </div>
          </div>
          <hr />
          <div id="product_description">
            <div id="associated_item">
              <p>이 상품과 함께 본 상품</p>
              <div class="assoc_box">
                <div class="assoc_inner">
                  <div class="assoc_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/FU7207-01-01_320X320.jpg"
                      />
                      <div class="assoc_name">리복 컴포트 슬라이드 2.0</div>
                    </a>
                  </div>
                  <div class="sale_price">28,000 원</div>
                  <div class="og_price">35,000 원</div>
                </div>
              </div>
              <div class="assoc_box">
                <div class="assoc_inner">
                  <div class="assoc_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/EH0416-01-08_320X320.jpg"
                      />
                      <div class="assoc_name">리복 클래식 슬라이드</div>
                    </a>
                  </div>
                  <div class="sale_price">20,300 원</div>
                  <div class="og_price">29,000 원</div>
                </div>
              </div>
              <div class="assoc_box">
                <div class="assoc_inner">
                  <div class="assoc_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/DV4908-01-01_320X320.jpg"
                      />
                      <div class="assoc_name">리복 클래식 슬라이드</div>
                    </a>
                  </div>
                  <div class="sale_price">17,400 원</div>
                  <div class="og_price">29,000 원</div>
                </div>
              </div>
              <div class="assoc_box">
                <div class="assoc_inner">
                  <div class="assoc_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/DV5194-01-01_320X320.jpg"
                      />
                      <div class="assoc_name">클래식 슬라이드</div>
                    </a>
                  </div>
                  <div class="sale_price">17,400 원</div>
                  <div class="og_price">29,000 원</div>
                </div>
              </div>
              <!-- <div class="assoc_box">
                <div class="assoc_inner">
                  <div class="assoc_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/EH0667-01-08_320X320.jpg"
                      />
                      <div>리복 클래식 슬라이드</div>
                    </a>
                  </div>
                  <div class="sale_price">20,300 원</div>
                  <div class="og_price">29,000 원</div>
                </div>
              </div>
              <div class="assoc_box">
                <div class="assoc_inner">
                  <div class="assoc_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/FS8805-01-04_320X320.jpg"
                      />
                      <div>클래식 SVT WV 쇼츠</div>
                    </a>
                  </div>
                  <div class="sale_price">27,300 원</div>
                  <div class="og_price">39,000 원</div>
                </div>
              </div>
              <div class="assoc_box">
                <div class="assoc_inner">
                  <div class="assoc_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/FX1163-01-01_320X320.jpg"
                      />
                      <div>리복 에너지럭스 드리프티움 2</div>
                    </a>
                  </div>
                  <div class="sale_price">48,300 원</div>
                  <div class="og_price">69,000 원</div>
                </div>
              </div>
              <div class="assoc_box">
                <div class="assoc_inner">
                  <div class="assoc_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/FX1165-01-01_320X320.jpg"
                      />
                      <div>리복 에너지럭스 드리프티움 2</div>
                    </a>
                  </div>
                  <div class="sale_price">48,300 원</div>
                  <div class="og_price">69,000 원</div>
                </div>
              </div> -->
            </div>
          </div>
          <p id="ctgr">UNISEX SWIM</p>
          <p id="title">리복 컴포트 슬라이드 2.0</p>
          <div id="content">
            이 편안한 슬라이드를 신어보세요. 상단에 리복 로고가 특징을 가지고
            있으며, 부드러운 발바닥과 이중밀도 아웃솔이 당신의 발걸음을 가볍게
            만들어 줍니다.<br /><br />• 클래식 슬라이드<br />• 신고 벗기 편한
            슬립온<br />• 상징적인 리복 로고<br />
          </div>
          <div id="product_reviews">
            <h3>상품평</h3>
            <hr />
            <div class="rating_summary">
              <div class="rating-star">
                <div class="star-container">
                  <!-- <div class="star-point" style="width: 64%">
                    <img src="image/productDetail/ico_rating.png" />
                  </div> -->
                  <div class="star-bg">
                    <img src="image/productDetail/ico_rating_empty.png" />
                  </div>
                </div>
                <div class="star-count">3.2</div>
              </div>
              <p class="count">38 REVIEWS</p>
              <p class="per">64%</p>
              <p class="desc">고객님들이 이 상품을 추천하셨습니다.</p>
              <!-- <dl class="rating_grph">
                <dt>사이즈</dt>
                <dd>
                  <div class="radio_img spt_bg">
                    <div class="point spt_bg" style="left: 127.9px"></div>
                  </div>
                  <div class="labels">
                    <span class="p1">매우 작아요</span>
                    <span class="p2">적당해요</span>
                    <span class="p3">매우 커요</span>
                  </div>
                </dd>
              </dl>
              <dl class="rating_grph">
                <dt>발볼</dt>
                <dd>
                  <div class="radio_img spt_bg">
                    <div class="point spt_bg" style="left: 123.2px"></div>
                  </div>
                  <div class="labels">
                    <span class="p1">매우 작아요</span>
                    <span class="p2">적당해요</span>
                    <span class="p3">매우 커요</span>
                  </div>
                </dd>
              </dl>
              <dl class="rating_grph">
                <dt>색상</dt>
                <dd>
                  <div class="radio_img spt_bg">
                    <div class="point spt_bg" style="left: 136.2px"></div>
                  </div>
                  <div class="labels">
                    <span class="p1">매우 어두워요</span>
                    <span class="p2">적당해요</span>
                    <span class="p3">매우 밝아요</span>
                  </div>
                </dd>
              </dl>
              <dl class="rating_grph">
                <dt>배송</dt>
                <dd>
                  <div class="radio_img spt_bg">
                    <div class="point spt_bg" style="left: 127.9px"></div>
                  </div>
                  <div class="labels">
                    <span class="p1">매우 느려요</span>
                    <span class="p2">적당해요</span>
                    <span class="p3">매우 빨라요</span>
                  </div>
                </dd>
              </dl> -->
            </div>
            <div id="review_lists">
              <div class="box">
                <div class="rating-star">
                  <div class="star-container">
                    <!-- <div class="star-point" style="width: 60%">
                      <img
                        src="image/productDetail/ico_rating.png"
                        alt=""
                      />
                    </div> -->
                    <div class="star-bg">
                      <img
                        src="image/productDetail/ico_rating_empty.png"
                        alt=""
                      />
                    </div>
                    <div class="prod_cd">FU7207</div>
                    <div class="date">2020-09-07</div>
                  </div>
                </div>
                <div class="content" id="con_1">
                  배송나름 빠르게 받았고 디자인 좋고 가격 따봉
                </div>
                <div class="photos">
                  <a href="#">
                    <img
                      src="image/productDetail/0bff7edc64bf42779037ba96413bbb70_0907151641.jpg"
                    />
                  </a>
                </div>
                <div class="info"><span class="user_id">don***</span></div>
              </div>

              <a id="moreBtn" href="" class=""><span>리뷰 더보기</span></a>
            </div>
          </div>
          <div id="product_spec">
            <div id="spec">
              <table>
                <tbody>
                  <tr>
                    <th>제품코드</th>
                    <td>FU7205</td>
                    <th>컬러</th>
                    <td>BLACK</td>
                  </tr>
                  <tr>
                    <th>용도</th>
                    <td colspan="3">스윔</td>
                  </tr>
                  <tr>
                    <th>소재</th>
                    <td colspan="3">
                      갑피: 100% 폴리에스터/ 인조가죽/ 안감: 100% 폴리에스터/
                      압축 EVA/ 특수배합 합성고무
                    </td>
                  </tr>
                  <tr>
                    <th>원산지</th>
                    <td>베트남</td>
                    <th>제조년월</th>
                    <td>2020-05</td>
                  </tr>
                  <tr>
                    <th>제조자/수입자</th>
                    <td colspan="3">adidasAG/ 아디다스코리아(유)</td>
                  </tr>
                  <tr>
                    <th>안전확인<br />신고 확인증 번호</th>
                    <td colspan="3"></td>
                  </tr>
                  <tr>
                    <th scope="row">안전품질표시</th>
                    <td colspan="3">
                      <img
                        src="image/productDetail/kc_adult.jpg"
                        alt="안전품질표시"
                      />
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div id="spec_etc">
              <ul id="etc_list">
                <li><a href="#">• 배송 / 반품 / 교환</a></li>
                <li><a href="#">• 세탁 및 취급시 유의사항</a></li>
                <li><a href="#">• 품질보증 및 AS정보</a></li>
              </ul>
              <a href="#">컨텐츠 관련 안내</a>
            </div>
          </div>
          <div id="recommend_list">
            <h3>추천 상품</h3>
            <div>
              <div class="recom_box">
                <div class="recom_inner">
                  <div class="recom_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/FU7207-01-01_320X320.jpg"
                      />
                      <div class="recom_name">
                        [Unisex Swim] 리복 컴포트 슬라이드 2.0
                      </div>
                    </a>
                  </div>
                  <div class="og_price">35,000 원</div>
                  <div class="sale_price">28,000 원</div>
                </div>
              </div>
              <div class="recom_box">
                <div class="recom_inner">
                  <div class="recom_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/EH0416-01-08_320X320.jpg"
                      />
                      <div class="recom_name">
                        [Reebok Classic/Unisex] 리복 클래식 슬라이드
                      </div>
                    </a>
                  </div>
                  <div class="og_price">29,000 원</div>
                  <div class="sale_price">20,300 원</div>
                </div>
              </div>
              <div class="recom_box">
                <div class="recom_inner">
                  <div class="recom_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/DV4908-01-01_320X320.jpg"
                      />
                      <div class="recom_name">
                        [Reebok Classic/Unisex] 리복 클래식 슬라이드
                      </div>
                    </a>
                  </div>
                  <div class="og_price">29,000 원</div>
                  <div class="sale_price">17,400 원</div>
                </div>
              </div>
              <div class="recom_box">
                <div class="recom_inner">
                  <div class="recom_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/DV5194-01-01_320X320.jpg"
                      />
                      <div class="recom_name">
                        [Reebok Classic/Unisex] 클래식 슬라이드
                      </div>
                    </a>
                  </div>
                  <div class="og_price">29,000 원</div>
                  <div class="sale_price">17,400 원</div>
                </div>
              </div>
            </div>
          </div>
          <div id="recently_viewed">
            <h3>최근 본 상품</h3>
            <div>
              <div class="recent_box">
                <div class="recent_inner">
                  <div class="recent_img">
                    <a href="#"
                      ><img
                        src="image/productDetail/DV5194-01-01_320X320.jpg"
                      />
                      <div class="recent_name">
                        [Reebok Classic/Unisex] 클래식 슬라이드
                      </div>
                    </a>
                  </div>
                  <div class="og_price">29,000 원</div>
                  <div class="sale_price">17,400 원</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
 <jsp:include page="footer.jsp" />  
    </div>
    <script src="js/productDetail.js"></script>
  </body>
</html>
