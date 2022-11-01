<%@page import="mango.mango.model.MemberVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString());
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>나의 문의 내역</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/myAskList.css">
</head>

<body>
	<!-- 사이드바 -->
	<aside class="sideBar">
		<div class="side_head">
			<a href="${path}/page/myPage.do">MY HOME</a>
		</div>
		<div class="side_body">
			<div>
				<a href="${path}/page/myReserve.do">예매 목록</a>
			</div>
			<div>
				<a href="${path}/page/myOrdersPage.do">구매 목록</a>
			</div>
			<div>
				<a href="${path}/page/myAskList.do">문의 목록</a>
			</div>
			<div>
				<a href="${path}/page/memberModify.do">회원정보수정</a>
			</div>
		</div>
	</aside>

	<!-- 나의문의내역 리스트 -->
	<div class="MyAsk_container">
		<div id="h_div">
			<h1>문의 내역</h1>
		</div>

		<form method="post" action="/page/myAskList.do">
			<!-- 답변현황 필터 -->
			<div class="filter">
				<span class="selBox"> <select>
						<option>전체</option>
						<option value="1">답변</option>
						<option value="0">미답변</option>
				</select>
				</span>

				<!-- 검색 -->
				<span class="search">
					<input type="text" placeholder="검색어를 입력하세요">
					<button>검색</button>
				</span>
			</div>

			<!-- 1:1문의 리스트 -->
			<table>
				<thead>
					<tr>
						<td class="td">번호</td>
						<td class="td">유형</td>
						<td class="td">제목</td>
						<td class="td">답변상태</td>
						<td class="td">등록일</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${askList}" var="asklist">
						<tr class="modal_button">
							<td class="td2">${asklist.askId}</td>
							<td class="td2">${asklist.askCat}</td>
							<td class="td2">${asklist.askSubject}</td>
							<td class="td2">${asklist.askState}</td>
							<td class="td2">
								<fmt:formatDate value="${asklist.askDate}" pattern="yyyy-MM-dd" />
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<!-- 모달 -->
			<c:forEach items="${askList}" var="asklist">
				<div class="modal">
					<div class="modal_content">
						<div>
							<b>${asklist.askSubject}</b>
						</div>
						<br>
						<div>${asklist.askContent}</div>
					</div>
				</div>
			</c:forEach>
		</form>
	</div>
	

	<!-- 페이징 -->
	<div class="pageInfo_wrap">
		<div class="pageInfo_area">
			<ul id="pageInfo" class="pageInfo">
				<c:if test="${pageMaker.prev}">
					<li class="pageInfo_btn previous"><a
						href="${pageMaker.startPage-1}">Previous</a></li>
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

	<form id="myAskList" method="get" action="/page/myAskList.do">
		<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	</form>
	
	<script src="${path }/js/paging.js"></script>
	<script src="${path }/js/modalBtn.js"></script>
</body>
</html>