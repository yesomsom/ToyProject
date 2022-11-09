<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <%
   String type = (String) request.getAttribute("type");
   Boolean isSuccess = (Boolean) request.getAttribute("isSuccess");
   if (isSuccess == null) {
      isSuccess = false;
   }
   %>

<!-- 회원가입 -->
   <%
   if (type.equals("register")) {
      if (isSuccess) {
   %>
   <script>
      alert("회원가입이 정상적으로 완료되었습니다.\n로그인 페이지로 이동합니다.");
      location.href = "/page/login.do"
   </script>
   <%
   } else {
   %>
   <script>
      alert("회원가입에 실패하였습니다");
      location.href = "/page/register.do"
   </script>
   <%
   }
   }
   %>
   <%
   if (type.equals("login")) {
      if (isSuccess) {
         String name = (String) request.getAttribute("name");
         int auth = (int) request.getAttribute("auth");
         if (auth == 3) {
   %>
   <!-- 일반 회원 로그인 -->
        	   <script>
        	      alert("<%=name%>" + "님 환영합니다");
        	      history.go(-2);        	      
        	   </script>  
   <%      	          	 
         } else if (auth == 2) {
   %>
   <!-- 사업자 회원 로그인 -->
        	   <script>
        	      alert("<%=name%>" + "님 환영합니다");
        	      location.href = "/seller/main.do"
        	   </script>       
   <%
         } else {
	%>
	<!-- 관리자 로그인 -->
		   		<script>
			      alert("<%=name%>" + "님 환영합니다");
			      location.href = "/admin/main.do"
			   </script>	
	<%        	 
         }
   %>

   <%
   } else {
   %>
   <script>
      alert("아이디, 비밀번호가 틀렸습니다. 다시 로그인해주세요.");
      location.href = "/page/login.do"
   </script>
   <%
   }
   }
   %>
   
    <%
   if (type.equals("goodsDetail")) {
      if (!isSuccess) {
   %>
   <script>
      alert("로그인이 필요합니다. 로그인해주세요.");
      location.href = "/page/login.do"
   </script>
   <%
   }
   }
   %>
   
    <%
   if (type.equals("adminLogin")) {
      if (!isSuccess) {
   %>
   <script>
      alert("로그인이 필요합니다. 로그인해주세요.");
      location.href = "/page/login.do"
   </script>
   <%
   }
   }
   %>
   
    <%
   if (type.equals("movieReserve")) {
      if (!isSuccess) {
   %>
   <script>
      alert("로그인이 필요합니다. 로그인해주세요.");
      location.href = "/page/login.do"
   </script>
   <%
   }
   }
   %>
   
   <%
   if (type.equals("cart")) {
      if (!isSuccess) {
   %>
   <script>
      alert("로그인이 필요합니다. 로그인해주세요.");
      location.href = "/page/login.do"
   </script>
   <%
   }
   }
   %>
   
   <%
   if (type.equals("orders")) {
      if (!isSuccess) {
   %>
   <script>
      alert("로그인이 필요합니다. 로그인해주세요.");
      location.href = "/page/login.do"
   </script>
   <%
   }
   }
   %>
   
   <%
   if (type.equals("myOrdersPage")) {
      if (!isSuccess) {
   %>
   <script>
      alert("로그인이 필요합니다. 로그인해주세요.");
      location.href = "/page/login.do"
   </script>
   <%
   }
   }
   %>
   
   <%
   if (type.equals("uploadGoods")) {
      if (isSuccess) {
   %>
   <script>
      alert("상품 등록이 완료되었습니다\n상품 리스트로 이동합니다.");
      location.href = "/page/goodsList.do"
   </script>
   <%
   } else {
   %>
   <script>
      alert("상품 등록이 실패하였습니다");
      location.href = "/page/uploadGoods.do"
   </script>
   <%
   }
   }
   %>

   <%
   if (type.equals("reserve")) {
      if (isSuccess) {
   %>
   <script>
      alert("결제및 예약이 완료되었습니다");
      location.href = "/"
   </script>
   <%
   } else {
   %>
   <script>
      alert("결제및 예약에 실패하였습니다");
      location.href = "/"
   </script>
   <%
   }
   }
   %>
</body>
</html>