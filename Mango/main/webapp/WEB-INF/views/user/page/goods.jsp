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
				<li id="allCate"><a href="#">전체</a></li>
				<li id="Cate"><a href="#">인형</a></li>
				<li id="Cate"><a href="#">피규어</a></li>
				<li id="Cate"><a href="#">키링</a></li>
				<li id="Cate"><a href="#">기타</a></li>
			</ul>
		</div>
		<!-- 상품 리스트 -->
		<div class="Goods_Contents">
			<ul>
				<li>
					<ul class="Goods_list">
						<c:forEach var="goods" items="${goodsList}">
							<li><a href="goodsDetail.do?goodsId=${goods.goodsId }">
									<img src="${goods.goodsImgPath }" width="220px" height="220px">
									<div>${goods.goodsId}</div>
									<div>${goods.goodsName}</div>
									<div>${goods.goodsDetail}</div> 
							</a></li>
						</c:forEach>
					</ul>
				</li>
			</ul>
		</div>
		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
					<c:if test="${pageMaker.prev}">
						<li class="pageInfo_btn previous"><a
							href="${pageMaker.startPage-1}">Previous</a></li>
					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a
							href="${num}">${num}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next}">
						<li class="pageInfo_btn next"><a
							href="${pageMaker.endPage + 1 }">Next</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<form id="goodsForm" method="get" action="/page/goods.do">
			<input type="hidden" name="pageNumCri" id="pageNum"
				value="${pageMaker.cri.pageNum}"> <input type="hidden"
				name="amount" value="${pageMaker.cri.amount }">
		</form>
	</div>
	
	<script>
		$(".pageInfo a").on("click", function(e) {
			e.preventDefault();
			$("#pageNum").val($(this).attr("href"));
			$("#goodsForm").submit();
		})
	</script>

</body>
</html>