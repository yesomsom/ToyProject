<%@page import="java.util.List"%>
<%@ page import="mango.mango.model.MemberVO"%>
<%@page import="mango.mango.model.OrdersVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString());

List<OrdersVO> ordersList = (List<OrdersVO>) request.getAttribute("ordersList");
int allTotalPrice = 0;
for (int i = 0; i < ordersList.size(); i++) {
	String ordersIdInList = ordersList.get(0).getOrdersId();
	String ordersIdInListI = ordersList.get(i).getOrdersId();
	if (ordersIdInListI.equals(ordersIdInList)) {
		allTotalPrice += Integer.parseInt(ordersList.get(i).getTotalPrice());
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order</title>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/orders.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<body>
	<div class="orders_wrapper">
		<form action="/page/ordersKakao/insert.do" method="post">
			<div class="orders_wrapper_title">주문 결제</div>
			<!-- 구매자 정보 -->
			<div class="member_detail detail_wrapper">
				<div class="title_bold_big">구매자 정보</div>
				<div class="margin_top">
					구매자 : 
					<span class="margin_left"><%=login.getName()%></span>
				</div>
				<div>
					연락처 : 
					<span class="margin_left"><%=login.getPhone()%></span>
				</div>
				<div>
					우편번호 : 
					<span class="margin_left"><%=login.getZipNo()%></span>
				</div>
				<div>
					도로명 주소 : 
					<span class="margin_left"><%=login.getAddress()%></span>
				</div>
			</div>
			<!-- 배송지 정보 -->
			<div class="delivery_detail detail_wrapper">
				<div class="title_bold_big">수령인 정보</div>
				<div class="margin_top">
					<div class="modify_orders">
						<div>수령인 : </div>
						<div>
							<input name="receiverName" type="text" value="<%=login.getName()%>">
						</div>
						<div></div>
					</div>
					<div class="modify_orders">
						<div>연락처 : </div>
						<div>
							<input class="form-control" id="phone" name="receiverPhone"	type="text" readonly value="<%=login.getPhone()%>">
								<i class="zmdi  zmdi-phone"></i>
						</div>
						<div>
							<button class="md_btn" id="ph" class="pnCheckButton" type="button" onClick="opensms();">번호인증</button>
						</div>
					</div>
					<div class="modify_orders">
						<div>우편 번호 : </div>
						<div>
							<input name="receiverZipno" id="zipNo" type="text" value="<%=login.getZipNo()%>">
						</div>
						<div>
							<button class="md_btn" id="jusoCheck" type="button"	onclick="goPopup();">주소검색</button>
						</div>
					</div>
					<div class="modify_orders">
						<div>도로명 주소 : </div>
						<div>
							<input name="receiverAddress" id="address" type="text" value="<%=login.getAddress()%>">
						</div>
						<div></div>
					</div>
				</div>
			</div>
			<!-- 결제하기 -->
			<div class="pay_detail">
			
				<div class="pay_total">
					총 결제액 : 
					<input class="orders_money" type="text"	name="OrdersPayMoney" value="<%=allTotalPrice%>">
						원
				</div>
				
				<div class="pay_submit">
					<span class="orders_pay">결제하기</span>
					<input type="hidden" name="ordersId" value="${ordersList[0].ordersId}">
					<button type="submit">
						<img class="btn" src="${path }/images/payment_icon_yellow_medium.png">
					</button>
				</div>
			</div>
		</form>
	</div>

	<script src="${path}/js/orders.js"></script>

</body>
</html>