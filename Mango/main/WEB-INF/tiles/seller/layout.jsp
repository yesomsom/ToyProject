<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<title></title>
<link rel="stylesheet" href="${path}/css/layout.css">
</head>
<body>
	<tiles:insertAttribute name="side" />
	<tiles:insertAttribute name="navbar" />
	<tiles:insertAttribute name="content" ignore="true" />
	<%-- <tiles:insertAttribute name="footer" /> --%>
</body>
</html>