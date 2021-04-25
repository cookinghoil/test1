function emailChange(){
	if (email.selectedIndex == '0') {
		email2.disabled = true;
		email2.value = "";
	} else if (email.selectedIndex == '1') {
		email2.disabled = false;
		email2.value = "";
	} else {
		email2.disabled = true;
		email2.value = email.value ;
	}
}

function checkAll() {
	var box = ck;
	if (box.length) {
		for (var i=0; i < box.length; i++) {
			box[i].checked = all.checked;
		} 
	}else {
		box.checked = all.checked;	
	}
}