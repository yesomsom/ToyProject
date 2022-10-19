<%@ page import="mango.mango.model.MemberVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
if (login != null)
   System.out.println(login.toString());
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
		<div class="myOrderspage_container">
			<div class="myOrderspage_wrapper">
				<div class="myOrderspage_header">구매 목록</div>
				<div class="myOrderspage_list">
					<c:forEach var="orders" items="${ordersList}">
						<div class="orders_card">
							<div class="ordersId_title">주문번호 : ${orders.ordersId}</div>	
							<div class="information_wrapper">
								<div class="wrapper_content">
									<div class="wrapper_content_title">주문 상품</div>
									<div class="orders_info">${orders.goodsAllName}</div>
								</div>
							</div>
							
							<div class="orders_content_wrapper">
								<div class="font_size">주문일</div>
								&nbsp;/&nbsp;
								<div class="goods_name">${orders.creDate}</div>
							</div>
							<div class="orders_content_wrapper">
								<div class="font_size">결제 수단</div>
								&nbsp;/&nbsp;
								<div class="goods_name">${orders.payment}</div>
							</div>
							<div class="orders_content_wrapper">
								<div class="font_size">결제 비용</div>
								&nbsp;/&nbsp;
								<div class="goods_name">${orders.totalPrice}원</div>
							</div>
							
							<div class="information_wrapper_">
								<div class="wrapper_content_title">수령인 정보 보기</div>
								<div class="toggle_hidden">
									<div class="wrapper_content">
										<div class="wrapper_content_title">이름</div>
										<div class="orders_info_">${orders.receiverName}</div>
									</div>
									<div class="wrapper_content">
										<div class="wrapper_content_title">전화번호</div>
										<div class="orders_info_">${orders.receiverPhone}</div>
									</div>
									<div class="wrapper_content">
										<div class="wrapper_content_title">주소</div>
										<div class="orders_info_">${orders.receiverAddress}</div>
									</div>								
								</div>	

							</div>
							
							<div class="barcode-wrapper">
								<div>mango</div>
								<img src="${path }/images/barcode.png">
							</div>
							
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	
	<script src="${path}/js/myOrdersPage.js"></script>
</body>

</html>