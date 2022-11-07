<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html lang="ko" class="default-style layout-navbar-fixed">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

<title></title>

<link rel="stylesheet" href="${path}/css/admin/admin.css">

</head>
<body>
	<div class="page-loader">
		<div class="bg-primary"></div>
	</div>
	<div class="layout-wrapper layout-2">
		<div class="layout-inner">
			<tiles:insertAttribute name="side" />
			<div class="layout-container">
				<tiles:insertAttribute name="navbar" />
				<div class="layout-content">
					<!-- <div class="container-fluid flex-grow-1 container-p-y"> -->
						<!-- content가 빈값일때를 위해 ignore = true -->
						<tiles:insertAttribute name="content" ignore="true" />
					<!-- </div> -->
					<%-- <tiles:insertAttribute name="footer" /> --%>
				</div>
			</div>
		</div>
		<div class="layout-overlay layout-sidenav-toggle"></div>
	</div>
</body>
</html>