<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsList</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/admin/goodsManagement.css">
</head>
<body>
	<div class="container">
	   <div class="row col-md-15 custyle margin-left-1" style="width:1200px;">
	      <table class="table table-striped custab" style="width:1200px;">
	       <h1>상품 등록 내역</h1>
	         <thead>
	            <tr>
	               <th class="text-center">상품 번호</th>
	               <th class="text-center">카테고리</th>
	               <th class="text-center">상품 이름</th>
	               <th class="text-center">판매 상태</th>	               
	               <th class="text-center">상품 상세내용</th>
	               <th class="text-center">가격</th>
	               <th class="text-center">배송비</th>
	               <th class="text-center">등록일</th>
	               <th class="text-center">수정</th>
	               <th class="text-center">삭제</th>
	            </tr>
	         </thead>
	         <tbody>
	         <c:forEach items="${goodsList}" var="goods">
	               <tr>
	               	  <td class="text-center">${goods.goodsId}</td>
	                  <td class="text-center">
	                  	<select name="goodsCategory">
			         		<option value="${goods.goodsCategory}" selected disabled hidden>${goods.goodsCategory}</option>
							<option value="키링">키링</option>
							<option value="인형">인형</option>
							<option value="피규어">피규어</option>
							<option value="기타">기타</option>
						</select>
					  </td>
	                  <td class="text-center"><input class="gName" type="text" value="${goods.goodsName}"></td>
	                  <td class="text-center">
	                  	<select name="goodsState">
				        	<option value="${goods.goodsState}" selected disabled hidden>${goods.goodsState}</option>
				        	<option>승인 대기</option>
				        	<option>승인</option>
				        </select>
	                  </td>	                  
	                  <td class="text-center"><input class="gDetail" type="text" value="${goods.goodsDetail}"></td>
	                  <td class="text-center"><input class="input_num gPrice" type="text" value="${goods.goodsPrice}"><span>원</span></td>
	                  <td class="text-center"><input class="input_num gDePrice" type="text" value="${goods.deliveryPrice}"><span>원</span></td>
	                  <td class="text-center"><fmt:formatDate value="${goods.regDate}" pattern="yyyy-MM-dd" /></td>
	                  <td class="text-center"><button class="modify_btn" data-goodsid="${goods.goodsId}"data-gcat="${goods.goodsCategory}" data-gstate="${goods.goodsState}"><span>수정</span></button></td>
	                  <td class="text-center"><button class="delete_btn" data-goodsid="${goods.goodsId}"><span>삭제</span></button></td>                  
	               </tr>
	         </c:forEach>
	         </tbody>
	      </table>  
	   </div>
	</div>		        
	<!-- 페이징  -->   
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
	
	<form id="goodsManagementForm" method="get" action="goodsManagement.do">
	   <input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
	   <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	</form>       
	
	<!-- 수정 form -->
	<form action="goodsManagement/update.do" method="post" class="goods_update_form">
	   <input type="hidden" name="goodsCategory" class="update_goodsCategory">
	   <input type="hidden" name="goodsState" class="update_goodsState">        
	   <input type="hidden" name="goodsId" class="update_goodsId"> 
	   <input type="hidden" name="goodsName" class="update_goodsName">	   
	   <input type="hidden" name="goodsDetail" class="update_goodsDetail">
	   <input type="hidden" name="goodsPrice" class="update_goodsPrice">
	   <input type="hidden" name="deliveryPrice" class="update_deliveryPrice">		    
	</form>
	      
	<!-- 삭제 form -->
	<form action="goodsManagement/delete.do" method="post" class="goods_delete_form">
		<input type="hidden" name="goodsId" class="delete_goodsId">
	</form>	

	<script src="${path}/js/goodsManagement.js"></script>
	<script src="${path }/js/paging.js"></script>
</body>
</html>