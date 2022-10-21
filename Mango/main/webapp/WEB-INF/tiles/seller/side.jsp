<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="mango.mango.model.MemberVO" %>
<% MemberVO login = (MemberVO) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString()); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="side_Container">
	<div class=seller_logo>
		<a href="/seller/main.do">
			<img src="<%=login.getLogoImg()%>">
			<span><%=login.getSellerName() %></span>
		</a>
	</div>
    <div><a href="/page/uploadGoods.do">상품 등록</a></div>
    <div><a href="/page/goodsList.do">상품 등록 내역</a></div>
    <div><a href="/page/salesDetails.do">매출 내역</a></div>
  </div>
</body>
</html>