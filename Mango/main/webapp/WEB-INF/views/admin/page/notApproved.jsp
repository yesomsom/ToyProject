<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path }/css/admin/adminBoard.css">
</head>
<body>
	<div class="container">
		<div class="row col-md-15 custyle margin-left-1">
			<table class="table table-striped custab">
				<h1>미승인 상품목록</h1>
				<thead>
					<tr>
						<th class="text-center">매장명</th>
						<th class="text-center">사업자아이디</th>
						<th class="text-center">상품명</th>
						<th class="text-center">카테고리</th>
						<th class="text-center">등록일</th>											
						<th class="text-center">상품사진</th>
						<th class="text-center">등록상태</th>
						<th class="text-center">등록</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="app" items="${approvedList }">
						<tr>
							<td class="text-center">${app.sellerName }</td>
							<td class="text-center">${app.id }</td>
							<td class="text-center">${app.goodsName }</td>
							<td class="text-center">${app.goodsCategory }</td>
							<td class="text-center">${app.regDate }</td>	
							<td class="text-center">${app.imageHtml }</td>							
							<td class="text-center">${app.goodsState }</td>							
							<td class="text-center">
								<form action="/admin/notApproved/update.do" id="notApprovedForm">
									<button type="button" id="sendBtn">등록</button>
									<input type="hidden" value="${app.goodsId }" name="goodsId"/>
								</form>
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
	<form id="approvedForm" method="get" action="/admin/notApproved.do">
		<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	</form>
	
	<script src="${path }/js/paging.js"></script>
	<script src="${path }/js/notApproved.js"></script>
	
	</body>
</html>