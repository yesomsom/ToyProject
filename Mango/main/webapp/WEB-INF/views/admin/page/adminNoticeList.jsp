<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path }/css/admin/adminBoard.css">
</head>
<body>
	<div class="container">
		<div class="row col-md-15 custyle margin-left-1">			
			<table class="table table-striped custab">
			<h1>공지사항</h1>
				<thead>
					<tr>
						<th class="text-center">글번호</th>
						<th class="text-center">제목</th>
						<th class="text-center">등록일</th>
					</tr>
				</thead>				
				<!-- 공지사항 리스트 -->
				<tbody>
					<c:forEach items="${notice}" var="noticelist">
						<tr>
							<td class="text-center">${noticelist.notiId}</td>
							<td class="text-center">${noticelist.notiSubject}</td>
							<td class="text-center">
								<fmt:formatDate value="${noticelist.notiDate}" pattern="yyyy-MM-dd" />
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
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
	
	<a href="${path }/admin/addNotice.do"><button class="btn">공지사항 등록</button></a>

	<script src="${path }/js/paging.js"></script>
</body>
</html>