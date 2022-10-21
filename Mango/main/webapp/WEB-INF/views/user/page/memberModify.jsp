<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@page import="mango.mango.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
%>
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
<%
request.setAttribute("id", login.getId());
String id = request.getParameter("id");
%>
<body>
   <div class="wrapper">
      <div class="inner">
         <div class="image-holder">
            <img id="poster" src="" alt="">
         </div>
         <form action="/page/memberModify/update.do" method="post"
            id="modifyForm">
            <p class="register-title">
               <a href="${path }/page/main.do"><img src="${path }/images/mangoLogo.png"></a><span>회원정보
                  수정</span>
            </p>
            <div class="form-wrapper form-wrapper-id">
               <div class="id-wrapper">
                  <input id="id" name="id" type="text" placeholder="아이디"
                     class="form-control" value="${login.getId()}" readonly>
                  <!-- <i class="zmdi zmdi-id">아이디 체크</i> -->
               </div>
            </div>

            <div class="form-wrapper">
               <input type="password" name="password" placeholder="비밀번호"
                  id="password" class="form-control" value=""> <i class="zmdi zmdi-lock"></i>
               <button id="pw" class="pnCheckButton" type="button"
                  onClick="changepw();">비밀번호 변경</button>
            </div>

            <div class="form-wrapper">
               <input type="password" placeholder="비밀번호 확인" style="display:none;"class="form-control"
                  id="passwordRepeat" value="" onChange="passwordValidate()"> <i
                  class="zmdi zmdi-lock"></i>
            </div>

            <div class="form-wrapper">
               <input name="name" type="text" id="name" placeholder="이름"
                  class="form-control" value="${login.getName()}"> <i
                  class="zmdi zmdi-account-box"></i>
            </div>

            <div class="form-wrapper phone_num">
               <input type="text" name="phone" placeholder="휴대폰번호"
                  class="form-control" id="phone" value="${login.getPhone()}"
                  readonly> <i class="zmdi  zmdi-phone"></i>
               <button id="ph" class="pnCheckButton" type="button"
                  onClick="opensms();">문자인증</button>
            </div>

            <div class="form-wrapper">
               <input type="email" name="email" placeholder="이메일"
                  class="form-control" value="${login.getEmail()}"> <i
                  class="zmdi zmdi-email"></i>
            </div>

            <div class="form-wrapper">
               <input class="form-control" type="text" placeholder="우편번호"
                  style="width: 315px;" id="zipNo" name="zipNo"
                  value="${login.getZipNo()}" readonly />
               <button id="jusoCheck" type="button" onclick="goPopup();">주소검색</button>
               <i class="zmdi zmdi-phone"></i>
            </div>
            <div class="form-wrapper">
               <input class="form-control" type="text" placeholder="도로명주소"
                  style="width: 315px;" id="address" name="address"
                  value="${login.getAddress()}" readonly /> <i
                  class="zmdi zmdi-phone"></i>
            </div>
            <button type="button" onclick="checks();">회원정보 수정</button>
            <button type="button" onclick="delmember();">회원탈퇴</button>
         </form>

      </div>
   </div>
   <script src="${path }/js/memberModify.js"></script>
</body>
</html>