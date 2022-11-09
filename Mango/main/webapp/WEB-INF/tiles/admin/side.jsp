<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
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
	
<nav class="navbar navbar-default sidebar" role="navigation">
	<div class="container-fluid">
		<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/admin/main.do">메인<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">관리자 <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="${path }/admin/memberList.do">회원 관리</a></li>
						<li><a href="${path }/admin/sellerList.do">사업주 회원 관리</a></li>
						<li><a href="${path }/admin/goodsManagement.do">상품 관리</a></li>
						<li><a href="${path }/admin/salesManagement.do">매출 내역 조회</a></li> 					
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">게시판 <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="${path }/admin/adminNoticeList.do">공지사항</a></li>
						<li><a href="${path }/admin/addNotice.do">공지사항 등록</a></li>
						<li><a href="${path }/admin/unAnswered.do">미답변 문의 목록</a></li>
						<li><a href="${path }/admin/notApproved.do">미승인 상품 목록</a></li>						 					
					</ul>
				</li>
				
				<%-- <li><a href="${path }/admin/adminNoticeList.do">게시판<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a></li> --%>
				
			</ul>
		</div>
	</div>
</nav>

