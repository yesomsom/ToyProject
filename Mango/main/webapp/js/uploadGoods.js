const upload = document.querySelector(".upload_Btn")
const goodsname = document.querySelector("#goodsName")
const uploadGoodsForm = document.querySelector("#uploadGoodsForm")

$('#upload_Btn').on("click", function() {

	let detailStr = myEditor.getData();

	/* p태그 삭제 */
	let modDetailStr = detailStr.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");

	$('.goodsDetail_value').val(modDetailStr);
	
	toastr.options = {
		positionClass: 'toast-top-full-width',
		progressBar: true,
		timeOut: 1000,
	};

	if ($("#goodsCategory").val() == "") {
		toastr.error('카테고리를 설정하세요.', '오류', {
			timeOut: 3000,
		});
		$("#goodsCategory").focus();
		return false;
	}

	if ($("#goodsName").val() == "") {
		toastr.error('상품명을 입력하세요.', '오류', {
			timeOut: 3000,
		});
		$("#goodsName").focus();
		return false;
	}

	if ($("#goodsPrice").val() == "") {
		toastr.error('상품 가격을 입력하세요.', '오류', {
			timeOut: 3000,
		});
		$("#goodsPrice").focus();
		return false;
	}

	if ($("#goodsPrice").val() == "") {
		toastr.error('상품 가격을 입력하세요.', '오류', {
			timeOut: 3000,
		});
		$("#goodsPrice").focus();
		return false;
	}

	if ($("#goodsStock").val() == "") {
		toastr.error('상품 재고를 입력하세요.', '오류', {
			timeOut: 3000,
		});
		$("#goodsStock").focus();
		return false;
	}

	if ($("#goodsDiscount").val() == "") {
		toastr.error('상품 할인을 입력하세요.', '오류', {
			timeOut: 3000,
		});
		$("#goodsDiscount").focus();
		return false;
	}

	if ($("#deliveryPrice").val() == "") {
		toastr.error('배송비를 입력하세요.', '오류', {
			timeOut: 3000,
		});
		$("#deliveryPrice").focus();
		return false;
	}

	if ($("#multifile").val() == "") {
		toastr.error('파일 이미지를 업로드하세요.', '오류', {
			timeOut: 3000,
		});
		$("#multifile").focus();
		return false;
	}

	if (detailStr == "") {
		toastr.error('상품 상세 설명을 입력해주세요.', '오류', {
			timeOut: 3000,
		});
		$("#goodsDetail").focus();
		return false;
	}

	$("#uploadGoodsForm").submit();
})
$('#cancle_Btn').on("click", function() {
	location.href = "/seller/main.do"
});
ClassicEditor
	.create(document.querySelector('#editor'), {
		toolbar: ['bold', 'italic', 'link', 'undo', 'redo', 'numberedList', 'bulletedList']
	})
	.then(editor => {
		console.log('Editor was initialized', editor);
		myEditor = editor;
	})
	.catch(error => {
		console.log(error);
	});