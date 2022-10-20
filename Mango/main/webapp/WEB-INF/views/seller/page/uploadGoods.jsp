<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--editor-->
<script
	src="https://cdn.ckeditor.com/ckeditor5/35.2.0/classic/ckeditor.js"></script>
<style>
.uploadForm_Container {
	position: absolute;
	top: 168px;
	left: 470px;
	padding: 20px;
	width: 843px;
}

.goods_detail #editor {
	height: 400px;
}

.ck-editor__editable {
	min-height: 300px;
}

.form_wrapper {
	margin-bottom: 20px;
	display: flex;
}

.form_wrapper>input {
	width: 300px;
	height: 30px;
	position: relative;
}

.form_wrapper>select {
	width: 300px;
	height: 30px;
}

.div_wrapper {
	width: 120px;
}
</style>
</head>
<body>
	<div class="uploadForm_Container">

		<!-- 상품 등록폼 -->
		<form action="uploadGoods/insert.do" method="post"
			id="uploadGoodsForm">
			<!-- 카테고리 -->
			<div class="goods_category form_wrapper">
				<div class="div_wrapper">카테고리</div>
				<select name="goodsCategory">
					<option value="0" selected>카테고리</option>
					<option value="키링">키링</option>
					<option value="인형">인형</option>
					<option value="피규어">피규어</option>
					<option value="기타">기타</option>
				</select>
			</div>
			<!-- 상품명 -->
			<div class="goods_name form_wrapper">
				<div class="div_wrapper">상품명</div>
				<input name="goodsName" type="text">
			</div>

			<!-- 상품가격 -->
			<div class="goods_price form_wrapper">
				<div class="div_wrapper">상품 가격</div>
				<input name="goodsPrice" type="text">
			</div>

			<!-- 상품재고 -->
			<div class="goods_stock form_wrapper">
				<div class="div_wrapper">상품 재고</div>
				<input name="goodsStock" type="number">
			</div>

			<!-- 상품할인 -->
			<div class="goods_discount form_wrapper">
				<div class="div_wrapper">상품 할인률</div>
				<input name="goodsDiscount" type="number">
			</div>

			<!-- 상품배송비 -->
			<div class="delivery_price form_wrapper">
				<div class="div_wrapper">상품 배송비</div>
				<input name="deliveryPrice" type="text">
			</div>

			<!-- 임시 이미지 -->
		<!-- 	<div class="goods_img_path">
				<div class="div_wrapper">상품 이미지</div>
				<div>
					<input type="file" multiple onchange="addFile(this);"
						name="goodsImgPath" style="height: 30px;">
					<div class="file-List"></div>
				</div>
			</div> -->

			<!-- 상품상세 -->
		<!-- 	<div class="goods_detail">
				<textarea name="goodsDetail" id="editor"></textarea>
			</div> -->
				<input type="hidden" name="sellerName" value="abc">
		</form>

		<div class="btn_section">
			<button type="button" id="cancle_Btn">취소</button>
			<button type="submit" form="uploadGoodsForm" id="upload_Btn">상품등록</button>
		</div>

	</div>

	<script>	

	$('#cancle_Btn').on("click", function() {
		location.href="/seller/main.do"	
    });
	
	</script>


</body>
</html>