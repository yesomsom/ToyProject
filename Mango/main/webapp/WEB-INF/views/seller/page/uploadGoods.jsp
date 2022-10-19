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
		<form action="/uploadGoods/insert.do" method="post"
			id="uploadGoodsForm">
			<!-- 카테고리 -->
			<div class="goods_category form_wrapper">
				<div class="div_wrapper">카테고리</div>
				<select name="goodsCategory">
					<option value="0" selected>카테고리</option>
					<option value="1">키링</option>
					<option value="2">인형</option>
					<option value="3">피규어</option>
					<option value="4">기타</option>
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
			<div class="goods_img_path">
				<div class="div_wrapper">상품 이미지</div>
				<div>
					<input type="file" multiple onchange="addFile(this);"
						name="goodsImgPath" style="height: 30px;">
					<div class="file-List"></div>
				</div>
			</div>

			<!-- 상품상세 -->
			<div class="goods_detail">
				<textarea name="goodsDetail" id="editor"></textarea>
			</div>
				<input type="hidden" name="seller_name" value="abc">
		</form>

		<div class="btn_section">
			<button type="button" id="cancle_Btn">취소</button>
			<button type="button" id="upload_Btn">상품등록</button>
		</div>

	</div>
	<script>
	// 다중 첨부시 추가 삭제 검사 
	var fileNo = 0;
	var filesArr = new Array();
	
	/* 첨부파일 추가 */
	function addFile(obj){
	    var maxFileCnt = 10;   // 첨부파일 최대 개수	
	    var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
	    var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
	    var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수
	
	    // 첨부파일 개수 확인
	    if (curFileCnt > remainFileCnt) {
	        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
	    } else {
	        for (const file of obj.files) {
	            // 첨부파일 검증
	            if (validation(file)) {
	                // 파일 배열에 담기
	                var reader = new FileReader();
	                reader.onload = function () {
	                    filesArr.push(file);
	                };
	                reader.readAsDataURL(file);
	
	                // 목록 추가
	                let htmlData = '';
	                htmlData += '<div id="file' + fileNo + '" class="filebox">';
	                htmlData += '   <p class="name">' + file.name + '</p>';
	                htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="far fa-minus-square"></i></a>';
	                htmlData += '</div>';
	                $('.file-list').append(htmlData);
	                fileNo++;
	            } else {
	                continue;
	            }
	        }
	    }
	    // 초기화
	    document.querySelector("input[type=file]").value = "";
	}
	
	/* 첨부파일 검증 */
	function validation(obj){
	    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
	    if (obj.name.length > 100) {
	        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
	        return false;
	    } else if (obj.size > (100 * 1024 * 1024)) {
	        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
	        return false;
	    } else if (obj.name.lastIndexOf('.') == -1) {
	        alert("확장자가 없는 파일은 제외되었습니다.");
	        return false;
	    } else if (!fileTypes.includes(obj.type)) {
	        alert("첨부가 불가능한 파일은 제외되었습니다.");
	        return false;
	    } else {
	        return true;
	    }
	}
	
	/* 첨부파일 삭제 */
	function deleteFile(num) {
	    document.querySelector("#file" + num).remove();
	    filesArr[num].is_delete = true;
	}



	// 게시글 등록
	// eunjch:여기도 수정 - formData형식으로 send
	
			$('#upload_Btn').on("click", function(){			
			
		var form = document.querySelector("form");
	    var formData = new FormData(form);
	    for (var i = 0; i < filesArr.length; i++) {
	        // 삭제되지 않은 파일만 폼데이터에 담기
	        if (!filesArr[i].is_delete) {
	            formData.append("attach_file", filesArr[i]);
	        }
	    }

		console.log(formData);
	    
		$.ajax({
			method: 'POST',
			url : "uploadGoods/insert.do",
			type : "post",	
			enctype: 'multipart/form-data',
			dataType: 'json',
			data : JSON.stringify(formData),
			success : function(result){
				if(result == "success"){
					alert("등록되었습니다.");
				
				}
			},
			error : function(){
				
			}
		});
		});
	$("#uploadGoodsForm").submit;
</script>
	<script>	

	$('#cancle_Btn').on("click", function() {
		location.href="/seller/main.do"	
    });
	
	
	
	
		
</script>
	<script>
<!-- Initialize Quill editor -->
ClassicEditor
.create( document.querySelector( '#editor' ), {
	toolbar: {
	    items: [
	        'heading', '|',
	        'alignment', '|',
	        'bold', 'italic', 'strikethrough', 'underline', 'subscript', 'superscript', '|',
	        'link', '|',
	        'bulletedList', 'numberedList', 'todoList',	        
	        'fontfamily', 'fontsize', 'fontColor', 'fontBackgroundColor', '|',
	        'code', 'codeBlock', '|',
	        'insertTable', '|',
	        'outdent', 'indent', '|',
	        'uploadImage', 'blockQuote', '|',
	        'undo', 'redo'
	    ],
	    shouldNotGroupWhenFull: true
	}

} )
.catch( error => {
    console.log( error );
} );
</script>

</body>
</html>