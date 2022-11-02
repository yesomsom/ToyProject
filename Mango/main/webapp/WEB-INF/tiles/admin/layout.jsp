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

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://unpkg.com/ionicons@4.4.6/dist/css/ionicons.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<%-- <link rel="stylesheet" href="${path}/css}/css/bootstrap-material.css">
	<script src="${path}/js/jquery-3.3.1.min.js"></script> --%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${path}/css/css/admin.css">

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
					<div class="container-fluid flex-grow-1 container-p-y">
						<!-- content가 빈값일때를 위해 ignore = true -->
						<tiles:insertAttribute name="content" ignore="true" />
					</div>
					<%-- <tiles:insertAttribute name="footer" /> --%>
				</div>
			</div>
		</div>
		<div class="layout-overlay layout-sidenav-toggle"></div>
	</div>
</body>
</html>