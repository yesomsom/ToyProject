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
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/qaList.css">
</head>
<body>
	<!-- 자주 묻는 질문 리스트 -->
	<div class="Qa_container">
		<div>
			<h1 id="h_div">자주 묻는 질문</h1>
		</div>
		<form method="post" action="/page/qaList.do">
			<div>
				<table>
					<thead>
						<tr>
							<td id="td">글번호</td>
							<td id="td">구분</td>
							<td id="td">제목</td>
							<td id="td">등록일</td>
						</tr>
					</thead>
					<!-- q&a 리스트 -->
					<tbody>
						<c:forEach items="${qaList}" var="qalist">
							<tr style="line-height: 35px; border-bottom: 0.1px solid gray;">
								<td>${qalist.qaId}</td>
								<td>${qalist.qaCat}</td>
								<td class="modal_button">${qalist.qaSubject}</td>
								<td><fmt:formatDate value="${qalist.qaDate}"
										pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- 모달 -->
				<c:forEach items="${qaList}" var="qalist">
					<div class="modal">
						<div class="modal_content">
							<div>
								<b>${qalist.qaSubject}</b>
							</div>
							<br>
							<div>${qalist.qaContent}</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</form>

		<!-- 페이징 -->
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
		<form id="qaForm" method="get" action="/page/qaList.do">
			<input type="hidden" name="pageNumCri" id="pageNum"
				value="${pageMaker.cri.pageNum}"> <input type="hidden"
				name="amount" value="${pageMaker.cri.amount }">
		</form>
	</div>

	<script>
		$(".pageInfo a").on("click", function(e) {
			e.preventDefault();
			$("#pageNum").val($(this).attr("href"));
			$("#qaForm").submit();
		})
	</script>

	<!-- 모달 스크립트 -->
	<script>
		// Modal을 가져온다
		var modals = document.getElementsByClassName("modal");
		// Modal을 띄우는 클래스 이름을 가져온다.
		var btns = document.getElementsByClassName("modal_button");
		// Modal을 닫는 close 클래스를 가져온다.
		var cont = document.getElementsByClassName("modal_content");
		var funcs = [];

		// Modal을 띄우고 닫는 클릭 이벤트를 정의한 함수
		function Modal(num) {
			return function() {
				// 해당 클래스의 내용을 클릭하면 Modal을 띄운다.
				btns[num].onclick = function() {
					modals[num].style.display = "block";
					console.log(num);
				};

				// 닫기 버튼 클릭하면 Modal이 닫힌다.
				cont[num].onclick = function() {
					modals[num].style.display = "none";
				};
			};
		}
		// 원하는 Modal 수만큼 Modal 함수를 호출해서 funcs 함수에 정의한다.
		for (var i = 0; i < btns.length; i++) {
			funcs[i] = Modal(i);
		}
		// 원하는 Modal 수만큼 funcs 함수를 호출한다.
		for (var j = 0; j < btns.length; j++) {
			funcs[j]();
		}
		// Modal 영역 밖을 클릭하면 Modal을 닫는다.
		window.onclick = function(event) {
			if (event.target.className == "modal") {
				event.target.style.display = "none";
			}
		};
	</script>
</body>
</html>