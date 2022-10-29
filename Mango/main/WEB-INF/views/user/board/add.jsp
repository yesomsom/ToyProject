<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2>게시글 등록 페이지</h2>


<!-- eunjch: form 형식으로 해야 ajax 파일 전송 가능하니 수정 -->
<div class="insert">
	<form id="boiad_data" method="POST" enctype="multipart/form-data">
		
		<div>제목 : <input type="text" name="title" id="title"></div>
		<div>내용 : <input type="text" name="contents" id="contents"></div>
		<div>작성자 : <input type="text" name="writer" id="writer"></div>
		<div>첨부 : <input type="file" onchange="addFile(this);" multiple />
	    	<div class="file-list"></div>
	    </div>
		<button type="button" onclick="board_reg()">ajax로 등록</button>
		
	</form>
</div>
<script>
	// eunjch:다중 첨부시 추가 삭제 검사 
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
	function board_reg(){
		//var title = $("#title").val();
		//var contents = $("#contents").val();
		//var writer = $("#writer").val();
		
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
			url : "/board/add.do",
			type : "post",	
			enctype: 'multipart/form-data',
			dataType: 'json',
			data : JSON.stringify(formData),
			success : function(result){
				if(result == "success"){
					alert("등록되었습니다.");
				//	window.location = "/board/list.do";
				}
			},
			error : function(){
				
			}
		});
	}
</script>
