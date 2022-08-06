<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<style type="text/css">
	/*header-event*/
.event-header {
	width: 100%;
	height: 15%;
	background-color:#5D5B6A;
	text-align: center;
	color: #CFB495;
	font-size:0.7em;
	padding: 10px;
}
.event-header .event-writer {
	text-align: center;
	color: #CFB495;
	font-size:0.7em;
	padding: 10px;
}

/*logo-header*/
.logo-header {
	display: flex;
	text-align: center;
	align-items: center;
}
.menu_bar_png {
	margin:10px;
}
.main-title p {
	color:#5D5B6A;
	font-size:1.1em;
	/*font-family: "Times New Roman", Times, serif;*/
	font-family: cursive;
	transform : rotate(0.04deg);
	justify-content: center;
}

nav ul li {
	display:inline;
}
.item:nth-child(1) { flex-grow: 0.05; }
.item:nth-child(2) { flex-grow: 5; }
.item:nth-child(3) { flex-grow: 0.2; }
</style>
<title>header.jsp</title>
</head>
<body>
	<section class="event-header">
		<div>
			<p>
				<a href="#" class="event-writer">신규회원 최대 60~70% 할인 / 오늘의 장미 구독시 무료배송</a>
			</p>
		</div>	
	</section>
	<section class="logo-header">
		<div class="menu-bar item">
			<img class="menu_bar_png" src="img/menu_bar1.png" width="20px" alt="상단바이미지">
		</div>
		<div class="main-title item">
			<a href="#"><p>오늘,  꽃 한송이</p></a>
		</div>
		<nav class="item">
			<ul>
				<li><a href="#"><img src="img/search_icon1.png" width="22px" alt="search"></a></li>
				<li><a href="#">장</a></li>
				<li><a href="#">찜</a></li>
				<li><a href="#">로</a></li>
			</ul>
		</nav>
		<br><br>	
	</section>
</body>
</html>