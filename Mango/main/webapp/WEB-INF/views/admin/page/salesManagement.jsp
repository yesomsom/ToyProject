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
<div class="container">
	<div class="row col-md-15 custyle margin-left-1">
		<table class="table table-striped custab">
			<h1>매출 내역</h1>
			<thead>
			   <tr>
			      <th class="text-center">주문 번호</th>
			      <th class="text-center">고객 아이디</th>
			      <th class="text-center">결제 금액</th>
			      <th class="text-center">결제일</th>
			      <th class="text-center">수령인</th>
			      <th class="text-center">연락처</th>
			      <th class="text-center">배송지</th>
			      <th class="text-center">배송상태</th>
			   </tr>
			</thead>
			<tbody>
			<c:forEach items="${ordersPayList}" var="sales"  varStatus="status">
			      <tr>
			         <td class="text-center">${sales.ordersId}</td>
			         <td class="text-center">${sales.id}</td>
			         <td class="text-center">${sales.ordersPayMoney}원</td>
			         <td class="text-center"><fmt:formatDate value="${sales.ordersPayDate}" pattern="yyyy-MM-dd" />
			            <input class="t_${status.count}" type="hidden" value="t_${status.count}" data-dv="${sales.ordersPayDate}" data-pr="${sales.ordersPayMoney}">
			         </td>
			         <td class="text-center">${sales.receiverName}</td>
			         <td class="text-center">${sales.receiverPhone}</td>  
			         <td class="text-center">${sales.receiverZipno}, ${sales.receiverAddress}</td>  
			         <td class="text-center">${sales.deliveryState}</td>
			      </tr>
			</c:forEach>
			</tbody>
		</table>   
	</div>  
	</div>
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
   
	<script src="${path }/js/paging.js"></script>
   
</body>
</html>