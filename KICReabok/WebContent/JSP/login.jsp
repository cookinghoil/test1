<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/footer.css" />
    <script language="JavaScript" src="js/login.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="css/login.css" >
    <script src="js/header.js"></script>
    <title>Document</title>
</head>
<body>
    <div id="container">
        <jsp:include page="header.jsp" />
		<div id="content_all" >
			<div id=content_1>
			<c:if test="${error ==1}">
			<script>
			alert("아이디나 비밀번호가 일치하지 않습니다.")
			</script>
			</c:if>
				<div id="h1">로그인</div>
				<form action="loginPro.do" name="login" id="login" method="post">
					<input type="text" name="id" id="id" placeholder="아이디"><br>
					<input type="password" name="passwd" id="pass" placeholder="비밀번호"><br>
					<input type="checkbox" name="saveId" value="1"> <span id="find_1"><b>아이디 저장</b></span>
					<span id="find_2">
						<a href="#"><b>아이디</b>/<b>비밀번호 찾기</b></a>
					</span><br>
					<input type="submit" id="bt_1" value="로그인" onclick="loginCheck()">
				</form>
				<button id="bt_2">카카오 로그인</button>
				<div id="d1"><b>
					이제부터 카카오 로그인으로<br>
					리복 온라인 스토어를 편하게 이용하세요!
				</b></div>
				<div id="d2"><b>
					카카오 미연동 고객이 카카오 로그인 시도 시,<br>
					카카오 회원가입으로 자동 진행됩니다.
				</b></div>
				<div id="d3">
					- 웹 회원이신 경우 새로운 카카오 계정과 기존 정보가<br>
					&nbsp;&nbsp;자동으로 통합됩니다.
				</div>
				<div id="d3">	
					- 다른 카카오 계정으로 가입하신 경우 지금 새롭게<br>
					&nbsp;&nbsp;연동하시는 카카오 계정으로<br>
					&nbsp;&nbsp;자동 변경됩니다.
				</div>
				<div id="d3">
					- 마이페이지의 SNS 연결 설정 메뉴에서 연동 계정의<br>
					&nbsp;&nbsp;해제 및 설정이 가능합니다.
				</div>
				<button id="bt_3">비회원 주문조회</button>
			</div>
			<div id=content_2>
				<div id="h2">회원가입</div>
				<div id="d2_1"><b>
					지금 리복 공식 멤버십 리클럽에 가입하시고<br>
					리복 공식 온/오프라인 스토어에서 멤버 혜택을 누리세요.
				</b></div>
				<div id="d2_2"><b>
					* 구매금액의 5% 포인트 적립 : 10만원마다 사용 가능한 5천원 쿠폰 발급
				</b></div>
				<div id="d2_2"><b>
					* 가입 즉시 1만원 할인 쿠폰 제공(단, 신규 회원에 한함)
				</b></div>
				<div id="d2_2"><b>
					* 기념일 쿠폰, 시즌 쿠폰 제공
				</b></div>
				<div id="d2_2"><b>
					* 멤버만을 위한 특별한 이벤트 초대
				</b></div>
				<button id="bt2_1" onclick="location.href='signUP.do'">회원가입</button><br>
				<button id="bt2_2">카카오 회원가입</button>
			</div>
        </div>
<jsp:include page="footer.jsp" />    
	</div>   
</body>
</html>