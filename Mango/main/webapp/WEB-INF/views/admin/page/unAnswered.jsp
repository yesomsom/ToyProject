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
h1{
margin-bottom: -30px !important;
}
h2{
margin:10px !important;
}
.container {
    margin-top: -28px;
}
			.upContainer{
				display:flex;
			}
			.relatedContainer{
			    border: 1px;
    margin-top: -12px;
    position: absolute;
    display: none;
    top: 476px;
    width: 1170px;
			}
			.relatedContainer div{
			
			border:1px solid black;
			}
			
			#relatedContent{
			        position: absolute;
    width: 1170px;
    height: 220px
			}
			#q-info{
			    width: 300px;
    height: 50px;
			}
			#q-infos{
			       height: 138px;
			}
			#q-title{
			    width: 865px;
    height: 50px;
}
			#q-content{
			       height: 138px;
			}
			#relatedBtn{
	    position: relative;
    top: -1px;
    width: 1175px;
    height: 54px;
    left: -4px;
    border: 0;
    border-radius: 12px;
			}
			#relateCon{
			           position: relative;
    top: -1px;
    width: 1170px;
    height: 120px;
    left: -1px;
}
#relatedContent div{
	height:50px;
}
#relatedTitle{
    position: relative;
    width: 1170px;
    left: -2px;
    height: 50px;
}
#q-infos div{
    height: 34px;
    font-size: 20px;
}
			
			
		</style>
</head>
<body>
	<div class="container">
		<div class="row col-md-15 custyle margin-left-1">
			<table class="table table-striped custab">				
				<h1>미답변 문의내역</h1>
				<thead>
					<tr>
						<th class="text-center">회원</th>
						<th class="text-center">성함</th>
						<th class="text-center">연락처</th>
						<th class="text-center">이메일</th>
						<th class="text-center">질문</th>
						<th class="text-center">분류</th>
						<th class="text-center">제목</th>
						<th class="text-center">내용</th>
						<th class="text-center">답변 상태</th>
						<th class="text-center">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="unAnswer" items="${unAnsweredList }">
						<tr>
							<td class="text-center">${unAnswer.id }</td>
							<td class="text-center">${unAnswer.askName }</td>
							<td class="text-center">${unAnswer.askPhone }</td>
							<td class="text-center">${unAnswer.askEmail }</td>
							<td class="text-center">${unAnswer.askCat }${unAnswer.askCatDetail}</td>
							<c:if test="${unAnswer.askType ne '기타문의'}">
								<td class="text-center">${unAnswer.askType }${unAnswer.askTypeDetail }점</td>
							</c:if>
							<c:if test="${unAnswer.askType eq '기타문의'}">
								<td class="text-center">${unAnswer.askType }</td>
							</c:if>
							<td class="text-center">${unAnswer.askSubject }</td>
							<td class="text-center">${unAnswer.askContent }</td>
							<c:if test="${unAnswer.askState eq '미답변'}">
								<td class="text-center">${unAnswer.askState } / <button onClick="relatedBlock()" style="border: 0; color: blue; background: none;">답변하기</button></td>
							</c:if>
							<td class="text-center">${unAnswer.askDate }</td>
						</tr>
						<div class="relatedContainer" id="relatedContainer">
							<div class="upContainer">
								<div>
									<div id="q-info"><h2>회원정보</h2></div>
									<div id="q-infos">					
										<div>회원 : ${unAnswer.id }</div>
										<div>성함 : ${unAnswer.askName }</div>
										<div>연락처 : ${unAnswer.askPhone }</div>
										<div>이메일 : ${unAnswer.askEmail }</div>
									</div>		
								</div>
								<div>
									<div id="q-title"><h2>${unAnswer.askSubject }</h2></div>
									<div id="q-content">${unAnswer.askContent }</div>
								</div>
							</div>
							
							<div id="relatedContent">
								<div><h2>답변하기</h2></div>
								<div><input id=relatedTitle name="relaterTitle" type="text" placeholder="제목"></div>
								<textarea rows="" cols="" id="relateCon">
								</textarea>
								
								<button type="button" id="relatedBtn">발송하기</button>
							</div>
						</div>
					</c:forEach>
				</tbody>
			</table>
		</div>		
	</div>
	<script>
	function relatedBlock(){
		 const btn = document.getElementById('relatedContainer');
		 btn.style.display = 'block';
	}
	</script>
</body>
</html>