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
         
         <!-- 첫번째 예매 -->
             <div class="reserveList_card">
                <div class="reserveId_title"><a href="${path}/page/myReserve.do">예매번호 : ${reserveList[0].reserveSequence}</a></div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="reserve_info">${reserveList[0].movieName}</div>
                      	<div class="reserve_pos">
	                      <div class="reserve_content">${reserveList[0].selectedTheater}</div>
	                      <div class="reserve_content">자리 : ${reserveList[0].selectedSeat}</div>
	                      <div class="reserve_content">일시 : ${reserveList[0].movieDate} ${reserveList[0].runningTime}</div>
                      	</div>
                   </div>
                </div>  
                              
                <div class="reserve_content_wrapper">
                   <div class="font_size">결제일</div>
                   &nbsp;/&nbsp;
                   <div class="reserve_content">${payList[0].payDate}</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 비용</div>
                   &nbsp;/&nbsp;
                   <div class="reserve_content">${payList[0].payMoney}원</div>
                </div>
     
           </div>
           
         <!-- 두번째 예매 -->
             <div class="reserveList_card">
                <div class="reserveId_title"><a href="${path}/page/myReserve.do">예매번호 : ${reserveList[1].reserveSequence}</a></div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="reserve_info">${reserveList[1].movieName}</div>
                      	<div class="reserve_pos">
	                      <div class="reserve_content">${reserveList[1].selectedTheater}</div>
	                      <div class="reserve_content">자리 : ${reserveList[1].selectedSeat}</div>
	                      <div class="reserve_content">일시 : ${reserveList[1].movieDate} ${reserveList[1].runningTime}</div>
                      	</div>
                   </div>
                </div>
                
                <div class="reserve_content_wrapper">
                   <div class="font_size">결제일</div>
                   &nbsp;/&nbsp;
                   <div class="reserve_content">${payList[1].payDate}</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 비용</div>
                   &nbsp;/&nbsp;
                   <div class="reserve_content">${payList[1].payMoney}원</div>
                </div>
     
           </div>
           
         <!-- 세번째 예매 -->
             <div class="reserveList_card">
                <div class="reserveId_title"><a href="${path}/page/myReserve.do">예매번호 : ${reserveList[2].reserveSequence}</a></div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="reserve_info">${reserveList[2].movieName}</div>
                      	<div class="reserve_pos">
	                      <div class="reserve_content">${reserveList[2].selectedTheater}</div>
	                      <div class="reserve_content">자리 : ${reserveList[2].selectedSeat}</div>
	                      <div class="reserve_content">일시 : ${reserveList[2].movieDate} ${reserveList[2].runningTime}</div>
                      	</div>
                   </div>
                </div>
                
                <div class="reserve_content_wrapper">
                   <div class="font_size">결제일</div>
                   &nbsp;/&nbsp;
                   <div class="reserve_content">${payList[2].payDate}</div>
                </div>
                <div class="orders_content_wrapper">
                   <div class="font_size">결제 비용</div>
                   &nbsp;/&nbsp;
                   <div class="reserve_content">${payList[2].payMoney}원</div>
                </div>
     
           </div>
                               
         </div>


         <!--나의 구매 목록 title -->
         <div class="myPage_subtitle"><a href="${path}/page/myOrdersPage.do">구매 목록</a></div>
         
         <!-- 구매 상품 전체 묶음 -->
         <div class="ordersList_wrap">
         
         <!-- 첫번째 구매 상품 -->
             <div class="ordersList_card">
                <div class="ordersId_title"><a href="${path}/page/myOrdersPage.do">주문번호 : ${ordersList[0].ordersId}</a></div>   
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
                <div class="ordersId_title"><a href="${path}/page/myOrdersPage.do">주문번호 : ${ordersList[1].ordersId}</a></div>   
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
                <div class="ordersId_title"><a href="${path}/page/myOrdersPage.do">주문번호 : ${ordersList[2].ordersId}</a></div>   
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


         <!--나의 문의 내역 title -->
         <div class="myPage_subtitle"><a href="${path}/page/myAskList.do">문의 내역</a></div>
         
         <!-- 문의 전체 묶음 -->
         <div class="ordersList_wrap">
         
         <!-- 첫번째 문의 내역 -->
             <div class="ordersList_card">
                <div class="ordersId_title"><a href="${path}/page/myAskList.do">문의 번호 : ${askList[0].askId}</a></div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">문의 종류</div>
                      <div class="orders_info">${askList[0].askCat}</div>
                   </div>
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">문의 제목</div>
                      <div class="orders_info">${askList[0].askSubject}</div>
                   </div>
                </div>
                
                <div class="orders_content_wrapper">
                   <div class="font_size">문의일</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${askList[0].askDate}</div>
                </div>
                <!-- 문의 내용 (toggle) -->
                <div class="information_wrapper_receiver">
                   <div class="wrapper_content_title w_3">문의 내용</div>
                   <div class="toggle_hidden t_3">
                      <div class="wrapper_content">
                         <div class="content_bold">${askList[0].askContent}</div>
                      </div>                       
                   </div>   
                </div>      
           </div>
           
         <!-- 첫번째 문의 내역 -->
             <div class="ordersList_card">
                <div class="ordersId_title"><a href="${path}/page/myAskList.do">문의 번호 : ${askList[1].askId}</a></div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">문의 종류</div>
                      <div class="orders_info">${askList[1].askCat}</div>
                   </div>
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">문의 제목</div>
                      <div class="orders_info">${askList[1].askSubject}</div>
                   </div>
                </div>
                
                <div class="orders_content_wrapper">
                   <div class="font_size">문의일</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${askList[1].askDate}</div>
                </div>
                <!-- 문의 내용 (toggle) -->
                <div class="information_wrapper_receiver">
                   <div class="wrapper_content_title w_4">문의 내용</div>
                   <div class="toggle_hidden t_4">
                      <div class="wrapper_content">
                         <div class="content_bold">${askList[1].askContent}</div>
                      </div>                       
                   </div>   
                </div>      
           </div>           
           
         <!-- 첫번째 문의 내역 -->
             <div class="ordersList_card">
                <div class="ordersId_title"><a href="${path}/page/myAskList.do">문의 번호 : ${askList[2].askId}</a></div>   
                <div class="information_wrapper">
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">문의 종류</div>
                      <div class="orders_info">${askList[2].askCat}</div>
                   </div>
                   <div class="wrapper_content">
                      <div class="wrapper_content_title">문의 제목</div>
                      <div class="orders_info">${askList[2].askSubject}</div>
                   </div>
                </div>
                
                <div class="orders_content_wrapper">
                   <div class="font_size">문의일</div>
                   &nbsp;/&nbsp;
                   <div class="goods_name">${askList[2].askDate}</div>
                </div>
                <!-- 문의 내용 (toggle) -->
                <div class="information_wrapper_receiver">
                   <div class="wrapper_content_title w_5">문의 내용</div>
                   <div class="toggle_hidden t_5">
                      <div class="wrapper_content">
                         <div class="content_bold">${askList[2].askContent}</div>
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