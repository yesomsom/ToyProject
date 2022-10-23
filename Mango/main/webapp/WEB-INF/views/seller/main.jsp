<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="mango.mango.model.MemberVO"%>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
if (login != null)
   System.out.println(login.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사업자페이지</title>
<link rel="stylesheet" href="${path}/css/seller/main.css">
</head>
<body>
   <div class="seller_Container">


      <!-- 좌측 박스-->

      <div class="left_Container">
         <div class="Left_F_Container">
            <div class="title">
               <img src="<%=login.getLogoImg()%>" style="width:80px;">
               <%=login.getSellerName()%></div>
            <a href="/page/uploadGoods.do" class="f_Btn">상품 등록</a>
         </div>

         <div class="Left_S_Container">
            <div class="title">등록 상품 리스트</div>
            <a href="/page/goodsList.do" class="s_Btn">모두보기</a>
         </div>
      </div>

      <!-- 우측 박스  -->

      <div class="right_Container">
         <div class="title">매출현황</div>
         <a href="/page/salesDetails.do" class="t_Btn">매출내역 상세보기</a>
      </div>



      <!--  하단박스 영역-->

      <!-- <div class="second_Container">
         <div class="title">상품 등록 내역</div>
         <a href="/page/goodsList.do" class="second_Btn">모두보기</a>
      </div> -->

   </div>
</body>
</html>