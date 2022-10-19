<%@page import="mango.mango.model.MemberVO"%>
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
       <div class="side_head">MY HOME</div>
       <div class="side_body">
         <div><a href="${path}/page/myReserve.do">예매 목록</a></div>
         <div><a href="${path}/page/myOrdersPage.do">구매 목록</a></div>
         <div><a href="#">문의 목록</a></div>
         <div><a href="${path}/page/memberModify.do">회원정보수정</a></div>
       </div>
     </aside>
     <!-- 바디 -->
     <div class="myPage_container">

         <!--나의 구매 목록 box -->
         <div class="myPage_subtitle"><a href="${path}/page/myOrdersPage.do">구매 목록</a></div>'
         
         <!-- 구매 상품 전체 묶음 -->
         <div class="ordersList_wrap">
         
         <!-- 첫번째 구매 상품 -->
             <div class="ordersList_card">
                <div class="ordersId_title">주문번호 : ${ordersList[0].ordersId}</div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">주문 상품</div>
                      <div class="orders_info">${ordersList[0].goodsAllName}</div>
                   </div>
                </div>
                
                <div class="orders_content_wrapper">
                   <div class="font_size">주문일</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${ordersList[0].creDate}</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 수단</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${ordersList[0].payment}</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 비용</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${ordersList[0].totalPrice}원</div>
                </div>
                <!-- 수령인 정보 (toggle) -->
                <div class="information_wrapper_receiver">
                   <div class="wrapper_content_title w_0">수령인 정보 보기</div>
                   <div class="toggle_hidden t_0">
                      <div class="wrapper_content">
                         <div>이름</div>
                         <div class="content_bold">${ordersList[0].receiverName}</div>
                      </div>
                      <div class="wrapper_content">
                         <div>전화번호</div>
                         <div class="content_bold">${ordersList[0].receiverPhone}</div>
                      </div>
                      <div class="wrapper_content">
                         <div>주소</div>
                         <div class="content_bold">${ordersList[0].receiverAddress}</div>
                      </div>                        
                   </div>   
                </div>      
           </div>
           
         <!-- 두번째 구매 상품 -->
             <div class="ordersList_card">
                <div class="ordersId_title">주문번호 : ${ordersList[1].ordersId}</div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">주문 상품</div>
                      <div class="orders_info">${ordersList[1].goodsAllName}</div>
                   </div>
                </div>
                
                <div class="orders_content_wrapper">
                   <div class="font_size">주문일</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${ordersList[1].creDate}</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 수단</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${ordersList[1].payment}</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 비용</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${ordersList[1].totalPrice}원</div>
                </div>
                <!-- 수령인 정보 (toggle) -->
                <div class="information_wrapper_receiver">
                   <div class="wrapper_content_title w_1">수령인 정보 보기</div>
                   <div class="toggle_hidden t_1">
                      <div class="wrapper_content">
                         <div>이름</div>
                         <div class="content_bold">${ordersList[1].receiverName}</div>
                      </div>
                      <div class="wrapper_content">
                         <div>전화번호</div>
                         <div class="content_bold">${ordersList[1].receiverPhone}</div>
                      </div>
                      <div class="wrapper_content">
                         <div>주소</div>
                         <div class="content_bold">${ordersList[1].receiverAddress}</div>
                      </div>                        
                   </div>   
                </div>      
           </div>           
           
         <!-- 세번째 구매 상품 -->
             <div class="ordersList_card">
                <div class="ordersId_title">주문번호 : ${ordersList[2].ordersId}</div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">주문 상품</div>
                      <div class="orders_info">${ordersList[2].goodsAllName}</div>
                   </div>
                </div>
                
                <div class="orders_content_wrapper">
                   <div class="font_size">주문일</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${ordersList[2].creDate}</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 수단</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${ordersList[2].payment}</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 비용</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${ordersList[2].totalPrice}원</div>
                </div>
                <!-- 수령인 정보 (toggle) -->
                <div class="information_wrapper_receiver">
                   <div class="wrapper_content_title w_2">수령인 정보 보기</div>
                   <div class="toggle_hidden t_2">
                      <div class="wrapper_content">
                         <div>이름</div>
                         <div class="content_bold">${ordersList[2].receiverName}</div>
                      </div>
                      <div class="wrapper_content">
                         <div>전화번호</div>
                         <div class="content_bold">${ordersList[2].receiverPhone}</div>
                      </div>
                      <div class="wrapper_content">
                         <div>주소</div>
                         <div class="content_bold">${ordersList[2].receiverAddress}</div>
                      </div>                        
                   </div>   
                </div>      
           </div>           
           
           
           
         </div>     
     </div>
   </div>
   <script src="${path}/js/myPage.js"></script>
</body>
</html>