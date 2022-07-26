<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="css/main.css">
<script src="js/main.js"></script>
<script src="js/main_slider.js"></script>
<title>main.jsp</title>
</head>
<body>
	<%--header--%>
	<jsp:include page="header.jsp" flush="false"/>
	
	<%--top slider--%>
	<section class="main_slider" width="100%" height="20%">
		<div id="slide" class="img-box" val="1" max="3">
	        <img id="slider_img1" src="img/rose_bouquet1_1920.jpg" width="100%" alt="">
	        <img id="slider_img2" src="img/rose_bouquet2_1920.jpg" width="100%" alt="">
	        <img id="slider_img3" src="img/tulip_1920.jpg" width="100%" alt="">
	        <img id="slider_img1" src="img/rose_bouquet1_1920.jpg" width="100%" alt="">
    	</div>
	</section>
	
	<%--today's pick--%>
	<section class="work-section" id="work">
		<header class="section-header clearfix">
			<div class="inner">
			<h2>??</h2>
				<ul class="tabs-nav">
					<li><a href="#work01">상단1</a></li>
					<li><a href="#work02">상단2</a></li>
					<li><a href="#work03">상단3</a></li>
					<li><a href="#work04">상단4</a></li>					
				</ul>
			</div>
		</header>
		
		<div class="section-body">
			<section class="tabs-panel" id="work01">
				<div class="image-wrapper">
					<img src="img/travel1.png" alt="여행이미지1" width="1600" height="400">
				</div>
				<div class="content">
					<div class="inner">
						<h3 class="title">내부 제목1</h3>
						<p class="description">어쩌고저쩌고1</p>
					</div>
				</div>
			</section>
			<section class="tabs-panel" id="work02">
				<div class="image-wrapper">
					<img src="img/travel1.png" alt="여행이미지2" width="1600" height="400">
				</div>
				<div class="content">
					<div class="inner">
						<h3 class="title">내부 제목2</h3>
						<p class="description">어쩌고저쩌고2</p>
					</div>
				</div>
			</section>
			<section class="tabs-panel" id="work03">
				<div class="image-wrapper">
					<img src="img/travel1.png" alt="여행이미지3" width="1600" height="400">
				</div>
				<div class="content">
					<div class="inner">
						<h3 class="title">내부 제목3</h3>
						<p class="description">어쩌고저쩌고3</p>
					</div>
				</div>
			</section>
			<section class="tabs-panel" id="work04">
				<div class="image-wrapper">
					<img src="img/travel1.png" alt="여행이미지4" width="1600" height="400">
				</div>
				<div class="content">
					<div class="inner">
						<h3 class="title">내부 제목4</h3>
						<p class="description">어쩌고저쩌고4</p>
					</div>
				</div>
			</section>
		</div>
		
	</section>
</body>
</html>