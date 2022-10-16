<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2>게시글 등록 페이지</h2>

제목 : <input type="text" name="title" id="title">
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
</script>
