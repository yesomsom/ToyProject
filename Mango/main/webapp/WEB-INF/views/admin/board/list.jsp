<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<div class="container">
	<div class="row col-md-10 custyle margin-left-1">
		<a href="#" class="btn btn-primary btn-xs pull-right margin-top-1" onclick="add_page()"><b>+</b> 등록</a>
		<table class="table table-striped custab">
			<thead>
				<tr>
					<th class="text-center">번호</th>
					<th class="text-center">제목</th>
					<th class="text-center">작성자</th>
					<th class="text-center">작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${boardList}" varStatus="status">
					<tr>
						<td class="text-center">${10 * (pageMaker.cri.pageNum - 1) + status.count }</td>
						<td class="text-center">${board.title }</td>
						<td class="text-center">${board.writer }</td>
						<td class="text-center">${board.regDate }</td>
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
	</div>
</div>
<form id="boardForm" method="get" action="/admin/board/list.do">
	<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
</form>
<script>
	function add_page(){
		window.location = "/admin/board/add.do";
	}
	$(".pageInfo a").on("click", function(e){
		e.preventDefault();
		$("#pageNum").val($(this).attr("href"));
		$("#boardForm").submit();
	})
</script>