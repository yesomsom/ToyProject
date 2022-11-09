<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
table{
    height: 340px !important;
    position: relative;
    top: -16px;
}
.container{
width:949px;
height:418px;
border-radius: 15px;
margin:0 10px 20px 10px;
}
 .salesContainer{
background-color:lightblue;

}
.noticeContainer{
background-color:lightgrey;

}
.askContainer{
background-color:tomato;

}
.goodsContainer{
background-color:orange;

}
.flexCon{
display:flex;
}
.center{
text-align: center;
}
td{
height:35px !important;
}
button{
border: 0;
    width: 100%;
    height: 48px;
    font-size: 25px;
    font-weight: bold;
    border-radius: 11px;
    position: relative;
    top: -17px;
}
.conTitle{
    position: absolute;
    padding: 10px 10px 10px 17px;
    font-size: 24px;
    font-weight: bold;
}
a{
color:black;
}
</style>
</head>
<body>
	<section>
		<div class="upContainer flexCon">
			<div class="salesContainer container">
			<div class="conTitle">매출 내역</div>
				<table>
					<tr>
						<th class="center">글번호</th>
						<th class="center">판매자</th>
						<th class="center">금액</th>
					</tr>
					<c:forEach items="${payList}" var="pay">
						<tr>
							<td class="center">${pay.opno }</td>								
							<td class="center">${pay.id }</td>								
							<td class="center">${pay.ordersPayMoney }</td>
						</tr>
					</c:forEach>
				</table>									
				<a href="${path }/admin/salesManagement.do"><button>매출 내역 확인하러가기</button></a>
			</div>
			<div class="noticeContainer container">
			<div class="conTitle">최근 공지사항</div>				
				<table>						
					<tr>
						<th class="center">글번호</th>
						<th class="center">제목</th>
						<th class="center">등록일</th>
					</tr>
					<c:forEach items="${noticeList}" var="noti">
						<tr>
							<td class="center">${noti.notiId}</td>
							<td class="center">${noti.notiSubject}</td>
							<td class="center">
								<fmt:formatDate value="${noti.notiDate}" pattern="yyyy-MM-dd" />
							</td>
						</tr>
					</c:forEach>					
				</table>				
				<a href="${path }/admin/addNotice.do"><button>공지사항 등록 하러가기</button></a>			
			</div>
		</div>
		<div class="downContainer flexCon">
			<div class="askContainer container">		
			<div class="conTitle">최근 문의</div>		
				<table>						
					<tr>
						<th class="center">글 번호</th>
						<th class="center">회원</th>
						<th class="center">제목</th>
						<th class="center">내용</th>
						<th class="center">답변 상태</th>
						<th class="center">작성일</th>
					</tr>
					<c:forEach items="${askList}" var="ask">
						<tr>							
							<td class="center">${ask.askId}</td>
							<td class="center">${ask.id}</td>
							<td class="center">${ask.askSubject}</td>
							<td class="center">${ask.askContent}</td>
							<td class="center">${ask.askState}</td>
							<td class="center">
								<fmt:formatDate value="${ask.askDate}" pattern="yyyy-MM-dd" />
							</td>
						</tr>
					</c:forEach>					
				</table>				
				<a href="${path }/admin/unAnswered.do"><button>미답변 문의 내역 확인하러가기</button></a>				
			</div>
			<div class="goodsContainer container">
			<div class="conTitle">최신 상품</div>
				<table>						
					<tr>
						<th class="center">글 번호</th>
						<th class="center">판매 매장</th>
						<th class="center">판매자</th>
						<th class="center">상품 번호</th>
						<th class="center">상품명</th>
						<th class="center">이미지</th>
						<th class="center">상품 가격</th>
						<th class="center">등록 상태</th>
						<th class="center">등록일</th>
					</tr>
					<c:forEach items="${goodsList}" var="goods">
						<tr>							
							<td class="center">${goods.gno}</td>
							<td class="center">${goods.sellerName}</td>
							<td class="center">${goods.id}</td>
							<td class="center">${goods.goodsId}</td>
							<td class="center">${goods.goodsName}</td>							
							<td class="center"><img src="${goods.realPath}"style="width:30px;height:30px;"></td>							
							<td class="center">${goods.goodsPrice}</td>
							<td class="center">${goods.goodsState}</td>
							<td class="center">
								<fmt:formatDate value="${goods.regDate}" pattern="yyyy-MM-dd" />
							</td>
						</tr>
					</c:forEach>					
				</table>
				<a href="${path }/admin/goodsManagement.do"><button>미승인 상품 확인하러가기</button></a>				
			</div>
		</div>
		
	</section>
</body>
</html>