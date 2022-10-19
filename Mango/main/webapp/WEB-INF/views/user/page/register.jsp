<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${path}/css/style.css">
<link rel='stylesheet'
   href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
   src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
</head>
<body>
   <div class="wrapper">
      <div class="inner">
         <div class="image-holder">
            <img id="poster" src="" alt="">
         </div>
         <form action="register/insert.do" id="registerForm" method="post" >
            <p class="register-title">
               <img  src="${path }/images/mangoLogo.png">
               <span>회원가입</span>
            </p>
            <div class="form-wrapper form-wrapper-id">
               <div class="id-wrapper">
               <!-- 아이디 입력칸 -->
                  <input id="id" name="id" type="text" placeholder="아이디"
                     class="form-control">
                  <!-- 아이디 체크 버튼 -->
                  <button type="button" class="idCheckButton" onclick="idCheck();">아이디 체크</button>
               </div>
            </div>

            <div class="form-wrapper">
           		<!-- 비밀번호 입력칸 -->
               <input type="password" name="password" placeholder="비밀번호" id="password"
                  class="form-control"> <i class="zmdi zmdi-lock"></i>
            </div>
            <div class="form-wrapper">
            	<!-- 비밀번호 확인 입력칸 -->
               <input type="password" placeholder="비밀번호 확인" class="form-control" id="passwordRepeat" onChange="passwordValidate()" >
               <i class="zmdi zmdi-lock"></i>
            </div>

            <div class="form-wrapper">
            	<!-- 이름 입력칸 -->
               <input name="name" type="text" id="name" placeholder="이름"
                  class="form-control"> <i class="zmdi zmdi-account-box"></i>
            </div>

            <div class="form-wrapper phone_num">
            	<!-- 휴대폰 번호 입력칸 -->
               <input type="text" name="phone" placeholder="휴대폰번호"
                  class="form-control" id="phone" readonly> <i class="zmdi  zmdi-phone"></i>
                  
                  <!-- 문자인증 팝업버튼 opensms 함수작동-->
               <button id="ph" class="pnCheckButton" type="button" onClick="opensms();">문자인증</button>
            </div>
	 		
            <div class="form-wrapper">
            	<!-- 이메일 입력칸 -->
               <input type="email" name="email" placeholder="이메일"
                  class="form-control"> <i class="zmdi zmdi-email"></i>
            </div>
            
            <div class="form-wrapper">
            	<!-- goPopup 함수를 통해 도로명주소api를 실행하여 검색결과를 input에 옮김 -->
              <input class="form-control" type="text" placeholder="우편번호" style="width:315px;" id="zipNo"  name="zipNo" readonly />
              <button id="jusoCheck" type="button" onclick="goPopup();">주소검색</button>
              <i class="zmdi  zmdi-phone"></i>
            </div>
            <div class="form-wrapper">
              <input class="form-control" type="text" placeholder="도로명주소" style="width:315px;" id="address"  name="address" readonly/>              
              <i class="zmdi  zmdi-phone"></i>
            </div>
            	<!-- 회원가입시 유효성 검사를 진행한 후 일치하면 submit실행 -->
            <div class="register_div">
            	<button type="button" id="register_btn"><a href="/page/sellerRegister.do">사업주 회원가입</a></button>
            	<button type="button" id="register_btn" onclick="checks()">회원가입</button>
            </div>

         </form>
      </div>
   </div>
   
   <script src="${path }/js/register.js"></script>
   
</body>
</html>