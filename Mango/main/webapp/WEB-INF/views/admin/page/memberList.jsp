<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<c:url var="getMemberListURL" value="/admin/memberList.do"></c:url>
</head>
<body>
	<div class="container">
	   <div class="row col-md-15 custyle margin-left-1">
	      <table class="table table-striped custab">
			 <h1>회원 목록</h1>
	         <thead>
	            <tr>
	               <th class="text-center">아이디</th>
	               <th class="text-center">이름</th>
	               <th class="text-center">전화번호</th>
	               <th class="text-center">이메일</th>
	               <th class="text-center">주소</th>
	               <th class="text-center">가입일</th>
	               <th class="text-center">탈퇴여부</th>
	               <th class="text-center">탈퇴일</th>
	            </tr>
	         </thead>
	         <tbody>
	         <c:forEach var="memberList" items="${memberList }">
	               <tr>
	                  <td class="text-center">${memberList.id }</td>
	                  <td class="text-center">${memberList.name }</td>
	                  <td class="text-center">${memberList.phone }</td>
	                  <td class="text-center">${memberList.email }</td>
	                  <td class="text-center">${memberList.address }</td>
	                  <td class="text-center">${memberList.registerDate }</td>
	                  <td class="text-center">${memberList.unregisterYn }</td>
	                  <td class="text-center">${memberList.unRegisterDate }</td>
	               </tr>
	         </c:forEach>
	         </tbody>
	      </table>
	      <div class="center">
	      <select name="searchType" id="searchType">
	         <option value="id">아이디</option>
	         <option value="name">이름</option>
	         <option value="phone">전화번호</option>
	      </select>
	      <input type="text" name="keyword" id="keyword">
	      <button class="btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
	   </div>
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
	<form id="memListForm" method="get" action="/admin/adminNoticeList.do">
		<input type="hidden" name="pageNum" id="pageNum"	value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	</form>
	
<script src="${path }/js/paging.js"></script>
<script>
	$(document).on('click', '#btnSearch', function(e){
	    e.preventDefault();
	    var url= "${getMemberListURL}";
	    url = url + "?searchType=" + $('#searchType').val();
	    url = url + "&keyword=" + $('#keyword').val();
	    location.href = url;
	    console.log(url);
	 })
 </script>

</body>
</html>