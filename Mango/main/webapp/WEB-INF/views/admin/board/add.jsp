<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 하기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>d
	var cnt = 1;
	function fn_addFile() {
		$("#d_file").append(
				"<br>" + "<input type='file' name='file" + cnt + "' />");
		cnt++;
	}
</script>

</head>
<body>
	<h1>파일 업로드 하기</h1>
	<form method="post" action="uploadForm.do"
		enctype="multipart/form-data">
		<label>아이디 : </label> <input type="text" name="id"><br> <label>이름
			: </label> <input type="text" name="name"><br> <input
			type="button" value="파일 추가" onClick="fn_addFile()"><br>

		<div id="d_file"></div>
		<input type="submit" value="업로드">
	</form>
</body>
</html>

<!-- 제목 : <input type="text" name="title" id="title">
내용 : <input type="text" name="contents" id="contents">
작성자 : <input type="text" name="writer" id="writer">
<button type="button" onclick="board_reg()">ajax로 등록</button>

<script>

	// 게시글 등록
	function board_reg(){
		var title = $("#title").val();
		var contents = $("#contents").val();
		var writer = $("#writer").val();
		
		$.ajax({
			url : "/admin/board/add.do",
			type : "post",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			data : {
				title : title,
				contents : contents,
				writer : writer
			},
			success : function(result){
				if(result == "success"){
					alert("등록되었습니다.");
					window.location = "/admin/board/list.do";
				}
			},
			error : function(){
				
			}
		});
	}
</script> -->
