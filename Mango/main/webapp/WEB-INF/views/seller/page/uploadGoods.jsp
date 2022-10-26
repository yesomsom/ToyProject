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
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--editor-->
<script
	src="https://cdn.ckeditor.com/ckeditor5/35.2.0/classic/ckeditor.js"></script>
</head>
<body>
	<div class="uploadForm_Container">

		<!-- 상품 등록폼 -->
		<form action="uploadGoods/insert.do" method="post" id="uploadGoodsForm" enctype="multipart/form-data">
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
			<div class="goods_img_path">
				<div class="div_wrapper">상품 이미지</div>
				<div>
					<input type="file" name="multiFile" accept=".jpg, .png"multiple style="height: 30px;">
				</div>
			</div>
			

			<!-- 상품상세 -->
			<div class="goods_detail">
				<textarea id="editor"></textarea>
				<input type="hidden" name="goodsDetail" class="goodsDetail_value">
			</div>
				<input type="hidden" name="sellerName" value="<%if (login != null) {%><%=login.getSellerName()%><%} else {%><%}%>">
				<input type="hidden" name="id" value="<%if (login != null) {%><%=login.getId()%><%} else {%><%}%>">
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
	<script>
		ClassicEditor
		    .create( document.querySelector( '#editor' ), {
		        toolbar: [ 'bold', 'italic', 'link', 'undo', 'redo', 'numberedList', 'bulletedList' ]
		    } )
		    .then( editor => {
            console.log( 'Editor was initialized', editor );
            myEditor = editor;
        	} )
		    .catch( error => {
		        console.log( error );
		    } );
	</script>
	<script>
		$(document).ready(function() {
		/* p태그 삭제 */  
		   $('#upload_Btn').on("click", function() {
			   
				let detailStr = myEditor.getData();			
				let modDetailStr = detailStr.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");

				$('.goodsDetail_value').val(modDetailStr);				
		   })
		});
	</script>
</body>
</html>