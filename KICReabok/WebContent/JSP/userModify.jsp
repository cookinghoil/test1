<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 <head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/header.css" />
<link rel="stylesheet" href="css/footer.css" />
<link rel="stylesheet" href="css/usermodify.css" />
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
			        <li>회원정보 수정</li>
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
	        <p>HOME > 마이페이지 > 회원정보 수정</p>
	    </div>
	    <div id="right_2">
		    <img src="image/usermodify/tit_1.gif">
		    <div id="right_2_sub1">
				<p> &nbsp;- 회원님의 정보를 변경하실 수 있습니다. 변경 후 반드시 확인 버튼을 클릭하여 저장해주세요.</p> 
				<p> &nbsp;- <img src="image/usermodify/blt_check_t.gif"> 필수 표시는 필수 입력사항입니다. 반드시 입력해주세요.</p>
		    </div>
	    </div>
	    <form method="post" action="userUpdate.do">
	    <table id="right_3">
			<tbody>
			    <tr>
			        <th><span>이름</span></th>
			        <td><input type="text" name="u_name" value="${u_name}"/></td>
				</tr>
				<tr>
				    <th><span>아이디</span></th>
				    <td><input type="text" name="u_ID" value="${u_ID}" /></td>
				</tr>
				<tr>
				    <th><span>이메일 주소 (선택)</span></th>
				    <td>
				        <input type="text" name="u_email1" value="${u_email1}" /> @ 
						<select name="u_email2">
							<option value="${u_email2}">${u_email2}</option>
				            <option value="naver.com">naver.com</option>
				            <option value="gmail.com">gmail.com</option>
					    </select>
				    </td>
				</tr>
				<tr>
				    <th><span>이메일 수신여부</span></th>
				    <td>
				        <input type="radio" id="ra1">
				        <label for="ra1">수신동의</label>
				        <input type="radio" id="ra2">
				        <label for="ra2">수신하지 않음</label>
				    </td>
				</tr>
				<tr>
				    <th><span><img src="image/usermodify/blt_check_t.gif">휴대폰번호 (필수)</span></th>
				    <td>
				        <input type="tel" name="tel0" placeholder="010" value="${u_phone0}"> - 
				        <input type="tel" name="tel1" value="${u_phone1}"> - 
				        <input type="tel" name="tel2" value="${u_phone2}"> 
				        <img src="image/usermodify/btn_modify_phone.gif"> 
				        <br>
				       <p>이벤트와 혜택에 대한 소식 안내를 SMS로 받으시겠습니까? </p> 
				       <input type="radio" id="ra3">
				        <label for="ra3">예</label>
				        <input type="radio" id="ra4">
				        <label for="ra4">아니오</label>
				    </td>
				</tr>
				<tr>
				    <th><span>주소 (선택)</span></th>
				    <td>
				        <p>구매하신 상품을 받으실 주소입니다.</p>
				        <input disabled/> <img src="image/usermodify/btn_zipcode.gif"> <br>
				        <input type="text" name="u_address" value="${u_address}" /><br>
						<input type="text" value=""><br>
						<input type="text" value=""><br>
				    </td>
				</tr>
				<tr>
					<th><span>개인정보 유효기간</span></th>
					<td>
						<input type="radio" id="ra5">
						<label for="ra5">1년</label>
						<input type="radio" id="ra6">
						<label for="ra6">3년</label>
						<input type="radio" id="ra7">
						<label for="ra7">탈퇴시까지</label>
						<p>회원님이 선택한 개인정보 유효기간(미선택 시, 기본 1년 적용) 동안 사용 이력이 없는 경우, 휴면계정으로 전환됩니다. (정보통신망 이용촉진 및 정보보호 등에 관한 법률 제29조 제2항에 따름)</p>
						<p>휴면회원이 포인트 거래, 온라인스토어 로그인 등 “리클럽" 서비스를 재이용하는 경우 일반회원 계정으로 복구됩니다.</p>
					</td>
				</tr>
				<tr>
				    <th><span>생일 (선택)</span></th>
				    <td>
				        <p>생일을 입력해 주시면 생일쿠폰 등 다양한 혜택을 받으실 수 있습니다.</p>
				        <select>
				            <option>선택</option>
				            <option>1994</option>
				        </select> 년&nbsp;
				        <select>
				            <option>선택</option>
				            <option>6</option>
				        </select> 월&nbsp;
				        <select>
				            <option>선택</option>
				            <option>17</option>
				        </select> 일&nbsp;
				    </td>
				</tr>
				<tr>
				    <th><span>성별 (선택)</span></th>
				    <td>
				        <select name="u_gender">
				            <option value="${u_gender}">${u_gender}</option>
				            <option value="0">선택하지 않음</option>
				            <option value="men">남성</option>
				            <option value="women">여성</option>
				        </select>
				    </td>
				</tr>
				<tr>
				    <th><span>관심제품사양 (선택)</span></th>
				    <td>
				       	신발  &nbsp; 
				        <select>
				            <option>선택하지 않음</option>
				            <option>220</option>
				            <option>230</option>
				        </select> &nbsp; 상의&nbsp; 
				        <select>
				            <option>선택하지 않음</option>
				            <option>X</option>
				            <option>XL</option>
				        </select> &nbsp; 하의&nbsp; 
				        <select>
				            <option>선택하지 않음</option>
				            <option>32</option>
				            <option>31</option>
				        </select>
				    </td>
				</tr>
			</tbody>
	    </table>
	    <div id="right_4">
	        <a href="userUpdate.do"><img src="image/usermodify/btn_ok.gif"></a>
	        <img src="image/usermodify/btn_cancellation.gif">
	    </div>
	    <input type="hidden" name="u_ID" value="${u_ID}">
	    <input type="hidden" name="u_name" value="${u_name}">
	    <input type="submit" value="확인">
	    </form>
	</div>
</div>
</section>
<jsp:include page="footer.jsp" />
</div>
</body>
</html>