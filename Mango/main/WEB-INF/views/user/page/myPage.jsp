<%@page import="java.util.List"%>
<%@page import="mango.mango.model.MemberVO"%>
<%@page import="mango.mango.model.ReserveVO"%>
<%@page import="mango.mango.model.OrdersPayVO"%>
<%@page import="mango.mango.model.AskVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
if (login != null)
   System.out.println(login.toString());
%>
<%
List<ReserveVO> list = (List<ReserveVO>) request.getAttribute("reserveList");
%>
<%
List<OrdersPayVO> ordersPayList = (List<OrdersPayVO>) request.getAttribute("ordersPayList");
%>
<%
List<AskVO> askList = (List<AskVO>) request.getAttribute("askList");
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/myPage.css">
</head>
<body>
   <div class="myPage_wrap">
    <!-- 사이드바 -->
     <aside class="sideBar">
       <div class="side_head"><a href="${path}/page/myPage.do">MY HOME</a></div>
       <div class="side_body">
         <div><a href="${path}/page/myReserve.do">예매 목록</a></div>
         <div><a href="${path}/page/myOrdersPage.do">구매 목록</a></div>
         <div><a href="${path}/page/myAskList.do">문의 목록</a></div>
         <div><a href="${path}/page/memberModify.do">회원정보수정</a></div>
       </div>
     </aside>
     
     <!-- 예매, 구매, 문의 전체 묶음 -->
     <div class="myPage_container">

         <!--나의 예매 목록 title -->
         <div class="myPage_subtitle"><a href="${path}/page/myReserve.do">예매 목록</a></div>
         
         <!-- 예매 전체 묶음 -->
         <div class="reserveList_wrap">
          <%
          if (list == null) {
          %>
          <div>예약한 영화가 없습니다</div>
          <%
          } else {
          for (int i = 0; i < list.size(); i++) {
             ReserveVO reserveVO = list.get(i);
          %>
             <div class="reserveList_card">
                <div class="reserveId_title">
                	<a href="${path}/page/myReserve.do">예매번호<br><%=reserveVO.getReserveSequence()%></a>
                </div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="reserve_info"><%=reserveVO.getTitle()%></div>
                         <div class="reserve_pos">
                         <div class="reserve_content"><%=reserveVO.getSelectedTheater()%></div>
                         <div class="reserve_content">자리 : <%=reserveVO.getSelectedSeat()%></div>
                         <div class="reserve_content">일시 : <%=reserveVO.getMovieDate()%> <%=reserveVO.getRunningTime()%></div>
                         </div>
                   </div>
                </div>  
                              
                <div class="reserve_content_wrapper">
                   <div class="font_size">결제일</div>
                   &nbsp;/&nbsp;
                   <div class="reserve_content"><%=reserveVO.getPayVO().getPayDate()%></div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 비용</div>
                   &nbsp;/&nbsp;
                   <div class="reserve_content"><%=reserveVO.getPayVO().getPayMoney()%>원</div>
                </div>
              </div>
               <%
               }
               %>

               <%
               }
               %>                        
         </div>


         <!--나의 구매 목록 title -->
         <div class="myPage_subtitle"><a href="${path}/page/myOrdersPage.do">구매 목록</a></div>
         
         <!-- 구매 상품 전체 묶음 -->
         <div class="ordersList_wrap">
          <%
          if (ordersPayList == null) {
          %>
          <div>구매한 상품이 없습니다</div>
          <%
          } else {
          for (int i = 0; i < ordersPayList.size(); i++) {
             OrdersPayVO ordersPayVO = ordersPayList.get(i);
          %>         
             <div class="ordersList_card">
                <div class="ordersId_title">
                	<a href="${path}/page/myOrdersPage.do">주문 번호<%=ordersPayVO.getOrdersId()%></a>
                </div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
<!--                       <div class="wrapper_content_title">주문 상품</div> -->
                      <div class="orders_info"></div>
                   </div>
                </div>
                
                <div class="orders_content_wrapper">
                   <div class="font_size">결제일</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name"><%=ordersPayVO.getOrdersPayDate()%></div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 수단</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">카카오페이</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 비용</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name"><%=ordersPayVO.getOrdersPayMoney()%>원</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">배송 상태</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name"><%=ordersPayVO.getDeliveryState()%></div>
                </div>
                <div class="orders_content_wrapper">
                	<button id="deli_Btn" onClick="openTracking()">배송조회</button>
                </div>                
           </div> 
               <%
               }
               %>

               <%
               }
               %>                               
         </div> 

         <!--나의 문의 내역 title -->
         <div class="myPage_subtitle"><a href="${path}/page/myAskList.do">문의 내역</a></div>
         
         <!-- 문의 전체 묶음 -->
         <div class="ordersList_wrap">
           <%
          if (askList == null) {
          %>
          <div>문의 내역이 없습니다</div>
          <%
          } else {
          for (int i = 0; i < askList.size(); i++) {
             AskVO askVO = askList.get(i);
          %>          
             <div class="ordersList_card">
                <div class="ordersId_title"><a href="${path}/page/myAskList.do">문의 번호<br><%=askVO.getAskId()%></a></div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">문의 종류</div>
                      <div class="orders_info"><%=askVO.getAskCat()%></div>
                   </div>
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">문의 제목</div>
                      <div class="orders_info"><%=askVO.getAskSubject()%></div>
                   </div>
                </div>
                
                <div class="orders_content_wrapper">
                   <div class="font_size">문의일</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name"><%=askVO.getAskDate()%></div>
                </div>     
           </div> 
               <%
               }
               %>
               <%
               }
               %>                               
         </div>              
     </div>
   </div>
   <script src="${path}/js/myPage.js"></script>
</body>
</html>