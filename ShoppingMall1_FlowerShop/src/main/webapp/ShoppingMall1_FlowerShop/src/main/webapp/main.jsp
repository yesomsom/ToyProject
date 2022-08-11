<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="css/main.css">
<script src="js/main_slider.js"></script>
<style>
	*{
	margin:0;
	padding:0;
	box-sizing: border-box;
}
<link rel="stylesheet" href="css/main.css">
</style>
<title>main.jsp</title>
</head>
<body>
	<%--header--%>
	<jsp:include page="header.jsp" flush="true"/>
	
	<%--top slider--%>
	<jsp:include page="main_slider.jsp" flush="true"/>
	<br><br><br><br>
	
	<%--Best item--%>
	<jsp:include page="best_product_slider.jsp" flush="true"/>
	<br><br>
	
	<%--New Arrival--%>
	<jsp:include page="new_arrival_scroll.jsp" flush="true"/>
	<br><br>
	
</body>
</html>