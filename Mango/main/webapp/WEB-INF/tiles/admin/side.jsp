<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>

<nav class="navbar navbar-default sidebar" role="navigation">
	<div class="container-fluid">
		<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/admin/main.do">대시보드<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">관리자 <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#">Crear</a></li>
						<li><a href="#">Modificar</a></li>
						<li><a href="#">Reportar</a></li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">Informes</a></li>
					</ul>
				</li>
				<li><a href="/admin/board/list.do">게시판<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a></li>
				<li><a href="#">관리<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tags"></span></a></li>
			</ul>
		</div>
	</div>
</nav>

