<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mango.mango.model.MemberVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="header-nav-wrapper">
		<div class="header-inner">

			<%
			if (login != null) {
			%>
			<div class="inner-button">
				<button><%=login.getName()%>님 환영합니다
				</button>
			</div>
			<div class="inner-button">
				<a href="/page/myPage.do"><button>마이페이지</button></a>
			</div>
			<div class="inner-button">
				<a href="/page/logout.do"><button>로그아웃</button></a>
			</div>
			<%
			} else {
			%>
			<div class="inner-button">
				<a href="/page/login.do"><button>로그인</button></a>
			</div>
			<div class="inner-button">
				<a href="/page/register.do"><button>회원가입</button></a>
			</div>
			<%
			}
			%>
		</div>
		<nav class="nav-wrapper">
			<div class="logo-wrapper">
				<a href="/"><img class="mangoLogo"
					src="${path }/images/mangoLogo.png"></a>
			</div>
			<div class="nav-content">
				<div class="movieLogo-wrapper">
					<img class="mangoMovie" src="${path }/images/movie_icon2.png">
				</div>
				<div class="nav-inner">
					<div class="inner-button">
						<button>
							<a href="/">영화</a>
						</button>
					</div>
					<div class="inner-button">
						<button>
							<a href="/page/reserve.do">예매</a>
						</button>
					</div>
					<div class="inner-button">
						<button>
							<a href="/page/theater.do">극장</a>
						</button>
					</div>
					<div class="inner-button">
						<button>
							<a href="/page/goods.do">상품</a>
						</button>
					</div>
					<div class="inner-button">
						<button>
							<a href="/page/cart.do">장바구니</a>
						</button>
					</div>
					<div class="inner-button">
						<button>
							<a href="/page/serviceCenter.do">고객센터</a>
						</button>
					</div>
					<div class="search-wrapper">
						<input>
						<button class="searchButton">검색</button>
					</div>
				</div>
			</div>
			<div></div>
			<div></div>
		</nav>


	</div>
</body>
</html>