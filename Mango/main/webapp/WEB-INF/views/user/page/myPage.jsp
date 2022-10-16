<%@page import="java.util.List"%>
<%@page import="mango.mango.model.ReserveVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<%
List<ReserveVO> list = (List<ReserveVO>) request.getAttribute("reserveList");
%>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/myPage.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
</head>
<body>
	<div>
		<div class="my-page-container">
			<div class="my-page-wrapper">
				<div class="my-page-header">예약한 영화 목록</div>
				<div class="movie-reserve-list">
					<%
					if (list == null) {
					%>
					<div>예약한 영화가 없습니다</div>
					<%
					} else {
					for (int i = 0; i < list.size(); i++) {
						ReserveVO reserveVO = list.get(i);
					%>
					<div class="movie-reserve">
						<div class="movie-reserve-title"><%=reserveVO.getTitle()%></div>
						<div class="movie-reserve-theater-wrapper">
							<div><%=reserveVO.getSelectedTheater()%></div>
							&nbsp;/&nbsp;
							<div class="ticket-numeber"><%=reserveVO.getTicketNumber()%>장
							</div>
						</div>
						<div class="movie-reserve-seats"><%=reserveVO.getSelectedSeat()%></div>
						<div class="movie-reserve-date-wrapper">
							<div class="movie-reserve-date"><%=reserveVO.getMovieDate()%></div>
							<div class="movie-reserve-runningTime"><%=reserveVO.getRunningTime()%></div>
						</div>
						<div class="movie"></div>

						<div class="pay-information-wrapper">
							<div class="pay-information-date-wrapper">
								<div class="pay-information-date-title">결제한 날</div>
								<div class="pay-information-date"><%=reserveVO.getPayVO().getPayDate()%></div>
							</div>

							<div class="pay-information-money-wrapper">
								<div class="pay-information-money-title">결제한 비용</div>
								<div class="pay-information-money"><%=reserveVO.getPayVO().getPayMoney()%>원
								</div>
							</div>

							<div class="barcode-wrapper">
								<div>mango</div>
								<img src="${path }/images/barcode.png">
							</div>

						</div>
					</div>
					<%
					}
					%>

					<%
					}
					%>

				</div>

			</div>
		</div>
	</div>
</body>

</html>