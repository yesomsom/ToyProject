<%@ include file="/WEB-INF/views/taglib.jsp"%>
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
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/goodsDetail.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d5cbdd87fa636fd19281386c302b0dd"></script>
<meta charset="utf-8">
<title>상세페이지</title>
</head>

<body>
	<!--상세페이지 컨테이너-->
	<div class="Detail_container">
		<div class="seller_wrap">
			<img alt="seller" src="${path}/images/shop_icon_50.png"
				style="width: 30px;"> <span class="seller_title">${goods.sellerName}</span>
		</div>
		<!--상품 단락-->
		<div class="Goods_intro">

			<div class="Goods_introL">
				<!--상품이미지-->
				<div class="goods_img">
					<img src="${goods.goodsImgPath}"
						style="width: 350px; height: 350px;" alt="">
				</div>
				<div class="thums_img">
					<img src="${goods.goodsImgPath}" style="width: 50px; height: 50px;"
						alt=""> <img src="${goods.goodsImgPath}"
						style="width: 50px; height: 50px;" alt=""> <img
						src="${goods.goodsImgPath}" style="width: 50px; height: 50px;"
						alt=""> <img src="${goods.goodsImgPath}"
						style="width: 50px; height: 50px;" alt=""> <img
						src="${goods.goodsImgPath}" style="width: 50px; height: 50px;"
						alt="">
				</div>

			</div>
			<div class="Goods_introR">
				<!--상품 제목-->
				<div class="Goods_introRTitle mb60">${goods.goodsName}</div>
				<div class="Goods_content">
					<!--상품 가격-->
					<div class="Goods_price_wrap mb10">
						가격: <input class="goods_price text_align_right input_disabled"
							type="text" value="${goods.goodsPrice}" disabled>원
					</div>
					<!--수량체크-->
					<div class="qty_check mb10">
						<span class="qty_position">수량 :</span> <input
							class="goods_qty_change text_align_right" type="number" min="1"
							max="100" value="1" required> 개
					</div>
					<!--배송비-->
					<div class="Delivery_price mb10">
						배송비 : <input
							class="goods_delivery_price text_align_right input_disabled"
							type="text" value="${goods.deliveryPrice}" disabled>원
					</div>
				</div>
				<div class="total_price">
					총 상품 금액 : <input
						class="goods_total_price text_align_right input_disabled font_bold_big"
						type="text" value="${goods.goodsPrice + goods.deliveryPrice}"
						disabled>원
				</div>
				<div class="input_list">
					<input form="orders_direct" class="input_button" type="submit"
						name="buygoods" value="구매하기"> <input form="cart_direct"
						class="input_button" type="submit" name="cartgoods" value="장바구니">
				</div>
				<div class="recommend_goods_wrap">
					<a class="recommend_a1"
						href="${path}/page/goodsDetail.do?goodsId=${goodsList[5].goodsId}"><img
						class="" src="${goodsList[5].goodsImgPath}"
						style="width: 85px; height: 85px;" alt=""></a> <a
						class="recommend_a1"
						href="${path}/page/goodsDetail.do?goodsId=${goodsList[2].goodsId}"><img
						class="" src="${goodsList[2].goodsImgPath}"
						style="width: 85px; height: 85px;" alt=""></a> <a
						class="recommend_a1"
						href="${path}/page/goodsDetail.do?goodsId=${goodsList[7].goodsId}"><img
						class="" src="${goodsList[7].goodsImgPath}"
						style="width: 85px; height: 85px;" alt=""></a>
				</div>
			</div>
		</div>

		<div class="Detail_Content">
			<img src="${goods.goodsImgPath}" style="width: 755px;" alt="">
			<img src="${goods.goodsImgPath}" style="width: 755px;" alt="">
			<img src="${goods.goodsImgPath}" style="width: 755px;" alt="">
		</div>
	</div>

	<!-- cart/insert로 값 전달 & 데이터 저장 -->
	<form id="cart_direct" action="/page/cart/insert.do" method="post">
		<input class="goods_id_submit" type="hidden" name="goodsId"
			value="${goods.goodsId}"> <input class="goods_price_submit"
			type="hidden" name="goodsPrice" value="${goods.goodsPrice}">
		<input class="id_submit" type="hidden" name="id"
			value="<%if (login != null) {%><%=login.getId()%><%} else {%><%}%>">
		<input class="goods_qty_submit" type="hidden" name="goodsQty"
			value="1"> <input class="goods_delivery_submit" type="hidden"
			name="deliveryPrice" value="${goods.deliveryPrice}"> <input
			class="seller_submit" type="hidden" name="sellerName"
			value="${goods.sellerName}"> <input class="goods_img_submit"
			type="hidden" name="goodsImg" value="${goods.goodsImgPath}">
		<input class="goods_name_submit" type="hidden" name="goodsName"
			value="${goods.goodsName}">
	</form>

	<!-- orders로 값 전달 -->
	<form id="orders_direct" action="/page/orders/insert.do" method="post">
		<input class="id_submit" type="hidden" name="id"
			value="<%if (login != null) {%><%=login.getId()%><%} else {%><%}%>">
		<input class="goods_name_submit"
			type="hidden" name="goodsAllName" value="${goods.goodsName}">
		<input class="name_submit"
			type="hidden" name="name"
			value="<%if (login != null) {%><%=login.getName()%><%} else {%><%}%>">
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
		<input type="hidden" class="goods_totalPrice_submit" name="totalPrice"
			value="${goods.goodsPrice + goods.deliveryPrice}">
	</form>

	<script src="${path}/js/goodsDetail.js"></script>

</body>
</html>