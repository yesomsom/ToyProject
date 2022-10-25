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
<link rel="stylesheet" href="${path}/css/seller/main.css">
</head>
<body>
	<div class="seller_Container">


		<!-- 좌측 박스-->

		<div class="left_Container">

			<div class="Left_F_Container">
				<div class="logo_title">
					<img src="<%=login.getLogoImg()%>" style="width: 80px;">
					<%=login.getSellerName()%></div>
				<a href="/page/uploadGoods.do" class="f_Btn"><span>상품 등록<span></a>
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
							<td class="table_title">재고</td>
							<td class="table_title">가격</td>
							<td class="table_title">할인율(%)</td>
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
								<td class="table_content txt_center">
									<input class="input_num gStock" type="text" value="${goods.goodsStock}개">
								</td>
								<td class="table_content">
									<input class="input_num gPrice" type="text" value="${goods.goodsPrice}원">
								</td>
								<td class="table_content">
									<input class="input_num gDiscount" type="text" value="${goods.goodsDiscount}%">
								</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>



			<div class="Left_S_Container">				
				<a href="/page/goodsList.do" class="s_Btn"><span>모두보기<span></a>
			</div>
		</div>

		<!-- 우측 박스  -->

		<div class="right_Container">
			<div class="title">매출현황</div>
			<div>
				<jsp:include page="${path}/seller/page/salesDetails.do"/>
			</div>
			<a href="/page/salesDetails.do" class="t_Btn"><span>매출내역
					상세보기<span></a>
		</div>



	</div>
</body>
</html>