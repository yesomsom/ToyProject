<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script
	src="https://cdn.ckeditor.com/ckeditor5/35.2.0/classic/ckeditor.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/admin/addNotice.css">
</head>
<body>
	<form method="post" action="/admin/addNotice/insert.do" id="addNoticeForm">
		<div class="form_wrapper notiTitle">
			<input type="text" name="notiSubject" placeholder="공지사항 제목"
				class="notiTitle">
		</div>
		<div class="noti_content">
			<textarea id="editor" style=""></textarea>
			<input type="hidden" name="notiContent" class="addNotice_value">
		</div>
		<button id="upload_Btn" type="button">등록하기</button>
	</form>

	<script>
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
	$('#upload_Btn').on("click", function() {	
		   let notiStr = myEditor.getData();
	
		   /* p태그 삭제 */
		   let addNotiStr = notiStr.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");	    
	
		   $('.addNotice_value').val(addNotiStr);
		   $('#addNoticeForm').submit()
		   alert("공지사항이 등록되었습니다.")		  
	});
	</script>
</body>
</html>
