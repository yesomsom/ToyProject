<%@page import="mango.mango.model.MemberVO"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MemberVO login = (MemberVO) session.getAttribute("login");
%>
<%
request.setAttribute("id", login.getId());
String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/askForm.css">
</head>
<body>
	<div class="ask_container">
		<!-- 1:1문의 폼 -->

		<div>
			<h1 id="h_div">1:1 문의 하기</h1>
		</div>

		<form method="post" action="/page/askForm/insert.do" onsubmit="return fnConfirm('y');">
			<!-- 본문 -->
			<div>
				<table>					
					<tr>
						<td id="none">
							<h1 class="t_head">문의 내용</h1>
						</td>
					</tr>
					<tr>
						<th scope="row" class="cols1">분&nbsp;&nbsp;&nbsp;류</th>
						<td>
							<select title="문의 내용 분류 선택" name="askCat" class="selBox">
								<option value="0" selected>분류 선택</option>
								<option value="영화관">영화관</option>
								<option value="영화">영화</option>
								<option value="예매/결제">예매/결제</option>
								<option value="결제">이벤트</option>
								<option value="개인정보">개인정보</option>
								<option value="분실물">분실물</option>
							</select>
							<select title="문의내용 종류" name="askCatDetail" class="selBox">
								<option value="0" selected>문의 종류</option>
								<option value="문의">문의</option>
								<option value="건의">건의</option>
							</select>
						</td>
					</tr>	
					<tr>
						<th scope="row" class="cols1">종&nbsp;&nbsp;&nbsp;류</th>
						<td>
							<input type="radio" name="rdo00" id="rdo01" checked>
							<label for="rdo01" class="rdoT1">영화관문의</label>
							<span>
								<select name="ask_type" id="askType" class="selBox" onChange="cat1_change(this.value,aks_typeDetail)">
									<option value="0" selected>영화관 선택</option>
									<option value="1">서울</option>
									<option value="2">경기/인천</option>
									<option value="3">충청/대전</option>
									<option value="4">전라/광주</option>
									<option value="5">경북/대구</option>
									<option value="6">경남/부산/울산</option>
									<option value="7">강원</option>
									<option value="8">제주</option>
								</select>
								<select name="askTypeDetail" id="aks_typeDetail" class="selBox">
									<option value="0">-선택-</option>
								</select>
							</span>
							<input type="radio" name="rdo00" id="rdo02">
							<label for="rdo02">기타문의</label>
						</td>
					</tr>
	
					<tr>
						<th scope="row" class="cols1">제&nbsp;&nbsp;&nbsp;목</th>
						<td>
							<input type="text" name="askSubject" class="textBox" placeholder="제목을 입력하세요" title="문의 내용 제목 입력" required>
						</td>
					</tr>
					<tr>
						<th scope="row" class="cols1">내&nbsp;&nbsp;&nbsp;용</th>
						<td>
							<textarea name="askContent" cols="100" rows="10" title="문의 내용을 입력해 주세요" required placeholder="내용에 개인정보(카드번호, 계좌번호, 주민번호)가 포함되지 않도록 유의하여 입력해 주세요."></textarea>
							<!-- 내용 및 첨부파일에 개인정보(카드번호, 계좌번호, 주민번호)가 포함되지 않도록 유의하여 입력해 주세요. -->
						</td>
					</tr>
			
					<!-- <table summary="고객정보작성 테이블"> -->
					<tbody>
						<tr>
							<td id="none">
								<h1 class="t_head">고객정보</h1>
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols1">성&nbsp;&nbsp;&nbsp;명</th>
							<td>
								<input type="text" name="askName" placeholder="성명을 입력해 주세요" value="${login.getName()}" readonly>
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols1">연락처</th>
							<td>
								<input type="text" name="askPhone" title="연락처" maxlength="11" onkeyup="onlyNum(this);"	placeholder="-없이 입력해 주세요" value="${login.getPhone()}" readonly>
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols1">이메일</th>
							<td>
								<input type="email" name="askEmail" placeholder="이메일을 입력해 주세요" required>
								<span>답변 등록시 해당 이메일로 자동 발송 됩니다.</span>
							</td>					
						</tr>
					</tbody>
				</table>
				<div>
					<h1 class="t_head" id="agree_head">개인정보 수집에 대한 동의</h1>
					<div>
						<p>문의를 통해 아래의 개인정보를 수집합니다. 수집된 개인정보는 문의 외 목적으로 사용 하지 않습니다.</p>
					</div>
					<div>
						<textarea cols="100" rows="10" class="agreeBox">
    * 개인정보의 수집목적 및 항목
      ① 수집 목적 : 원활한 고객 상담, 불편사항 및 문의사항 관련 의사소통 경로 확보
      ② 수집 항목
    *필수입력사항
     - 이용자 식별을 위한 항목 : 성명, 연락처
   
   
    * 개인정보의 보유 및 이용기간
     - 입력하신 개인정보는 소비자 보호에 관한 법률 등 관계 법률에 의해 다음과 같이 보유합니다.
     - 보유기간 : 문의접수 후 처리 완료시점으로 부터 3년
   
    ※ 1:1문의 서비스 제공을 위한 최소한의 개인정보이며 거부할 수 있습니다. 
       다만, 수집에 동의하지 않을 경우 서비스 이용이 제한됩니다.
                     </textarea>
					</div>
					<div class="rdo1">
						<input type="radio" name="rdo01" value="true" id="agreeBtn1">
						<label for="radio10" class="rd1">동의</label>
						<input type="radio" name="rdo01" value="false" id="agreeBtn2" checked>
						<label for="radio11">동의하지않음</label>
					</div>
					<div class="btn_A">
						<input class="btn1" type="reset" value="다시 쓰기"> 
						<input class="btn2" type="submit" value="접수">
					</div>
					<input type="hidden" name="id" value="${login.getId()}">
				</div>
			</div>
		</form>
	</div>



	<script src="${path }/js/askForm.js"></script>

</body>
</html>