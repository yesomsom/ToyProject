$(document).ready(function() {

	commaTotal();

})



// 문자 인증하는 팝업창
// 문자 인증 버튼 누르면 발생하는 함수
function opensms() {
	window.open("sendSms.do",  "휴대폰 인증",  "width=400,height=300,left=750,top=280");

}

// 주소 검색하는 팝업창
// 주소갬석 버튼 클릭시 발생하는 함수 
function goPopup() {
	var pop = window.open("jusoPopup.do", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
}

// 검색하여 받아온 주소값을 input에 넣어주는 함수
function jusoCallBack(roadFullAddr, zipNo) {
	var addrFEl = document.querySelector("#address");
	var zipEl = document.querySelector("#zipNo");

	addrFEl.value = roadFullAddr;
	zipEl.value = zipNo;
}

// 총액 콤마
/*function commaTotal() {
	let sum = $(".comma_price").text();
	let sumComma = sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	$(".comma_price").text(sumComma);
}*/