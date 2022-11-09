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
				<h1>미답변 문의목록</h1>
				<thead>
					<tr>
						<th class="text-center">회원</th>
						<th class="text-center">성함</th>
						<th class="text-center">연락처</th>
						<th class="text-center">이메일</th>
						<th class="text-center">질문</th>
						<th class="text-center">분류</th>
						<th class="text-center">제목</th>
						<th class="text-center">내용</th>
						<th class="text-center">답변 상태</th>
						<th class="text-center">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="unAnswer" items="${unAnsweredList }">
						<tr>
							<td class="text-center" id="id">${unAnswer.id }</td>
							<td class="text-center" id="aName">${unAnswer.askName }</td>
							<td class="text-center" id="aPhone">${unAnswer.askPhone }</td>
							<td class="text-center" id="aEmail">${unAnswer.askEmail }</td>
							<td class="text-center">${unAnswer.askCat }${unAnswer.askCatDetail}</td>
							<c:if test="${unAnswer.askType ne '기타문의'}">
								<td class="text-center">${unAnswer.askType }${unAnswer.askTypeDetail }점</td>
							</c:if>
							<c:if test="${unAnswer.askType eq '기타문의'}">
								<td class="text-center">${unAnswer.askType }</td>
							</c:if>
							<td class="text-center" id="aTitle">${unAnswer.askSubject }</td>
							<td class="text-center" id="aContent">${unAnswer.askContent }</td>
							<c:if test="${unAnswer.askState eq '미답변'}">
								<td class="text-center">${unAnswer.askState }/
									<button type="button" class="relatedBtn" style="border: 0; color: blue; background: none;">답변하기</button>
								</td>
							</c:if>
							<td class="text-center">${unAnswer.askDate }
								<input id="askId" type="hidden" value="${unAnswer.askId }">
							</td>						
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="relatedContainer" id="relatedContainer">
			<div class="upContainer">
				<div>
					<div id="q-info">
						<h2>회원정보</h2>
					</div>
					<div id="q-infos">
						<div>
							회원 : <span id="id"></span>
						</div>
						<div>
							성함 : <span id="askName"></span>
						</div>
						<div>
							연락처 : <span id="askPhone"></span>
						</div>
						<div>
							이메일 : <span id="askEmail"></span>
						</div>
					</div>
				</div>
				<div>					
					<div id="askTitle"></div>
					<div id="askContent"></div>
				</div>
			</div>

			<div id="relatedContent">
				<div>
					<h2>답변하기</h2>
				</div>
				<form action="/admin/unAnswered/update.do" id="answeredForm">
					<div>
						<input id=relatedTitle name="relatedTitle" type="text" placeholder="제목" />
					</div>
					<textarea rows="" cols="" id="relateCon" name="relatedContent"></textarea>					
					<input type="hidden" id="aId" name="askId">
					<button type="button" id="sendRelatedBtn">발송하기</button>
				</form>
			</div>
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
	<form id="unAnsweredForm" method="get" action="/admin/unAnswered.do">
	   <input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
	   <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	</form>
	
	<script src="${path}/js/unAnswered.js"></script>
	<script src="${path }/js/paging.js"></script>
</body>
</html>