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
<link rel="stylesheet" href="${path}/css/uploadGoods.css">
<link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--editor-->
<script	src="https://cdn.ckeditor.com/ckeditor5/35.2.0/classic/ckeditor.js"></script>
<script src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>

</head>
<body>
	<div class="uploadForm_Container">

		<!-- 상품 등록폼 -->
		<form action="uploadGoods/insert.do" method="post" id="uploadGoodsForm" enctype="multipart/form-data">
			<!-- 카테고리 -->
			<div class="goods_category form_wrapper">
				<div class="div_wrapper">카테고리</div>
				<select name="goodsCategory" id="goodsCategory">
					<option value="" selected>카테고리</option>
					<option value="키링">키링</option>
					<option value="인형">인형</option>
					<option value="피규어">피규어</option>
					<option value="기타">기타</option>
				</select>
			</div>
			<!-- 상품명 -->
			<div class="goods_name form_wrapper">
				<div class="div_wrapper">상품명</div>
				<input name="goodsName" type="text" id ="goodsName">
			</div>

			<!-- 상품가격 -->
			<div class="goods_price form_wrapper">
				<div class="div_wrapper">상품 가격</div>
				<input name="goodsPrice" type="number" id ="goodsPrice">
			</div>
			
			<!-- 상품배송비 -->
			<div class="delivery_price form_wrapper">
				<div class="div_wrapper">상품 배송비</div>
				<input name="deliveryPrice" type="number" id="deliveryPrice">
			</div>

			<div class="goods_img_path">
				<div class="div_imageFile">상품 이미지(최대 <span class="blue">5</span>개, <span class="blue">.jpg</span>, <span class="blue">.png</span> 이미지 파일만 가능)</div>
				<div>
					<input type="file" name="multiFile" accept=".jpg, .png"multiple style="height: 30px;" id="multifile">
				</div>
			</div>			

			<!-- 상품상세 -->
			<div class="goods_detail">
				<textarea id="editor"></textarea>
				<input type="hidden" name="goodsDetail" id="goodsDetail" class="goodsDetail_value">
			</div>
				<input type="hidden" name="sellerName" value="<%=login.getSellerName()%>">
				<input type="hidden" name="id" value="<%=login.getId()%>">
		</form>

		<div class="btn_section">
         <button type="button" id="cancle_Btn">취소</button>
         <button type="button" form="uploadGoodsForm" id="upload_Btn">상품등록</button>
      </div>
	</div>

		<script src="${path }/js/uploadGoods.js"></script>

	</body>
</html>