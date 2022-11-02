<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsList</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/seller/salesList.css">
</head>
<body>
	<div class="salesList_wrap">

		<!-- 상단 제목 -->
		<div class="salesList_wrap_title">판매 내역</div>

		<!-- 등록된 상품 리스트 테이블 -->
		<table class="sales_table">
			<thead>
				<tr class="table_title_wrap">
					<td class="table_title">주문 번호</td>										
					<td class="table_title">고객 아이디</td>					
					<td class="table_title">결제 금액</td>
					<td class="table_title">결제일</td>
					<td class="table_title">수령인</td>
					<td class="table_title">연락처</td>
					<td class="table_title">배송지</td>
					<td class="table_title">배송상태</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ordersPayList}" var="sales"  varStatus="status">
					<tr class="sales_detail">
						<td class="table_content txt_center">${sales.ordersId}</td>
															
						<td class="table_content txt_center">${sales.id}</td>
						<td class="table_content txt_right">${sales.ordersPayMoney}원</td>
						<td class="table_content txt_center" >
							<fmt:formatDate value="${sales.ordersPayDate}" pattern="yyyy-MM-dd" />
							<input class="t_${status.count}" type="hidden" value="t_${status.count}" data-dv="${sales.ordersPayDate}" data-pr="${sales.ordersPayMoney}">
						</td>										
						<td class="table_content txt_center">${sales.receiverName}</td>
						<td class="table_content txt_center">${sales.receiverPhone}</td>												
						<td class="table_content txt_center">${sales.receiverZipno}, ${sales.receiverAddress}</td>						
						<td class="table_content txt_center">
						<form action="/page/update/deliveryState.do" method="get">
						<input type="hidden" name="trackingNumber" value="${sales.trackingNumber}">
						<input type="hidden" name="ordersId" value="${sales.ordersId}">													
							<select name="deliveryState">
				         		<option name="delivery" value="${sales.deliveryState}" hidden selected>${sales.deliveryState}</option>				         		
								<option value="배송 준비중">배송 준비중</option>						
								<option value="배송중">배송중</option>						
								<option value="배송 완료">배송 완료</option>					
							</select>											
							<button>수정</button>
						</form>
						</td>
					</tr>	
				</c:forEach>
			</tbody>
		</table>

		<!-- 페이징  -->
		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
					<c:if test="${pageMaker.prev}">
						<li class="pageInfo_btn previous">
							<a href="${pageMaker.startPage-1}">Previous</a>
						</li>
					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }">
							<a href="${num}">${num}</a>
						</li>
					</c:forEach>
					<c:if test="${pageMaker.next}">
						<li class="pageInfo_btn next">
							<a href="${pageMaker.endPage + 1 }">Next</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
		<form id="ordersListForm" method="get" action="/page/salesDetails.do">
			<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		</form>
	<div id="chart_div" style="width: 900px; height: 500px"></div>
	</div>

	<script src="${path}/js/salesDetails.js"></script>
	   <script src="https://www.gstatic.com/charts/loader.js"></script>
   <script type="text/javascript">
      // 날짜
      var today = new Date();      
      var year = today.getFullYear();
      var month = ('0' + (today.getMonth() + 1)).slice(-2);
      var day = ('0' + today.getDate()).slice(-2);      
      var dateString = year + '-' + month  + '-' + day;

      var date1 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date1);      
      var year1 = today.getFullYear();
      var month1 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day1 = ('0' + today.getDate()).slice(-2);      
      var dateString1 = year1 + "-" + month1 + "-" + day1;

      var date2 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date2);      
      var year2 = today.getFullYear();
      var month2 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day2 = ('0' + today.getDate()).slice(-2);      
      var dateString2 = year2 + "-" + month2 + "-" + day2;
      
      var date3 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date3);      
      var year3 = today.getFullYear();
      var month3 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day3 = ('0' + today.getDate()).slice(-2);      
      var dateString3 = year3 + "-" + month3 + "-" + day3;
      
      var date4 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date4);      
      var year4 = today.getFullYear();
      var month4 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day4 = ('0' + today.getDate()).slice(-2);      
      var dateString4 = year4 + "-" + month4 + "-" + day4;
      
      var date5 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date5);      
      var year5 = today.getFullYear();
      var month5 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day5 = ('0' + today.getDate()).slice(-2);      
      var dateString5 = year5 + "-" + month5 + "-" + day5;
      
      var date6 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date6);      
      var year6 = today.getFullYear();
      var month6 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day6 = ('0' + today.getDate()).slice(-2);      
      var dateString6 = year6 + "-" + month6 + "-" + day6;
      
      // 날짜별 매출 계산
      var salesCount = $(".sales_detail").length;      
      var salesAllPrice = 0;
      var salesAllPrice1 = 0;
      var salesAllPrice2 = 0;
      var salesAllPrice3 = 0;
      var salesAllPrice4 = 0;
      var salesAllPrice5 = 0;
      var salesAllPrice6 = 0;
      
      for(var i=1; i<(salesCount+1); i++) {
         var dateVal = $(".t_"+i).data("dv");
         if(dateVal == dateString) {
            salesAllPrice += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString1) {
            salesAllPrice1 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString2) {
            salesAllPrice2 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString3) {
            salesAllPrice3 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString4) {
            salesAllPrice4 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString5) {
            salesAllPrice5 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString6) {
            salesAllPrice6 += parseInt($(".t_"+i).data("pr"));
         }
      }
      
      // 구글 그래프 API
      google.charts.load('current', {packages: ['corechart', 'bar']});
      google.charts.setOnLoadCallback(drawBasic);
         
      function drawBasic() {      
      var data = new google.visualization.DataTable();      
      data.addColumn('string', '날짜');   
      data.addColumn('number', '금액(원)');
         
      data.addRows([
      
      [dateString6, salesAllPrice6],
      
      [dateString5, salesAllPrice5],
      
      [dateString4, salesAllPrice4],
      
      [dateString3, salesAllPrice3],
      
      [dateString2, salesAllPrice2],
      
      [dateString1, salesAllPrice1],
      
      [dateString, salesAllPrice],
      
      ]);
            
      var options = {      
      title: '매출 현황',      
      hAxis: {      
      title: '날짜',      
      viewWindow: {      
      min: [7, 30, 0],      
      max: [17, 30, 0]      
      }      
      },
      
      vAxis: {      
      title: '금액(원)'      
      }      
      };
             
      var chart = new google.visualization.ColumnChart(      
      document.getElementById('chart_div'));      
      chart.draw(data, options);      
      }
  </script>
</body>
</html>