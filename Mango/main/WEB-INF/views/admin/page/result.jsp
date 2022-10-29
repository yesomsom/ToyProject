<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
<h1>업로드가 완료되었습니다.</h1>
<label>아이디 : </label>
<input type="text" name="id" value="${map.id}" readonly><br>
<label>이름 : </label>
<input type="text" name="name" value="${map.name}" readonly><br>
 
<div class="result-images">
    <c:forEach var="imageFileName" items="${map.fileList}">
        <img src=
        "${path}/download?imageFileName=${imageFileName}">
        <br><br>
    </c:forEach>
</div>
<a href="${path}/form">다시 업로드 하기</a>
</body>
</html>