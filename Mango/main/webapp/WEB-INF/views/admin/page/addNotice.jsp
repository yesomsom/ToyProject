<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script	src="https://cdn.ckeditor.com/ckeditor5/35.2.0/classic/ckeditor.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>	
	<form method="post" action="/admin/addNotice/insert.do">
		<div class="form_wrapper">
			<div class="div_wrapper">제목</div>	
			<input type="text" name="notiSubject">
		</div>
		<div class="noti_content">
			<textarea id="editor"></textarea>
			<input type="hidden" name="notiContent" class="addNotice_value">
		</div>	
		<button id="upload_Btn">등록하기</button>	
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
	});
	</script>
</body>
</html>
