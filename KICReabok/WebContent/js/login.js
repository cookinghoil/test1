function loginCheck() {
	if(!document.login.id.value) {
		alert("아이디은/는 필수 입력요소입니다.");
		document.login.id.focus();
		return;
	} else if(!document.login.passwd.value) {
		alert("비밀번호은/는 필수 입력요소입니다.");
		document.login.passwd.focus();
		return;
	}
	//document.login.submit();
	//document.login.action="loginPro.do";
}