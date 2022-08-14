<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="js/main_slider.js"></script>
<style>
	*{
	margin:0;
	padding:0;
	box-sizing: border-box;
	}

	ul li { list-style-type: none; }
	a { color: inherit; text-decoration: none; }
	img { vertical-align: middle; }
	/*color chart
	5D5B6A
	758184
	CFB495
	F5CDAA
	*/
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
	
	<%--Video--%>
	<jsp:include page="intro_video.jsp" flush="true"/>
	<br><br>
	
	<%--Product List--%>
	<jsp:include page="product_list.jsp" flush="true"/>
	<br><br>
	
</body>
</html>