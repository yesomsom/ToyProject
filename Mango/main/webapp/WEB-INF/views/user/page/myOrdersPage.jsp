<%@page import="java.util.List"%>
<%@ page import="mango.mango.model.MemberVO"%>
<%@page import="mango.mango.model.OrdersPayVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
if (login != null)
   System.out.println(login.toString());
%>
<%
List<OrdersPayVO> ordersPayList = (List<OrdersPayVO>) request.getAttribute("ordersPayList");
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/myOrdersPage.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
   href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
   src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
</head>
<body>
   <div>
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
   
      <div class="myOrderspage_container">
         <div class="myOrderspage_wrapper">
         <!-- 상단 헤드 -->
            <div class="myOrderspage_header">구매 목록</div>
            <!-- 리스트 전체 -->
            <div class="myOrderspage_list">
            <!-- 개별 구매 목록 -->
          <%
          if (ordersPayList == null) {
          %>
          <div>구매한 상품이 없습니다</div>
          <%
          } else {
          for (int i = 0; i < ordersPayList.size(); i++) {
             OrdersPayVO ordersPayVO = ordersPayList.get(i);
          %>   
                  <div class="orders_card">
                     <div class="ordersId_title">주문 번호<%=ordersPayVO.getOrdersId()%></div>   
                     <div class="information_wrapper">
                        <div class="wrapper_content">
<!--                            <div class="wrapper_content_title">주문 상품</div> -->
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
                     <!-- 수령인 정보 (toggle) -->
                     <div class="information_wrapper_receiver">
                        <div class="wrapper_content_title w_<%=i%>">수령인 정보 보기</div>
                        <div class="toggle_hidden t_<%=i%>">
                           <div class="wrapper_content">
                              <div>이름</div>
                              <div class="content_bold">
                              	<%=ordersPayVO.getReceiverName()%>
                              </div>
                           </div>
                           <div class="wrapper_content">
                              <div>전화번호</div>
                              <div class="content_bold">
                              	<%=ordersPayVO.getReceiverPhone()%>
                              </div>
                           </div>
                           <div class="wrapper_content">
                              <div>주소</div>
                              <div class="content_bold">
                              	<%=ordersPayVO.getReceiverAddress()%>
                              </div>
                           </div>                        
                        </div>   

                     </div>
                     
                     <div class="barcode-wrapper">
                        <div>mango</div>
                        <img src="${path }/images/barcode.png">
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
   </div>
   
   <script src="${path}/js/myOrdersPage.js"></script>
</body>

</html>