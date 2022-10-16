<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사업자페이지</title>
<style>
button {
	cursor: pointer;
}

.seller_Container {
	background-color: rgba(237, 229, 111, 0.3);
	border: 0;
	border-radius: 30px;
	position: absolute;
	top: 145px;
	left: 200px;
	width: 1690px;
	position: absolute;
	top: 145px;
	left: 200px;
	width: 1690px;
	height: 765px;
	border: 0;
}

.first_Container {
	display: flex;
	height: 440px;
}

.left_Container {
	width: 810px;
	border: 0;
	border-radius: 30px;
	background-color: rgba(199, 191, 82, 0.3);
	padding: 20px;
	margin: 20px;
}

.right_Container {
	width: 810px;
	border: 0;
	border-radius: 30px;
	background-color: rgba(199, 191, 82, 0.3);
	padding: 20px;
	margin: 20px;
}

.second_Container {
	height: 266px;
    border: 0;
    border-radius: 30px;
    background-color: rgba(199, 191, 82, 0.3);
    padding: 20px;
    margin: 0 20px 20px 20px;
}

.first_Btn {
	position: relative;
	top: 320px;
	left: 653px;
}

.second_Btn {
	position: relative;
	top: 203px;
	left: 1542px;
}

.seller_Container button {
	border: 0;
}

.title {
	position: relative;
	top: 30px;
	left: 30px;
	font-size: 30px;
}
</style>
</head>
<body>
	<div class="seller_Container">
		<div class="first_Container">

			<div class="left_Container">
				<div class="title">로고, 입점 회사명</div>
				<button class="first_Btn">상품 등록하러가기</button>
			</div>

			<div class="right_Container">
				<div class="title">매출현황</div>
				<button class="first_Btn">매출내역 상세보기</button>
			</div>

		</div>

		<div class="second_Container">
			<div class="title">상품 등록 내역</div>
			<button class="second_Btn">모두보기</button>
		</div>

	</div>
</body>
</html>