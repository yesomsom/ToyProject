<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/goods.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="utf-8">
<title>상품페이지</title>
</head>

<body>
	<!-- 상품판매페이지 -->
	<div class="Goods_Container">
		<!-- 카테고리 사이드바 -->
		<div class="Category">
			<ul class="Cateul">
				<li id="allCate" class="selectCat" data-goods="전체"><a href="#">전체</a></li>
				<li id="Cate" class="selectCat" data-goods="인형"><a href="#">인형</a></li>
				<li id="Cate" class="selectCat" data-goods="피규어"><a href="#">피규어</a></li>
				<li id="Cate" class="selectCat" data-goods="키링"><a href="#">키링</a></li>
				<li id="Cate" class="selectCat" data-goods="기타"><a href="#">기타</a></li>
			</ul>
		</div>
		<!-- 상품 리스트 -->
		<div class="Goods_Contents">
			<ul>
				<li>
					<ul class="Goods_list"></ul>
				</li>
			</ul>
		</div>

		<!-- 페이징 -->
		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
					<c:if test="${pageMaker.prev}">
						<li class="pageInfo_btn previous">
							<a href="${pageMaker.startPage-1}">Previous</a>
						</li>
					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }">
							<a href="${num}">${num}</a>
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
		
		<form id="goodsForm" method="get" action="/page/goods.do">
			<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" id="amount" value="${pageMaker.cri.amount }">
		</form>		
	</div>
	
	<script src="${path }/js/goods.js"></script>
	<script src="${path }/js/paging.js"></script>
</body>
</html>