let crawlingData = [];
const idCheckButton = document.querySelector('.idCheckButton');
const id = document.querySelector('#id');
const password = document.querySelector('#password');
const passwordRepeat = document.querySelector('#passwordRepeat');
const poster = document.querySelector('#poster');
let idFlag = false;
let psFlag = false;

$(document).ready(function(){
	add();
})

function add() {
    $.ajax({
        url: 'crawling.do',
        type: 'get',
        success: function(data) {
            crawlingData = setData(data);
            if(crawlingData.length === 0){
               location.href="register.do";
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

function idCheck() {
    $.ajax({
        url: 'idCheck.do',
        type: 'post',
        data: { id: document.querySelector('#id').value },
        success: function(data) {            
            idCheckMessage(data);
        },
    });
}

function idCheckMessage(data) {
    toastr.options = {
        positionClass: 'toast-top-right',
        progressBar: true,
        timeOut: 1000,
    }; 
       
   if($("#id").val() == ""){
      toastr.error('아이디를 입력해주세요.', '아이디 확인', {
            timeOut: 3000,
        });
      $("#id").focus();
        return false;        
      
   } if($("#id").val().length < 4){
      toastr.error('아이디는 최소 4글자 이상이어야 합니다.\n(영문 대소문자와 숫자)', '아이디 확인', {
            timeOut: 3000,
        });
      $("#id").val("");
      $("#id").focus();
        return false;
        
   }  else if (data === 'null') {
        toastr.success('사용할수 있는 아이디입니다', '아이디 확인', {
            timeOut: 3000,
        });
        return idFlag = true;
        
    } else {
        toastr.error('이미 존재하는 아이디입니다', '아이디 확인', {
            timeOut: 3000,
        });
        return idFlag = false;
        
    }
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

function checks(){
   
   var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
   var getName= RegExp(/^[가-힣a-zA-Z]{2,20}$/);
   
   toastr.options = {
           positionClass: 'toast-top-right',
           progressBar: true,
           timeOut: 1000,
       };
   
   // 아이디 빈값 체크
   if($("#id").val() == ""){
      toastr.error('비밀번호를 입력해주세요.', '비밀번호 확인', {
            timeOut: 3000,
        });
      $("#id").focus();
        return false;
   }
   
   // 비밀번호 빈값 체크
   if($("#password").val() == ""){
      toastr.error('비밀번호를 입력해주세요.', '비밀번호 확인', {
            timeOut: 3000,
        });
      $("#password").focus();
        return false;
   }
   
   // 비밀번호 길이 체크
   if(!getCheck.test($("#password").val())){
      toastr.error('비밀번호는 최소 4글자 이상이어야 합니다.\n(영문 대소문자와 숫자)', '비밀번호 확인', {
            timeOut: 3000,
        });
      $("#password").val("");
      $("#password").focus();
        return false;
   }
   
   // 비밀번호 확인 길이 체크
   if($("##passwordRepeat").val() == ""){
      toastr.error('비밀번호 확인을 입력해주세요.', '비밀번호 확인', {
            timeOut: 3000,
        });
      $("#password_check").focus();
        return false;
   }
   
   // 매장명 빈값 체크
   if($("#sellerName").val() == ""){
      toastr.error('매장명을 입력하세요.', '매장명 확인', {
            timeOut: 3000,
        });
      $("#sellerName").focus();
        return false;
   }
   
   // 대표자 명 빈값 체크
   if($("#ownerName").val() == ""){
      toastr.error('대표자명을 입력하세요.', '대표자 명 확인', {
            timeOut: 3000,
        });
      $("#ownerName").focus();
        return false;
   }
   
   // 대표자 명 체크
    if(!getName.test($("#ownerName").val())){
      toastr.error('대표자 명은 최소 2글자 이상이어야 합니다.\n(영문 대소문자와 한글)', '이름 확인', {
            timeOut: 3000,
        });
      $("#ownerName").val("");
      $("#ownerName").focus();
        return false;
   }
   
   // 사업자등록번호 체크
   if($("#businessNumber").val() == ""){
      toastr.error('사업자등록번호를 입력하세요.', '사업자등록번호 확인', {
            timeOut: 3000,
        });
      $("#businessNumber").focus();
        return false;
   }
   
   // 담당자명 빈값 체크
   if($("#name").val() == ""){
      toastr.error('담당자 명을 입력하세요.', '담당자 명 확인', {
            timeOut: 3000,
        });
      $("#name").focus();
        return false;
   }
   
   // 이름 체크
   if(!getName.test($("#name").val())){
      toastr.error('담당자 명은 최소 2글자 이상이어야 합니다.\n(영문 대소문자와 한글)', '이름 확인', {
            timeOut: 3000,
        });
      $("#name").val("");
      $("#name").focus();
        return false;
   }
   
   // 휴대전화번호 빈값 체크
   if($("#phone").val() == ""){
      toastr.error('휴대전화번호를 입력하세요.', '휴대폰번호 확인', {
            timeOut: 3000,
        });
      $("#phone").focus();
        return false;
   }
   
   // 이메일 빈값 체크
   if($("#email").val() == ""){
      toastr.error('담당자 이메일을 입력하세요.', '담당자 이메일 확인', {
            timeOut: 3000,
        });
      $("#phone").focus();
        return false;
   }
   
   // 이메일 빈값 체크
   if($("#email").val() == ""){
      toastr.error('담당자 이메일을 입력하세요.', '담당자 이메일 확인', {
            timeOut: 3000,
        });
      $("#phone").focus();
        return false;
   }
   
   // 우편번호 빈값 체크
   if($("#zipNo").val() == ""){
      toastr.error('우편번호를 입력하세요.', '우편번호 확인', {
            timeOut: 3000,
        });
      $("#zipNo").focus();
        return false;
   }
   
   // 우편번호 빈값 체크
   if($("#address").val() == ""){
      toastr.error('도로명주소를 입력하세요.', '도로명주소 확인', {
            timeOut: 3000,
        });
      $("#address").focus();
        return false;
   }
   
   // 우편번호 빈값 체크
   if($("#sellerLogo").val() == ""){
      toastr.error('회사로고를 등록하세요.', '회사로고 확인', {
            timeOut: 3000,
        });
      $("#sellerLogo").focus();
        return false;
   }
   
   if(idFlag != true){
    toastr.error('아이디 중복여부를 확인해주세요.', '아이디 확인', {
            timeOut: 3000,
        });
        return false;
   }
   
   if(psFlag != true){
    toastr.error('비밀번호가 일치해야만 회원가입이 가능합니다.', '비밀번호 확인', {
            timeOut: 3000,
        });
        return false;
   }
   
   $("#registerForm").submit();
}

// 문자 인증하는 팝업창
// 문자 인증 버튼 누르면 발생하는 함수
function opensms() {
      window.open("sendSms.do","휴대폰 인증","width=400,height=300,left=750,top=280");      
   }

// 주소 검색하는 팝업창
// 주소갬석 버튼 클릭시 발생하는 함수 
function goPopup(){   
   var pop = window.open("jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

// 검색하여 받아온 주소값을 input에 넣어주는 함수
function jusoCallBack(roadFullAddr, zipNo){      
      var addrFEl = document.querySelector("#address");
      var zipEl = document.querySelector("#zipNo");      
      addrFEl.value = roadFullAddr;
      zipEl.value = zipNo;      
}