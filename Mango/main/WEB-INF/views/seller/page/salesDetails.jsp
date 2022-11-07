<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsList</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="${path}/css/seller/salesList.css">
</head>
<body>
	<div class="salesList_wrap">

		<!-- 상단 제목 -->
		<div class="salesList_wrap_title">판매 내역</div>

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
						<td class="table_content txt_center">						
							<form action="/page/deliveryState/update.do" method="get">
							<input type="hidden" name="trackingNumber" value="${sales.trackingNumber}">
							<input type="hidden" name="ordersId" value="${sales.ordersId}">													
								<select name="deliveryState">
					         		<option name="delivery" value="${sales.deliveryState}" hidden selected>${sales.deliveryState}</option>				         		
									<option value="배송 준비중">배송 준비중</option>						
									<option value="배송중">배송중</option>						
									<option value="배송 완료">배송 완료</option>					
								</select>											
								<button>수정</button>
							</form>
						</td>
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
		<form id="ordersListForm" method="get" action="/page/salesDetails.do">
			<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		</form>		
	</div>
	
	<script src="${path}/js/sellerMain.js"></script>	
    
</body>
</html>