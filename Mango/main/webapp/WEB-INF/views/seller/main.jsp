<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사업자페이지</title>
<link rel="stylesheet" href="${path}/css/seller/main.css">
</head>
<body>
	<div class="seller_Container">
		<div class="first_Container">
		
			<!-- 상단 박스 좌측 -->
			
			<div class="left_Container">
				<div class="title">로고, 입점 회사명</div>
				<a href="/page/uploadGoods.do" class="first_Btn">상품 등록하러가기</a>
			</div>
			
			<!-- 상단 박스 우측  -->
			
			<div class="right_Container">
				<div class="title">매출현황</div>
				<a href="/page/salesDetails.do" class="first_Btn">매출내역 상세보기</a>
			</div>

		</div>

		<!--  하단박스 영역-->

		<div class="second_Container">
			<div class="title">상품 등록 내역</div>
			<a href="/page/goodsList.do" class="second_Btn">모두보기</a>
		</div>

	</div>
</body>
</html>