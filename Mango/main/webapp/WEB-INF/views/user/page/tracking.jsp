<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="mango.mango.model.OrdersPayVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<% String num = request.getParameter("num"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.n_dis{
			display: none;
		}
		#searchBtn{
			margin-top:5px;
		}
	</style>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<form action="http://info.sweettracker.co.kr/tracking/5" method="post" id="searchForm">
		<div class="form-group">
			<label for="t_key" class="n_dis">API key</label>
			<input type="hidden" class="form-control" id="t_key" name="t_key" value="TgADbzGXWJpXrj4FQ53UVg">
		</div>
		<div class="form-group">
			<label for="t_code" class="n_dis">택배사 코드</label>
			<input type="hidden" class="form-control" name="t_code" id="t_code" value="01">
		</div>
		<div class="form-group">
			<label for="t_invoice" class="n_dis">운송장 번호</label>
			<input type="hidden" class="form-control" name="t_invoice" id="t_invoice" value="<%=num %>">
		</div>
		<button class="btn btn-default" class="n_dis" id="searchBtn"></button>
	</form>
	
	<script src="${path}/js/tracking.js"></script>
	
</body>
</html>