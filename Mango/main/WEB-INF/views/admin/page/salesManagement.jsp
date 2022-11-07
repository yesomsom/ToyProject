<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출 내역 관리자 페이지</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/admin/salesManagement.css">
</head>
<body>
   <div class="salesList_wrap">

      <!-- 상단 제목 -->
      <div class="salesList_wrap_title">매출 내역</div>

      <!-- 등록된 상품 리스트 테이블 -->
      <table class="sales_table">
         <thead>
            <tr class="table_title_wrap">
               <td class="table_title">주문 번호</td>                              
               <td class="table_title">고객 아이디</td>               
               <td class="table_title">결제 금액</td>
               <td class="table_title">결제일</td>
               <td class="table_title">수령인</td>
               <td class="table_title">연락처</td>
               <td class="table_title">배송지</td>
               <td class="table_title">배송상태</td>
            </tr>
         </thead>
         <tbody>
            <c:forEach items="${ordersPayList}" var="sales"  varStatus="status">
               <tr class="sales_detail">
                  <td class="table_content txt_center">${sales.ordersId}</td>
                                             
                  <td class="table_content txt_center">${sales.id}</td>
                  <td class="table_content txt_right">${sales.ordersPayMoney}원</td>
                  <td class="table_content txt_center" >
                     <fmt:formatDate value="${sales.ordersPayDate}" pattern="yyyy-MM-dd" />
                     <input class="t_${status.count}" type="hidden" value="t_${status.count}" data-dv="${sales.ordersPayDate}" data-pr="${sales.ordersPayMoney}">
                  </td>                              
                  <td class="table_content txt_center">${sales.receiverName}</td>
                  <td class="table_content txt_center">${sales.receiverPhone}</td>                                    
                  <td class="table_content txt_center">${sales.receiverZipno}, ${sales.receiverAddress}</td>  
                  <td class="table_content txt_center">${sales.deliveryState}</td>                
               </tr>   
            </c:forEach>
         </tbody>
      </table>

      <!-- 페이징  -->
      <div class="pageInfo_wrap">
         <div class="pageInfo_area">
            <ul id="pageInfo" class="pageInfo">
               <c:if test="${pageMaker.prev}">
                  <li class="pageInfo_btn previous">
                     <a href="${pageMaker.startPage-1}">Previous</a>
                  </li>
               </c:if>
               <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                  <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }">
                     <a href="${num}">${num}</a>
                  </li>
               </c:forEach>
               <c:if test="${pageMaker.next}">
                  <li class="pageInfo_btn next">
                     <a href="${pageMaker.endPage + 1 }">Next</a>
                  </li>
               </c:if>
            </ul>
         </div>
      </div>
      <form id="salesManagementForm" method="get" action="/admin/salesManagement.do">
         <input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
         <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
      </form>
   </div>
   
   <script src="${path }/js/paging.js"></script>
   
</body>
</html>