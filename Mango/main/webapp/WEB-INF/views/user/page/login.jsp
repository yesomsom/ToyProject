<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${path}/css/style.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js"
	type="text/javascript"></script>
</head>

<body>
	<div class="wrapper">
		<div class="inner">
			<div class="image-holder">
				<img id="poster" src="" alt="">
			</div>
			<form action="/page/login/insert.do" id="loginForm" method="post">
				<p class="register-title">
					<a href="${path }/main.do"><img src="${path }/images/mangoLogo.png"></a> <span>로그인</span>
				</p>
				<div class="form-wrapper form-wrapper-id">
					<div class="id-wrapper">
						<input id="id" name="id" type="text" placeholder="아이디"
							class="form-control"> <i class="zmdi zmdi-accounts"></i>
					</div>
				</div>

				<div class="form-wrapper">
					<input type="password" name="password" placeholder="비밀번호"
						id="password" class="form-control"> <i
						class="zmdi zmdi-lock"></i>
				</div>

				<div class="sort1">
					<input type="checkbox" id="checkSaveId"> <span>아이디
						저장</span>
				</div>


				<button type="button" class="loginButton">
					<span>로그인 하기</span> <i class="zmdi zmdi-arrow-right"></i>
				</button>
				<button type="button" class="register" style="margin-top: 10px;">
					<span>회원가입 하기</span> <i class="zmdi zmdi-arrow-right"></i>
				</button>

				<button type="button" class="main" style="margin-top: 10px;">
					<span>메인 홈페이지</span> <i class="zmdi zmdi-arrow-right"></i>
				</button>
			</form>

		</div>
	</div>
	
	<script src="${path }/js/login.js"></script>

</body>

</html>