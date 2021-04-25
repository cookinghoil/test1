<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/kangol.css" />
<link rel="stylesheet" href="css/footer.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>KANGOL</title>
</head>
<body>
	<div id="container">
		<header>
			<nav>
				<a href="index.do" id="main_icon"></a>
				<div id="login_menu">
					<ul id="login_menubar">
						<li><a href="#">LOGIN</a></li>
						<li><a href="#">JOIN</a></li>
						<li><a href="#">CART</a></li>
						<li><a href="#">ORDER</a></li>

						<li id="mypage"><a href="#">MY PAGE▼</a>
							<div id="dropdown_bar">
								<ul id="sub">
									<li><a href="#">구매정보</a></li>
									<li><a href="#">배송조회</a></li>
									<li><a href="#">개인정보</a></li>
									<li><a href="#">나의리뷰</a></li>
									<li><a href="#">1:1문의</a></li>
								</ul>
							</div></li>
				</div>
	</div>
	</ul>
	</nav>
	<div id="main_con">
		<div id="blank"></div>
		<a href="https://kangolkorea.com/" id="logo"><img
			src="image/header/logo.png"></a>
		<div id="search">
			<input type="text" id="box"> <a href="#" id="search_img"><img
				src="image/header/search.png"></a>
		</div>
	</div>
	<div>

		<ul class="menu_bar">
			<li class="menu"><a class="topMenu"
				href="https://kangolkorea.com/product/list.html?cate_no=12">HEADWEAR</a>
				<ul class="sub_menu">
					<li><a href="#">야구모자</a></li>
					<li><a href="#">헌팅캡</a></li>
					<li><a href="#">버킷햇</a></li>
					<li><a href="#">ETC</a></li>
				</ul></li>
			<li class="menu"><a class="topMenu" href="#">BAG</a>
				<ul class="sub_menu">
					<li><a href="#">백팩</a></li>
					<li><a href="#">크로스백</a></li>
					<li><a href="#">슬링백/클러치백</a></li>
					<li><a href="#">토트백</a></li>
					<li><a href="#">캐리어</a></li>
				</ul></li>
			<li class="menu"><a class="topMenu"
				href="https://kangolkorea.com/product/list.html?cate_no=4">CLOTHES</a>
				<ul class="sub_menu">
					<li><a href="#">아웃웨어</a></li>
					<li><a href="#">티셔츠</a></li>
					<li><a href="#">셔츠</a></li>
					<li><a href="#">바지</a></li>
				</ul></li>
			<li class="menu"><a class="topMenu"
				href="https://kangolkorea.com/product/list.html?cate_no=25">SHOES</a>
				<ul class="sub_menu">
					<li><a href="#">슬립온</a></li>
					<li><a href="#">스니커즈</a></li>
					<li><a href="#">ETC</a></li>
				</ul></li>
			<li class="menu"><a class="topMenu"
				href="https://kangolkorea.com/product/list.html?cate_no=24">ACC</a>
				<ul class="sub_menu">
					<li><a href="#">선글라스</a></li>
					<li><a href="#">지갑/카드홀더</a></li>
					<li><a href="#">키홀더</a></li>
					<li><a href="#">ETC</a></li>
				</ul></li>
			<li class="menu"><a class="topMenu"
				href="https://kangolkorea.com/board/event/list.html?board_no=8">COMMUNITY</a>
				<ul class="sub_menu">
					<li><a href="#">이벤트</a></li>
					<li><a href="#">고객리뷰</a></li>
					<li><a href="#">페이스북</a></li>
					<li><a href="#">WHAT'S NEWS</a></li>
					<li><a href="#">홍대스토어</a></li>
				</ul></li>
			<li class="menu"><a class="topMenu"
				href="https://kangolkorea.com/lookbook/list.html?cate_no=216">LOOKBOOK</a>
				<ul class="sub_menu">
					<li><a href="#">룩북</a></li>
					<li><a href="#">영상</a></li>
				</ul></li>
		</ul>
	</div>
	</header>

	<div class="pic">
		<a href="#"><img class="pic1" src="image/kangol/main/pic.jpg"></a>
	</div>

	<section id="detail_se">
		<div id="detail">
			<a href="#"><h5 id="text_pro">TOTAL PRODUCT:${count}</h5></a> <a href="#"><h5
					id="home">' '</h5>
				<h5 id="text_home">HOME</h5></a>
			<h5 id="text_deco">></h5>
			<a href="#"><h5 id="text_bag">BAG</h5></a>
		</div>
		<div id="middle_line">
			<hr id="line1" size=2">
			<h1 id="middle_topic">
				<a href="#">BAG</a>
			</h1>
		</div>
		<div id="middle_bar">
			<ul>
				<li><a
					href="https://kangolkorea.com/product/list.html?cate_no=33">백팩</a></li>
				<li><a
					href="https://kangolkorea.com/product/list.html?cate_no=34">크로스백</a></li>
				<li><a
					href="https://kangolkorea.com/product/list.html?cate_no=36">스링백/클러치백</a></li>
				<li><a
					href="https://kangolkorea.com/product/list.html?cate_no=35">토트백</a></li>
				<li><a
					href="https://kangolkorea.com/product/list.html?cate_no=233">캐리어</a></li>
			</ul>
		</div>
		<select name="option">
			<option value="first">정렬방식</option>
			<option value="second">신상품</option>
			<option value="third">상품명</option>
			<option value="fourth">낮은가격</option>
			<option value="fifth">높은가격</option>
			<option value="sixth">제조사</option>
			<option value="seventh">사용후기</option>
		</select>
	</section>

	<article>
		<div class="grid_product">
				<c:forEach var="kangol" items="${PdArticleList}">
					<div class="item">
						<a href="productDetail.do?pdcode=${kangol.pdcode}"
							name="logo_bag"> 
							<img src="https://kangolkorea.com/web/product/tiny/202008/fc091327ccd4c571771531b8d303d0b2.jpg"
							class="product" alt="<c:out value="${kangol.p_name}" />"></a>
						<div class="product_explain">
							<center>
								<img src="image/product/custom_1.gif" alt="신상품">
								<h6>
									<c:out value="${kangol.p_name}" />
									<br>
									<c:out value="${kangol.p_color}" />
								</h6>
								<span class="price"><c:out value="${kangol.p_price}" /></span>
							</center>
						</div>
					</div>
				</c:forEach>
			<%-- <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4828&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/medium/202008/14b57fba807f01d50eb4b0d45569ff7c.jpg" class="product" alt="플러피 로고 캔버스 버킷백
                    3793 아이보리"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>플러피 로고 캔버스 버킷백<br>3793 아이보리</h6>
                    <span class="price">65,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4924&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/9dc11512a4c7dac1c2abf8350f8320e5.jpg" class="product" alt="코드 믹스 미니 크로스백
                    3109 라이트베이지"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>코드 믹스 미니 크로스백<br>3109 라이트베이지</h6>
                    <span class="price">45,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4829&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/7e5a74eb4ae4a17f5f8d51b760f64762.jpg" class="product" alt="코드 믹스 미니 크로스백 3109 블랙"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>코드 믹스 미니 크로스백<br>3109 블랙</h6>
                    <span class="price">45,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4922&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/c4752adaa4c8d984291a84dc31bca393.jpg" class="product" alt="코드 믹스 버킷백 3798 라이트베이지"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>코드 믹스 버킷백<br>3798 라이트베이지</h6>
                    <span class="price">65,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4921&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/aa8a2fcd5ad94dcb7af707a487f5ebc4.jpg" class="product" alt="코드 믹스 버킷백 3798 블랙"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>코드 믹스 버킷백<br>3798 블랙</h6>
                    <span class="price">65,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4920&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/93ceced4d489611d7250dbcc8339d1b8.jpg" class="product" alt="푸들 Ⅲ 버킷백 3799 아이보리"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>푸들 Ⅲ 버킷백<br>3799 아이보리</h6>
                    <span class="price">65,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4919&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/8d4d9493eecdbd0d37b669a8fc709746.jpg" class="product" alt="푸들 Ⅲ 버킷백 3799 블랙"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>푸들 Ⅲ 버킷백<br>3799 블랙</h6>
                    <span class="price">65,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4912&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/4f8c8ed03300c491a02e7e82f97ea317.jpg" class="product" alt="푸들 Ⅲ 미니 크로스백 3111 베이지"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>푸들 Ⅲ 미니 크로스백<br>3111 베이지</h6>
                    <span class="price">45,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4913&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/e3e1fb1463d5b9544c24f5bf771ba726.jpg" class="product" alt="푸들 Ⅲ 미니 크로스백 3111 블랙"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>푸들 Ⅲ 미니 크로스백<br>3111 블랙</h6>
                    <span class="price">45,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4914&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/2da7d6eac0f5d63a038668037840fd2d.jpg" class="product" alt="푸들 Ⅲ 미니 크로스백 3111 아이보리"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>푸들 Ⅲ 미니 크로스백<br>3111 아이보리</h6>
                    <span class="price">45,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4915&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/d5a70105eacd3e609d991d9e55866f97.jpg" class="product" alt="푸들 Ⅲ 스퀘어 크로스백 3110 블랙"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>푸들 Ⅲ 스퀘어 크로스백<br>3110 블랙</h6>
                    <span class="price">58,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4916&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/48ba87605022860a606d1a9be886d6a9.jpg" class="product" alt="푸들 Ⅲ 스퀘어 크로스백 3110 아이보리"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>푸들 Ⅲ 스퀘어 크로스백<br>3110 아이보리</h6>
                    <span class="price">58,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                <a href="https://kangolkorea.com/product/detail.html?product_no=4888&cate_no=7&display_group=1" name="logo_bag">
                <img src="https://kangolkorea.com/web/product/tiny/202008/6a0d5e4f3ce37eb090a6274085748c41.jpg" class="product" alt="코드 빅 웨일 백팩 1377 라이트베이지"></a>
                <div class="product_explain">
                    <center>
                        <img src="image/product/custom_1.gif" alt="신상품">
                        <h6>코드 빅 웨일 백팩<br>1377 라이트베이지</h6>
                        <span class="price">118,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4887&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/98960fdf8d1cf586f0de14a834c03fb2.jpg" class="product" alt="코드 빅 웨일 백팩 1377 블랙"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>코드 빅 웨일 백팩<br>1377 블랙</h6>
                    <span class="price">118,000원</span>
                    </center>
                </div>
            </div>
            <div class="item">
                    <a href="https://kangolkorea.com/product/detail.html?product_no=4886&cate_no=7&display_group=1" name="logo_bag">
                    <img src="https://kangolkorea.com/web/product/tiny/202008/02c45fc9851112596c8b321a257aac1c.jpg" class="product" alt="코드 빅 웨일 토트백 3797 라이트베이지"></a>
                <div class="product_explain">
                    <center>
                    <img src="image/product/custom_1.gif" alt="신상품">
                    <h6>코드 빅 웨일 토트백<br>3797 라이트베이지</h6>
                    <span class="price">72,000원</span>
                    </center>
                </div>
            </div> --%>
		</div>
		<div id="order">
			<ul>
				<li><a href="#"><<</a></li>
				<li><a href="#"><</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">>></a></li>
				<li><a href="#">></a></li>
			</ul>
		</div>
		<section class="bottom">
			<div class="bottom_option">
				<div class="banner">
					<a href="#"><img src="image/footer/kangol_store.jpg" alt="배너"></a>
					<ul class="bottom_option2">
						<li><a href="#"> <img src="image/footer/about.png"
								alt="footer_icon"></a></li>
						<li><a href="#"> <img
								src="image/footer/store_information.png" alt="footer_icon"></a></li>
						<li><a href="#"> <img
								src="image/footer/search_shipping.png" alt="footer_icon"></a></li>
						<li><a href="#"> <img src="image/footer/Q_and_Q.png"
								alt="footer_icon"></a></li>
					</ul>
				</div>
				<div class="vl"></div>
				<div class="notice">
					<h3>공지사항</h3>
					<a href="#"><img src="image/footer/more.png" alt="더보기"></a>
					<ul>
						<li class="line"><a href="#">[캉골코리아]</a></li>
						<span class="line2"><a href="#">캉골스토어 회원 혜택 안내</a></span>
						<li class="line"><a href="#">[캉골코리아]</a></li>
						<span class="line2"><a href="#">네이버 알림서비스 시행</a></span>
						<li class="line"><a href="#">[캉골코리아]</a></li>
						<span class="line2"><a href="#">8/14 ~ 8/17 휴무 안내</a></span>
						<li class="line"><a href="#">[캉골코리아]</a></li>
						<span class="line2"><a href="#">캉골 가품 주의 안내</a></span>
						<li class="line"><a href="#">[캉골코리아]</a></li>
						<span class="line2"><a href="#">10/30 ~ 11/5 휴무 안내</a></span>
					</ul>
				</div>
				<div class="vl2"></div>
				<div class="contact">
					<h3>고객센터</h3>
					<p class="number">1899-1066</p>
					<sapn class="time">
					<p>평일 10:00 ~ 17:00 / 점심시간 12:00~13:00</p>
					<p>토,공휴일엔 1:1문의를 이용해주세요</p>
					<p>빠른답변드리겠습니다.</p>
					</sapn>
				</div>
			</div>
		</section>
		<jsp:include page="footer.jsp" />
		</div>
</body>
<script>
	$(".topMenu, .sub_menu").hover(function() {
		$(".sub_menu").css("opacity", 1);
		$(".sub_menu").css('visibility', '');
		$(".sub_menu").css('height', '200px');
	}, function() {
		$(".sub_menu").css("opacity", 0);
		$(".sub_menu").css('visibility', 'hidden');
		$(".sub_menu").css('height', '0px');
	})

	$(document).ready(function() {
		var menu_barOffset = $('.menu_bar').offset();
		$(window).scroll(function() {
			if ($(document).scrollTop() > menu_barOffset.top) {
				$('.menu_bar').addClass('active');
			} else {
				$('.menu_bar').removeClass('active');
			}
		});
	});
</script>
</html>