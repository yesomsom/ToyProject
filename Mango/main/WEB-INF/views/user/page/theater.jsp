<%@page import="mango.mango.model.TheaterVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path }/css/theater.css"></link>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d5cbdd87fa636fd19281386c302b0dd"></script>
<meta charset="utf-8">
<title>영화관 위치</title>
</head>
<body>
	<div class=category_container>

		<!-- 영화관 table -->
		<div>
			<table>
				<thead>
					<tr>
						<th class="th_header">영화관</th>
					</tr>

				</thead>
				<tbody>
					<c:forEach var="the" items="${TheaterList}">
						<tr>
							<td class="poinm" data-code="${the.mcateCd }">${the.poiNm }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- sido table -->
		<div>
			<table>
				<thead>
					<tr>
						<th class="th_header">특별시/도</th>
					</tr>
				</thead>
				<tbody class="sido_table">
				</tbody>
			</table>
		</div>
		<div>
			<!-- sgg table -->
			<table>
				<thead>
					<tr>
						<th class="th_header">시/군/구</th>
					</tr>
				</thead>
				<tbody class="sgg_table">
				</tbody>
			</table>
		</div>
		<!-- bra table -->
		<div>
			<table>
				<thead>
					<tr>
						<th class="th_header">지점명</th>
					</tr>
				</thead>
				<tbody class="bra_table">
				</tbody>
			</table>
		</div>

	</div>
	<div id="map"></div>

	<!-- gps 권한js -->
	<script type="text/javascript" src="${path }/js/gpsmap.js"></script>

	<!-- 카테고리 js -->
	<script type="text/javascript" src="${path }/js/theater.js"></script>

</body>
</html>