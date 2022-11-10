<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
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
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="${path}/css/seller/main.css">
</head>
<body>
	<div class="seller_Container">

		<!-- 좌측 박스-->
		<div class="left_Container">

			<div class="Left_F_Container">
				
				<a href="/page/uploadGoods.do" class="f_Btn">
					<span>상품 등록</span>
				</a>
			</div>

			<div class="goodsList_wrap">

				<!-- 상단 제목 -->
				<div class="goodsList_wrap_title">상품 등록 내역</div>

				<!-- 등록된 상품 리스트 테이블 -->
				<table class="goods_table">
					<thead>
						<tr class=" table_title_wrap">
							<td class="table_title">카테고리</td>
							<td class="table_title">상품 이름</td>
							<td class="table_title">판매 상태</td>							
							<td class="table_title">가격</td>							
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${goodsList}" var="goods">
							<tr>
								<td class="table_content t_cat">${goods.goodsCategory}</td>
								<td class="table_content">
									<input class="gName" type="text" value="${goods.goodsName}">
								</td>
								<td class="table_content txt_center">${goods.goodsState}</td>								
								<td class="table_content">
									<input class="input_num gPrice" type="text" value="${goods.goodsPrice}원">
								</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<div class="Left_S_Container">				
				<a href="/page/goodsList.do" class="s_Btn">
					<span>모두보기</span>
				</a>
			</div>
		</div>

		<!-- 우측 박스  -->
		<div class="right_Container">
			<div class="title">매출현황</div>
			<div>
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
		<div id="chart_div"></div>
			</div>
			<a href="/page/salesDetails.do" class="t_Btn">
				<span>매출내역 상세보기</span>
			</a>
		</div>
	</div>
	
	<script src="${path}/js/graph.js"></script>
	
</body>
</html>