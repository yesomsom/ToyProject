<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsList</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/seller/goodsList.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="goodsList_wrap">

<!-- 상단 제목 -->	
		<div class="goodsList_wrap_title">상품 등록 내역</div>

<!-- 등록된 상품 리스트 테이블 -->
	    <table class="goods_table">
	      <thead>
	        <tr class=" table_title_wrap">
	          <td class="table_title">상품 번호</td>
	          <td class="table_title">카테고리</td>
	          <td class="table_title">상품 이름</td>
	          <td class="table_title">판매 상태</td>
	          <td class="table_title">상품 상세내용</td>
	          <td class="table_title">가격</td>
	          <td class="table_title">배송비</td>
	          <td class="table_title">할인율(%)</td>
	          <td class="table_title">등록일</td>
	          <td class="table_title">수정하기</td>
	          <td class="table_title">삭제하기</td>
	        </tr>
	      </thead>
	      <tbody>
	        <c:forEach items="${goodsList}" var="goods">
	          <tr>
	            <td class="table_content txt_center">${goods.goodsId}</td>
				<td class="table_content">${goods.goodsCategory}</td>
	            <td class="table_content"><input type="text" value="${goods.goodsName}"></td>
	            <td class="table_content txt_center">${goods.goodsState}</td>
	            <td class="table_content"><input type="text" value="${goods.goodsDetail}"></td>
	            <td class="table_content"><input class="input_num" type="text" value="${goods.goodsPrice}"></td>
	            <td class="table_content"><input class="input_num" type="text" value="${goods.deliveryPrice}"></td>
	            <td class="table_content"><input class="input_num" type="text" value="${goods.goodsDiscount}"></td>
	            <td class="table_content txt_center">${goods.regDate}</td>
	            <td class="table_content txt_center"><button class="btn modify_btn">수정</button></td>
	            <td class="table_content txt_center"><button class="btn delete_btn" data-goodsid="${goods.goodsId}">삭제</button></td>
	          </tr>
	        </c:forEach>
	      </tbody>
	    </table>
<!-- 페이징  -->	
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
		<form id="goodsListForm" method="get" action="/page/goodsList.do">
			<input type="hidden" name="pageNumCri" id="pageNum"
				value="${pageMaker.cri.pageNum}"> <input type="hidden"
				name="amount" value="${pageMaker.cri.amount }">
		</form>	    

<!-- 수정 form -->
	   <form action="/page/goodsList/update.do" method="post" class="goods_update_form">
	      <input type="hidden" name="cartId" class="update_cartId"> 
	      <input type="hidden" name="goodsQty" class="update_goodsQty">
	   </form>
	    
<!-- 삭제 form -->
	   <form action="/page/goodsList/delete.do" method="post"
	      class="goods_delete_form">
	      <input type="hidden" name="goodsId" class="delete_goodsId">
	   </form>
	</div>

	<script src="${path}/js/goodsList.js"></script>
</body>
</html>