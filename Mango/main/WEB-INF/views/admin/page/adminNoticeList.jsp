<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>
	<div class="noti_container">			
		<table>
			<thead>
				<tr>
					<td id="td">글번호</td>
					<td id="td">제목</td>
					<td id="td">등록일</td>
				</tr>
			</thead>
			
			<!-- 공지사항 리스트 -->
			<tbody>
				<c:forEach items="${notice}" var="noticelist">
					<tr>
						<td>${noticelist.notiId}</td>
						<td class="modal_button">${noticelist.notiSubject}</td>
						<td>
							<fmt:formatDate value="${noticelist.notiDate}" pattern="yyyy-MM-dd" />
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- 페이징 -->
	<div class="pageInfo_wrap">
		<div class="pageInfo_area">
			<ul id="pageInfo" class="pageInfo">
				<c:if test="${pageMaker.prev}">
					<li class="pageInfo_btn previous">
						<a	href="${pageMaker.startPage-1}">Previous</a>
					</li>
				</c:if>
				<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
					<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? 'active' : '' }">
						<a	href="${num}">${num}</a>
					</li>
				</c:forEach>
				<c:if test="${pageMaker.next}">
					<li class="pageInfo_btn next">
						<a href="${pageMaker.endPage + 1 }">Next</a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
	<form id="noticeForm" method="get" action="/admin/adminNoticeList.do">
		<input type="hidden" name="pageNum" id="pageNum"	value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	</form>
	
	<button class="btn"><a href="${path }/admin/addNotice.do">공지사항 등록</a></button>

	<script src="${path }/js/paging.js"></script>
</body>
</html>