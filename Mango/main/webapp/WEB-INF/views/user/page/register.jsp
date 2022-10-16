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
                  <input id="id" name="id" type="text" placeholder="아이디"
                     class="form-control">
                  <!-- <i class="zmdi zmdi-id">아이디 체크</i> -->
                  <button type="button" class="idCheckButton" onclick="idCheck();">아이디 체크</button>
               </div>
            </div>

            <div class="form-wrapper">
               <input type="password" name="password" placeholder="비밀번호" id="password"
                  class="form-control"> <i class="zmdi zmdi-lock"></i>
            </div>
            <div class="form-wrapper">
               <input type="password" placeholder="비밀번호 확인" class="form-control" id="passwordRepeat" onChange="passwordValidate()" >
               <i class="zmdi zmdi-lock"></i>
            </div>

            <div class="form-wrapper">
               <input name="name" type="text" id="name" placeholder="이름"
                  class="form-control"> <i class="zmdi zmdi-account-box"></i>
            </div>

            <div class="form-wrapper phone_num">
               <input type="text" name="phone" placeholder="휴대폰번호"
                  class="form-control" id="phone" readonly> <i class="zmdi  zmdi-phone"></i>
               <button id="ph" class="pnCheckButton" type="button" onClick="opensms();">문자인증</button>
            </div>

            <div class="form-wrapper">
               <input type="email" name="email" placeholder="이메일"
                  class="form-control"> <i class="zmdi zmdi-email"></i>
            </div>
            
            <div class="form-wrapper">
              <input class="form-control" type="text" placeholder="우편번호" style="width:315px;" id="zipNo"  name="zipNo" readonly />
              <button id="jusoCheck" type="button" onclick="goPopup();">주소검색</button>
              <i class="zmdi  zmdi-phone"></i>
            </div>
            <div class="form-wrapper">
              <input class="form-control" type="text" placeholder="도로명주소" style="width:315px;" id="address"  name="address" readonly/>              
              <i class="zmdi  zmdi-phone"></i>
            </div>
            <button type="button" onclick="checks()">회원가입</button>

         </form>
      </div>
   </div>
   
   <script src="${path }/js/register.js"></script>
   
</body>
</html>