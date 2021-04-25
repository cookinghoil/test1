//console.log(document.product_frm);

var blank_pattern = /[\s]/g;
var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

var pdcode= document.getElementById("pdcode");
var p_name=document.getElementById("p_name");
var p_color = document.getElementById("p_color");
var p_price = document.getElementById("p_price");

var p_explain = document.getElementById("p_explain");
var p_img = document.getElementById("p_img");
//var pdcode= document.getElementById("p_page");
//var p_name=document.getElementById("p_classfy");

/*$('#btn_upload').click(function(){
    var files=$('input[name="p_img"]')[0].files;
    for(var i= 0; i<files.length; i++){
        alert('p_img :'+files[i].name);
    }
});*/

function checkSubmit() {
	var pdCheck = isThree(pdcode);
	if(pdCheck==true) {
		if( pdcode.value == '' || pdcode.value == null ) {
			alert( '제품번호를 입력해주세요' );
			return false;
		} else if( blank_pattern.test(pdcode.value) == true) {
		    alert(' 공백은 사용할 수 없습니다. ');
		    return false;
		} else if(pdcode.value.length != 6) {
			alert('제품코드는 6글자 입니다.')
			return false;
		} else if( p_name.value == '' || p_name.value == null ) {
			alert( '이름을 입력해주세요' );
			return false;
		} else if( p_color.value == '' || p_color.value == null ) {
			alert( '색상을 입력해주세요' );
			return false;
		} else if( blank_pattern.test(p_color.value) == true) {
		    alert(' 공백은 사용할 수 없습니다. ');
		    return false;
		} else if( p_price.value == '' || p_price.value == null ) {
			alert( '가격을 입력해주세요' );
			return false;
		}  else {
			alert('상품이 성공적으로 등록되었습니다.');
			$('#product_frm').submit();
			return true;
		}
	}
}

$("#pdcode").keyup(function(event) {
    if (!(event.keyCode >=37 && event.keyCode<=40)) {
        var inputVal = $(this).val();
        $(this).val(inputVal.replace(/[^a-z0-9]/gi,''));
    }
});

$('#p_color').keyup(function(event) {
	var inputVal = $(this).val();
	$(this).val(inputVal.replace(/[^a-z]/gi,''));
})

function isThree(input) { 
	var checkChar='pP';
	var checkClassify='sSdDpPaA';
	var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var charnum="1234567890"
	if(checkChar.indexOf(input.value.charAt(0))==-1) {
		alert('첫번째 값은 제품코드 P입니다.')
		return false;  
	} else if(checkClassify.indexOf(input.value.charAt(1))==-1) {
		alert('두번째 값은 신발(S),옷(D),바지(P),악세서리(A)중 하나를 입력해주세요.');
		return false;
	} else if(chars.indexOf(input.value.charAt(2))==-1) {
		alert('색상값을 정확히 입력해주세요.(영어)')
		return false;
	} else if(isNaN(input.value.charAt(3)) == true) {
		alert('뒤의 제품코드 3자리는 숫자입니다.')
		return false;
	} else if(isNaN(input.value.charAt(4)) == true) {
		alert('뒤의 제품코드 3자리는 숫자입니다.')
		return false;
	} else if(isNaN(input.value.charAt(5)) == true) {
		alert('뒤의 제품코드 3자리는 숫자입니다.')
		return false;
	} else {
		 return true; 
	}  
}


/*
function check_Color() {
	if(check_Key() != 2) {
		event.returnValue = false;  
		alert("색상값은 영문자로만 입력해주세요");
  		return false;
	} else if ( pattern_kor.test(p_color.value) == true) {
		p_color.value = p_color.value.replace(pattern_kor, '');
		return false;
	}
}

function check_Key() {
 	var char_ASCII = event.keyCode;        
 	 //숫자
	 if (char_ASCII >= 48 && char_ASCII <= 57 )
	   return 1;
	 //영어
	 else if ((char_ASCII>=65 && char_ASCII<=90) || (char_ASCII>=97 && char_ASCII<=122))
	    return 2;
	 //특수기호
	 else if ((char_ASCII>=33 && char_ASCII<=47) || (char_ASCII>=58 && char_ASCII<=64)
	   || (char_ASCII>=91 && char_ASCII<=96) || (char_ASCII>=123 && char_ASCII<=126))
	    return 4;
	 //한글
	 else if ((char_ASCII >= 12592) || (char_ASCII <= 12687)) //안먹네 이거
	    return 3;
	 else
	    return 0;
}
*/
/*
function pdcodeCheck() {
	if( pdcode.value == '' || pdcode.value == null ) {
		alert( '제품번호를 입력해주세요' );
		return false;
	}else if( blank_pattern.test(pdcode.value) == true) {
	    alert(' 공백은 사용할 수 없습니다. ');
	    return false;
	} else {
		return true;
	}
}

function p_nameCheck() {
	if( p_name.value == '' || p_name.value == null ) {
		alert( '이름을 입력해주세요' );
		return false;
	}else if( blank_pattern.test(p_name.value) == true) {
	    alert(' 공백은 사용할 수 없습니다. ');
	    return false;
	} else {
		return true;
	}
}
*/

/*
function txtFieldCheck(){
	// form안의 모든 text type 조회
	var txtEle = $("#product_frm input[type=text]");
	for(var i = 0; i < txtEle.length; i ++) {
		if("" == $(txtEle[i]).val() || null == $(txtEle[i]).val()){
			var ele_id = $(txtEle[i]).attr("id");
			//var label_txt = $("label[for='" + ele_id +"']").text();
			console.log("id : " + ele_id);
			showAlert(ele_id);
			return true;
		}
	}
}

function showAlert(ele_id){
	alert(ele_id + " is null");
	// 해당 id에 focus.
	//$("#" + ele_id).focus();
	return ;
}
*/

/*
    function isEmpty(str){
        if(typeof str == "undefined" || str == null || str == "")
            return true;
        else
            return false ;
    }

    function nvl(str, defaultStr){
        if(typeof str == "undefined" || str == null || str == "")
            str = defaultStr ;
        return str ;
    }
*/