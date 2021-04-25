<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script language="JavaScript" src="js/signUp.js"></script>
<script language="JavaScript" src="js/header.js"></script>
<link rel="stylesheet"  href="css/header.css">
<link rel="stylesheet"  href="css/footer.css">
<link href="css/signUp.css" rel="stylesheet" type="text/css">
    <title>Document</title>
</head>
<body>
    <body>
        <div id="container">
          <jsp:include page="header.jsp" />
            <div id="container_body" align="center">
                <div id="container_1">
                    <h2 id="h1">회원가입</h2>
                    <form action="#" name="form1" method="post">
                        <div id="ra1">
                            <input type="radio" name="radio1" value="0">&nbsp;
                                <b>아이핀(i-Pin) 인증</b>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="radio1" value="1">&nbsp;
                                <b>휴대폰 인증</b>
                        </div>
                        <input type="submit" id="bt1" value="본인인증">
                    </form>
                </div>
                
                <form action="signUPOk.do" name="form2" method="post">
                    <div id="container_2">
                        <input type="text" name=id id="id" placeholder="&nbsp아이디(필수)"><br>
                        <input type="password" name="passwd" id="pass" placeholder="&nbsp비밀번호(필수)"><br>
                        <input type="password" name="repasswd" id="repass" placeholder="&nbsp비밀번호 확인(필수)"><br>
                        <input type="text" name="phone" id="phone" placeholder="&nbsp휴대폰번호(필수)"><br>
                
                        <hr id="line_1">
                
                        <input type="text" name="email1" id="email1" placeholder="&nbsp이메일(필수)"> @
                        <input type="text" name="eamil2" id="email2" value="" disabled>
                        <select name="email" id="email" onChange="emailChange()">
                            <option value="0">선택</option>
                            <option value="1">직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="nate.com">nate.com</option>
                            <option value="hotmail.com">hotmail.com</option>
                        </select><br>
                        <select name="year" id="year">
                            <option value="0">&nbsp;생년(선택)</option>
                               
                                    <option value="1">1</option>
                             
                        </select>
                        <select name="month" id="month">
                            <option value="0">&nbsp;월(선택)</option>
                              
                                    <option value="1">1</option>
                                
                        </select>
                        <select name="day" id="day">
                                <option value="0">&nbsp;일(선택)</option>
                           
                                <option value="1">1</option>
                            
                        </select><br>
                        <div id="coupon_1"><img src="image/singUp/red.png" width="15"></div>
                        <div id="coupon_2"><b>생일을 입력해 주시면, 생일 쿠폰 등 다양한 혜택을 받으실 수 있습니다.</b></div>
                        <select name="gender" id="gender">
                            <option value="0">&nbsp;성별 (선택)</option>
                            <option value="1">선택하지 않음</option>
                            <option value="2">남자</option>
                            <option value="3">여자</option>
                        </select>
                    </div>
                
                    <div id="container_3">
                        <table id="yesform" align="center">
                            <tr>
                                <td id="td_all">&nbsp;&nbsp;
                                    <input type="checkbox" id="all" onclick="checkAll()"> 
                                    <b>전체동의 (약관 및 개인 정보 수집 동의 등)</b>
                                </td>
                                <td id="td_1"></td>
                            </tr>
                            <tr>
                                <td id="td_1">&nbsp;&nbsp;
                                    <input type="checkbox" id="ck"> 
                                    <b>(필수) 구매이용약관동의</b>
                                </td>
                                <td id="td_2">
                                    <a href="https://shop.reebok.co.kr/RPF150601.action?terms=terms_01&headerdisp=N" target="_blank">
                                        <b>자세히보기</b>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td id="td_1">&nbsp;&nbsp;
                                    <input type="checkbox" id="ck"> 
                                    <b>(필수) 개인정보 수집 이용동의</b>
                                </td>
                                <td id="td_2">
                                    <a href="https://shop.reebok.co.kr/RPF150601.action?terms=terms_pop_01&headerdisp=N" target="_blank">
                                        <b>자세히보기</b>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td id="td_1">&nbsp;&nbsp;
                                    <input type="checkbox" id="ck"> 
                                    <b>(필수) 리클럽 이용약관</b>
                                </td>
                                <td id="td_2">
                                    <a href="https://shop.reebok.co.kr/RPF150601.action?terms=terms_03&headerdisp=N" target="_blank">
                                        <b>자세히보기</b>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td id="td_1">&nbsp;&nbsp;
                                    <input type="checkbox" id="ck"> 
                                    <b>(필수) 개인정보 처리 위탁동의 (구매 및 배송 등 관련)</b>
                                </td>
                                <td id="td_2">
                                    <a href="https://shop.reebok.co.kr/RPF150601.action?terms=terms_pop_02&headerdisp=N" target="_blank">
                                        <b>자세히보기</b>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td id="td_1">&nbsp;&nbsp;
                                    <b>(선택) 쿠폰 발급, 회원전용 이벤트 등 안내 수신동의</b>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ㄴ
                                    <input type="checkbox" name="sns1" value="0"> <b>SMS수신</b>
                                    <input type="checkbox" name="sns2" value="1"> <b>e-Mail수신</b>
                                </td>
                                <td id="td_2">
                                    <a href="https://shop.reebok.co.kr/RPF150601.action?terms=terms_pop_03&headerdisp=N" target="_blank">
                                        <b>자세히보기</b>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td id="td_3">&nbsp;&nbsp;
                                    <b>(선택) 개인정보 유효기간</b>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ㄴ
                                    <input type="radio" name="ra2" value="0"> <b>1년</b>
                                    <input type="radio" name="ra2" value="1"> <b>3년</b>
                                    <input type="radio" name="ra2" value="2"> <b>영구보관</b><br>
                                    <ul>
                                        <li><b>해당 기간 서비스 미사용 시 휴면계정 전환되어 분리보관</b></li>
                                        <li><b>기간 선택하지 않는 경우, 기본 1년 후 휴면계정 전환</b></li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                        <input type="submit" id="bt2" value="회원가입">
                    </div>
                    <div id="container_4">
                        <img src="image/singUp/info.png" width="370">
                    </div>
                </form>
            </div>
<jsp:include page="footer.jsp" />
        </div>
  
</body>
</html>

<script type="text/javascript">
	var alertTest = '${idCheck}'
	
	$(document).ready(function(){
		if(alertTest != null && alertTest != ""){
			alert(alertTest);
		}
	})
	
	var alertTest2 = '${idCheck2}'
	
	$(document).ready(function(){
		if(alertTest2 != null && alertTest2 != ""){
			alert(alertTest2);
		}
	})
	
	var alertTest3 = '${pwdCheck}'
	
	$(document).ready(function(){
		if(alertTest3 != null && alertTest3 != ""){
			alert(alertTest3);
		}
	})
	
	var alertTest4 = '${pwdCheck2}'
	
	$(document).ready(function(){
		if(alertTest4 != null && alertTest4 != ""){
			alert(alertTest4);
		}
	})
	
	var alertTest5 = '${phoneCheck}'
	
	$(document).ready(function(){
		if(alertTest5 != null && alertTest5 != ""){
			alert(alertTest5);
		}
	})
	

</script>
