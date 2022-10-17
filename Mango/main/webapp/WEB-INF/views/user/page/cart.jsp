<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mango.mango.model.MemberVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/cart.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="cart_wrapper">
		<div class="cart_title">장바구니</div>
		<div class="chk_all_wrapper">
			<div>
				<input type="checkbox" class="chk_all" checked="checked"> <span
					class="check_all_title">전체 선택</span>
			</div>
			<div>
				<button class="delete_goods">
					<img class="btn_img1" src="${path}/images/delete_icon1.png">
					<span class="delete_goods_title">삭제</span>
				</button>
			</div>
		</div>
		<div class="order_card_serveral">
			<!-- 장바구니에 넣어 놓은 상품 -->
			<c:forEach var="cart" items="${cartList}">
				<div class="order_card">
					<div class="cart_product_top">
						<div>
							<input type="checkbox" class="chk"
								value="${(cart.goodsPrice * cart.goodsQty) + cart.deliveryPrice}"
								checked="checked" data-cartid="${cart.cartId}" data-gn="${cart.goodsName}"> <span
								class="font_bold_big seller_name">${cart.sellerName}</span>
						</div>
						<div>
							<button class="delete_btn" data-cartid="${cart.cartId}">
								<img class="btn_img_del" src="${path}/images/delete_icon1.png">
							</button>
						</div>
					</div>

					<div class="cart_product_middle">
						<div class="cart_product_img">
							<img class="cart_product_img" src="${cart.goodsImg}">
						</div>
						<div class="cart_product_name font_bold_big">${cart.goodsName}</div>
						<div class="cart_product_price">
							<div>상품금액</div>
							<div class="font_bold_big">
								<fmt:formatNumber pattern="###,###,###"
									value="${cart.goodsPrice}" />
								원
							</div>
						</div>
						<div class="cart_product_qty">
							<div>
								<div class="cart_product_qty_pos">
									수량 <input class="cart_product_qty_input quantity_input"
										type="text" value="${cart.goodsQty}" disabled> <span>개</span>
								</div>
								<button class="quantity_btn plus_btn">
									<img class="btn_img" src="${path}/images/plus_icon1.png">
								</button>
								<button class="quantity_btn minus_btn">
									<img class="btn_img" src="${path}/images/minus_icon1.png">
								</button>
								<button class="quantity_modify_btn" data-cartId="${cart.cartId}">변경</button>

								<%--                         <input class="cart_product_qty_input" type="number"
                           value="${cart.goodsQty}" min="0" max="100"> --%>
								<%--                         <fmt:formatNumber pattern="###,###,###"
                           value="${cart.goodsQty}" /> 개--%>
							</div>
						</div>
						<div>
							<div>배송비</div>
							<div class="font_bold_big">
								<fmt:formatNumber pattern="###,###,###"
									value="${cart.deliveryPrice}" />
								원
							</div>
						</div>
					</div>
					<div class="cart_product_bottom">
						<div>
							<div>선택상품금액</div>
							<div class="font_bold_big">
								<fmt:formatNumber pattern="###,###,###"
									value="${cart.goodsPrice}" />
								원
							</div>
						</div>
						<div class="font_bold_big">x</div>
						<div>
							<div>수량</div>
							<div class="cart_qty_change">
								<fmt:formatNumber pattern="###,###,###" value="${cart.goodsQty}" />
								개
							</div>
						</div>
						<div class="font_bold_big">+</div>
						<div class="cart_total_delivery">
							<div>총배송비</div>
							<div class="font_bold_big">
								<fmt:formatNumber pattern="###,###,###"
									value="${cart.deliveryPrice}" />
								원
							</div>
						</div>
						<div class="order_price_all">
							<span class="order_price_all_title">주문금액</span> <span
								class="font_bold_big"><fmt:formatNumber
									pattern="###,###,###"
									value="${(cart.goodsPrice * cart.goodsQty) + cart.deliveryPrice}" />원</span>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
		<br> <br> <br> <br> <br> <br>
	</div>

	<!-- 하단 결제하기 바 -->
	<div class="total_price_wrapper">
		<form name="" class="cartForm" action="/page/orders/insert.do" method="post">
			<input type="hidden" class="id" name="id"
				value="<%if (login != null) {%><%=login.getId()%><%} else {%><%}%>">
			<input type="hidden" name="name"
				value="<%if (login != null) {%><%=login.getName()%><%} else {%><%}%>">
         <input type="hidden" name="goodsAllName">
         <input class="receiver_name_submit" type="hidden" name="receiverName"
			value="<%if (login != null) {%><%=login.getName()%><%} else {%><%}%>">
		<input class="receiver_phone_submit" type="hidden"
			name="receiverPhone"
			value="<%if (login != null) {%><%=login.getPhone()%><%} else {%><%}%>">
		<input class="receiver_zipno_submit" type="hidden"
			name="receiverZipno"
			value="<%if (login != null) {%><%=login.getZipNo()%><%} else {%><%}%>">
		<input class="receiver_address_submit" type="hidden"
			name="receiverAddress"
			value="<%if (login != null) {%><%=login.getAddress()%><%} else {%><%}%>">
			<span class="total_price_title">총 주문금액</span> 
			<span class="total_price font_bold_big"> 
				<c:set var="total" value="0" /> 
				<c:forEach var="cart" items="${cartList}">
				<c:set var="total" value="${total + ((cart.goodsPrice * cart.goodsQty) + cart.deliveryPrice)}" />
				</c:forEach> <fmt:formatNumber pattern="###,###,###" value="${total}" /> 원
			</span> 
			<input type="hidden" class="totalPrice" name="totalPrice" value="${total}"> 
				
				<button class="btn" onClick="">주문하기</button>
				<!-- <input class="btn" type="submit" value="주문하기"> -->
		</form>
	</div>


	<!-- 수량 조정 form -->
	<form action="/page/cart/update.do" method="post"
		class="quantity_update_form">
		<input type="hidden" name="cartId" class="update_cartId"> <input
			type="hidden" name="goodsQty" class="update_goodsQty"> <input
			type="hidden" name="memberId" value="">
	</form>

	<!-- 삭제 form -->
	<form action="/page/cart/delete.do" method="post"
		class="quantity_delete_form">
		<input type="hidden" name="cartId" class="delete_cartId">
	</form>
	
	<!-- order 유무 변경 form -->
	<form name="changeOrdersYNForm" action="/page/cart/update.do" method="post"
		class="checked_order_form">
		<input type="hidden" name="cartList[0].cartId" class="update_cartId[0]" value="Y">
		<input type="hidden" name="cartList[1].cartId" class="update_cartId[1]" value="N">
		<input type="hidden" name="cartList[2].cartId" class="update_cartId[2]" value="Y">
		<input type="hidden" name="cartList[3].cartId" class="update_cartId[3]" value="N">
		<input type="hidden" name="cartList[4].cartId" class="update_cartId[4]" value="Y">
		
	</form>

	<script src="${path}/js/cart.js"></script>


</body>
</html>