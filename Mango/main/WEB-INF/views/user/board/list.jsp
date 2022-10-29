<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="board" items="${boardList}" varStatus="status">
			<tr>
				<td>${10 * (pageMaker.cri.pageNum - 1) + status.count }</td>
				<td>${board.title }</td>
				<td>${board.writer }</td>
				<td>${board.regDate }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="pageInfo_wrap">
	<div class="pageInfo_area">
		<ul id="pageInfo" class="pageInfo">
			<c:if test="${pageMaker.prev}">
				<li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
			</c:if>
			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
			</c:if>  
		</ul>
	</div>
</div>
<form id="boardForm" method="get" action="/board/list.do">
	<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
</form>
<button type="button" onclick="add_page()">등록</button>
<script>
	function add_page(){
		window.location = "/board/add.do";
	}
	$(".pageInfo a").on("click", function(e){
		e.preventDefault();
		$("#pageNum").val($(this).attr("href"));
		$("#boardForm").submit();
	})
</script>