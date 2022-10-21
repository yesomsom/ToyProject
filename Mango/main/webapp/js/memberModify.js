let crawlingData = [];
const idCheckButton = document.querySelector('.idCheckButton');
const id = document.querySelector('#id');
const password = document.querySelector('#password');
const passwordRepeat = document.querySelector('#passwordRepeat');
const poster = document.querySelector('#poster');
let idFlag = false;
let psFlag = true;

document.addEventListener('DOMContentLoaded', () => {
	add();
});

function add() {
	$.ajax({
		url: 'crawling.do',
		type: 'get',
		success: function(data) {
			crawlingData = setData(data);
			if  (crawlingData.length === 0) {
		location.href   = "register.do";
	}
	let randomNumber = Math.floor(Math.random() * 7);
	console.log(randomNumber);
	poster.setAttribute('src', crawlingData[randomNumber].img);
},
	});
}

function setData(data) {
	data = JSON.parse(data);

	return data;
}

// 일치여부를 바로 확인할 수 있게 비밀번호 확인 input 에서 벗어나면 함수 호출
// register.jsp의 onChange함수
function passwordValidate() {

	if (password.value == passwordRepeat.value) {
		toastr.options = {
			positionClass: 'toast-top-right',
			progressBar: true,
			timeOut: 1000,
		};

		toastr.success('비밀번호가 일치합니다', '비밀번호 확인', {
			timeOut: 3000,
		});
		return psFlag = true;

	} else {

		toastr.options = {
			positionClass: 'toast-top-right',
			progressBar: true,
			timeOut: 1000,
		};
		toastr.error('비밀번호가 일치하지 않습니다', '비밀번호 확인', {
			timeOut: 9000,
		});
		return psFlag = false;
	}
}



function checks() {

	var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/); // 아이디, 비밀번호 정규식
	var getName = RegExp(/^[가-힣a-zA-Z]{2,20}$/);

	toastr.options = {
		positionClass: 'toast-top-right',
		progressBar: true,
		timeOut: 1000,
	};


	if ($("#password").val() == "") {
		toastr.error('비밀번호를 입력해주세요.', '비밀번호 확인', {
			timeOut: 3000,
		});
		$("#password").focus();
		return false;
	}

	if (!getCheck.test($("#password").val())) {
		toastr.error('비밀번호는 최소 4글자 이상이어야 합니다.\n(영문 대소문자와 숫자)', '비밀번호 확인', {
			timeOut: 3000,
		});
		$("#password").val("");
		$("#password").focus();
		return false;
	}

	if ($("#password_check").val() == "") {
		toastr.error('비밀번호 확인을 입력해주세요.', '비밀번호 확인', {
			timeOut: 3000,
		});
		$("#password_check").focus();
		return false;
	}

	if (psFlag != true) {
		toastr.error('비밀번호가 일치해야만 수정이 가능합니다.', '비밀번호 확인', {
			timeOut: 3000,
		});
		return false;
	}


	if (!getName.test($("#name").val())) {
		toastr.error('이름은 최소 2글자 이상이어야 합니다.\n(영문 대소문자와 한글)', '이름 확인', {
			timeOut: 3000,
		});
		$("#name").val("");
		$("#name").focus();
		return false;
	}

	if ($("#name").val() == "") {
		toastr.error('이름을 입력하세요.', '이름 확인', {
			timeOut: 3000,
		});
		$("#name").focus();
		return false;
	}

	if ($("#phone").val() == "") {
		toastr.error('휴대전화번호를 입력하세요.', '휴대폰번호 확인', {
			timeOut: 3000,
		});
		$("#phone").focus();
		return false;
	}

	// 유효성검사가 모두 끝난뒤에 정보전달
	//button="button"으로 설정하여 submit을 함수로 작동하게 함
	$("#modifyForm").submit();
	alert("수정 완료!\n다시 로그인하세요.");
}

function changepw() {
   if (confirm("비밀번호를 변경하시겠습니까?\n(조건 미충족시 개인정보 수정이 불가능합니다.)")) {
   
      document.getElementById("passwordRepeat").style.display = "block";
   
   }
}

function delmember() {
	
	if (confirm("삭제하시겠습니까?\n삭제한 정보는 다시 되돌릴수 없습니다.")) {
		$("#modifyForm").attr("action", '/page/memberModify/delete.do');
		$("#modifyForm").submit();
		alert("삭제되었습니다.");

	} else {
		location.href = "/page/memberModify.do"
		
	}

}


// 문자 인증하는 팝업창
// 문자 인증 버튼 누르면 발생하는 함수
function opensms() {
	window.open("sendSms.do", "휴대폰 인증", "width=400,height=300,left=750,top=280");

}

// 주소 검색하는 팝업창
// 주소갬석 버튼 클릭시 발생하는 함수 
function goPopup() {
	var pop = window.open("/page/jusoPopup.do", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
}

// 검색하여 받아온 주소값을 input에 넣어주는 함수
function jusoCallBack(roadFullAddr, zipNo) {
	var addrFEl = document.querySelector("#address");
	var zipEl = document.querySelector("#zipNo");
	addrFEl.value = roadFullAddr;
	zipEl.value = zipNo;
}