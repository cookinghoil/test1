<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="payment.css?ver=1.0">
<meta charset="UTF-8">
<title> order / Payment </title>
</head>
<body>
<div id="container" align="center">
	<div id="content">
		<div id="content_1">
			<div id="t1"><b>주문 / 결제</b></div>
			<div id="t2">| &nbsp;&nbsp; Order / Payment</div>
			<div id="img1">
				<img src="./images/payment.png" width="350">
			</div>
		</div>
		
		<form id="content_2">
			<div id="ct">
				<div id="t3"><b>주문 전</b><br>꼭 읽어보세요</div>
				<div id="t4">* 주문하실 상품 및 수량이 모두 맞는지 다시 한 번 확인해 주십시오.</div>
			</div>
			
			<hr id="line">
			
			<div id="ct2">
				<div id="img2"><img src="./images/itemlist.png" width="80"></div>
				<div id=ct2_1>
					<div id="ct2_d1">상품명</div><div id="d">|</div>
					<div id="ct2_d2">판매금액</div><div id="d">|</div>
					<div id="ct2_d3">수량</div><div id="d">|</div>
					<div id="ct2_d4">옵션</div><div id="d">|</div>
					<div id="ct2_d5">주문금액</div>
				</div>
				<div id="ct2_2">
					<div id="img3"><img src="./images/item1.png" width="60"></div>
					<div id="ct2_d6"><b>[Men's Training] DMX 트레이닝 SWT 하이브리드 자켓</b></div>
					<div id="ct2_d7"><b>89,000원</b></div>
					<div id="ct2_d8">1</div>
					<div id="ct2_d9">사이즈 : S</div>
					<div id="ct2_d10"><b>89,000원</b></div>
				</div>
				<div id="ct2_3">
					<div id="ct2_d11">총주문금액</div>
					<div id="ct2_d12"><b>89,000 원</b></div>
				</div>
			</div>
			
			<div id="ct3">
				<div id="ct3_1">
					<div id="ct3_d1"><b>STEP 01.</b></div>
					<div id="ct3_d2"><b>주문자 정보확인</b></div>
					<table id="ct3_table1">
						<tr>
							<td id="ct3_td1"><b>주문자</b></td>
							<td id="ct3_td1"><input type="text" name="order" id="order"></td>
						</tr>
						<tr>
							<td id="ct3_td1"><b>휴대폰번호</b></td>
							<td id="ct3_td2">
								<select name="tel" id="tel">
									<option value="0">선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								- <input type="text" name="tel1" id="tel1">
								- <input type="text" name="tel2" id="tel2">
							</td>
						</tr>
						<tr>
							<td id="ct3_td1"><b>이메일</b></td>
							<td id="ct3_td2">
								<input type="text" name="email1" id="email1">
								@ <input type="text" name="email2" id="email2">
								<select name="email" id="email">
									<option value="0">직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="gmail.com">gmail.com</option>
									<option value="nate.com">nate.com</option>
									<option value="hotmail.com">hotmail.com</option>
								</select>
							</td>
						</tr>
						<tr>
							<td id="ct3_td1"><b>주소</b></td>
							<td id="ct3_td2">
								<input type="text" name="addr" id="addr" disabled>
								<input type="button" id="bt1" value="우편번호찾기 "><br>
								<input type="text" name="area1" id="area1" disabled><br>
								<input type="text" name="area2" id="area2" disabled><br>
								<input type="text" name="area3" id="area3" disabled><br>
							</td>
						</tr>
						<tr>
							<td id="ct3_td11"><b>SMS 정보수신</b></td>
							<td id="ct3_td11">
								<input type="radio" name="ra1" value="0"> 네
								<input type="radio" name="ra1" value="1"> 아니오
								* 주문상품에 대한 결제 / 배송 관련 정보를 SMS로 받으실 수 있습니다.
							</td>
						</tr>
					</table>
				</div>
			</div>
			
			<div id="ct4">
				<div id="ct4_2">
					<div id="ct4_d1"><b>STEP 02.</b></div>
					<div id="ct4_d2"><b>배송정보 입력</b></div>
					<table id="ct4_table1">
						<tr>
							<td id="ct4_td1"><b>배송지 선택</b></td>
							<td id="ct4_td1"><input type="checkbox" value="0">주문자 정보와 동일</td>
						</tr>
						<tr>
							<td id="ct4_td1"><b>받으시는 분</b></td>
							<td id="ct4_td1"><input type="text" name="order" id="order"></td>
						</tr>
						<tr>
							<td id="ct4_td1"><b>전화번호</b></td>
							<td id="ct4_td2">
								<input type="text" name="tel1" id="tel">
								- <input type="text" name="tel1" id="tel1">
								- <input type="text" name="tel2" id="tel2">
							</td>
						</tr>
						<tr>
							<td id="ct4_td1"><b>휴대폰번호</b></td>
							<td id="ct4_td2">
								<select name="tel" id="tel">
									<option value="0">선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								- <input type="text" name="tel1" id="tel1">
								- <input type="text" name="tel2" id="tel2">
							</td>
						</tr>
						<tr>
							<td id="ct4_td1"><b>배송지 주소</b></td>
							<td id="ct4_td2">
								<input type="text" name="addr" id="addr" disabled>
								<input type="button" id="bt1" value="우편번호찾기 "><br>
								<input type="text" name="area1" id="area1" disabled><br>
								<input type="text" name="area2" id="area2" disabled><br>
								<input type="text" name="area3" id="area3" disabled><br>
							</td>
						</tr>
						<tr>
							<td id="ct4_td11"><b>배송시 요청사항</b></td>
							<td id="ct4_td11">
								<textarea id="ct4_texta"></textarea><br>
								<div id="ct4_dd">(0/50자)</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			
			<div id="content5_out">
				<div id="content5_in">
					<div id="ct5_title1"><b>STEP 03.</b></div>
					<div id="ct5_title2"><b>결제금액 확인</b></div>
					<table id="ct5_table">
						<tr>
							<td id="ct5_td1"><b>총 주문금액</b></td>
							<td id="ct5_td2"><b>89,000 원</b></td>
						</tr>
						<tr>
							<td id="ct5_td1"><b>배송비</b></td>
							<td id="ct5_td2"><b>0원</b></td>
						</tr>
						<tr>
							<td id="ct5_td1"><b>최종 결제금액</b></td>
							<td id="ct5_td2"><b>89,000원</b></td>
						</tr>
						<tr>
							<td id="ct5_td"><b>결제수단</b></td>
							<td id="ct5_td">
								<input type="radio" name="ra2" value="0"> 네이버페이
								<input type="radio" name="ra2" value="1"> SPAY
								<input type="radio" name="ra2" value="2"> 카카오페이
								<input type="radio" name="ra2" value="3"> LPAY
								<input type="radio" name="ra2" value="4"> PAYCO
								<input type="radio" name="ra2" value="5"> KPAY <br>
								<input type="radio" name="ra2" value="6"> 카드결제
								<input type="radio" name="ra2" value="7"> 무통장입금
								<input type="radio" name="ra2" value="8"> 휴대폰결제
								<input type="radio" name="ra2" value="9"> 실시간이체<p>
								카드종류
								<select>
									<option value="0">카드선택</option>
								</select><p>
								할부기간
								<select>
									<option value="0">일시불</option>
								</select>
								무이자 할부혜택
								<img src="./images/info1.png" width="15">
								<div>
									<input type="checkbox" value="0"> 전체 동의하기
								</div>
								<input type="checkbox" value="0"> 전자금융거래 이용약관 &nbsp;&nbsp;자세히보기
								<img src="./images/info2.png" width="15"><br>
								<input type="checkbox" value="0"> 고유식별정보 수집 및 이용안내 &nbsp;&nbsp;자세히보기
								<img src="./images/info2.png" width="15"><br>
								<input type="checkbox" value="0"> 개인정보의 수집 및 이용안내 &nbsp;&nbsp;자세히보기
								<img src="./images/info2.png" width="15"><br>
								<input type="checkbox" value="0"> 개인정보 제공 및 위탁안내 &nbsp;&nbsp;자세히보기
								<img src="./images/info2.png" width="15"><br>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<input type="submit" id="sbt" value="결제하기">
		</form>
	</div>
</div>
</body>
</html>