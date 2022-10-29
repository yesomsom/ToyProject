<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/serviceCenter.css">
</head>
<body>
   <div class="cs_container">
      <div class="cust_top">
         <h1>고객센터</h1>

         <!-- 검색창 -->
         <!-- <div class="cust_search">
      <div>
        <input type="search" placeholder="궁금한 점을 검색해주세요.">
      </div>
      <div>
        <button type="submit" class="search_botton">
          <img src="${path}/img/icons8-zoom-30.png">
        </button>
      </div>
    </div> -->

         <!-- 자주 묻는 질문 -->
         <!-- 탭 -->
         <div class="container">
            <ul class="tabs">
               <li class="menu tab-link current" data-tab="tab-1">
                  <div>
                     <a href="#"> <img src="${path}/images/qa.png"
                        style="width: 50px;" id="img1">
                        <p id="h_p">자주 묻는 질문</p>
                     </a>
                  </div>
               </li>
               <li class="menu tab-link" data-tab="tab-2">
                  <div>
                     <a href="/page/askForm.do"> <img src="${path}/images/qes.png"
                        style="width: 50px;" id="img2">
                        <p id="h_p">1:1문의</p>
                     </a>
                  </div>
               </li>
               <li class="menu tab-link" data-tab="tab-3">
                  <div>
                     <a href="#"> <img src="${path}/images/notice.png"
                        style="width: 50px;" id="img3">
                        <p id="h_p">공지 사항</p>
                     </a>
                  </div>
               </li>

            </ul>

               <!-- 모달 -->
               
               <div class="modal_1">
                  <div class="modal_content_1" title="클릭하면 창이 닫힙니다.">
                     <div>Q. 로그인 아이디가 생각나지 않아요.</div>
                     <div>√ 로그인창에서 아이디 찾기 진행 아이디 혹은 비밀번호를 분실하였다면, 본인인증을 통해 ID 찾기
                        및 비밀번호를 재설정 할 수 있습니다. (본인인증 가능한 수단: 휴대폰/이메일/아이핀)</div>
                  </div>
               </div>
               <!-- 모달 -->
               <div class="modal_2">
                  <div class="modal_content_2" title="클릭하면 창이 닫힙니다.">
                     <div>Q. 회원가입시 이미 가입되어 있는 정보라고 나옵니다.</div>
                     <div>√ 아이디 찾기 또는 비밀번호 찾기 진행 회원가입 하신 사실을 잊으셨거나 제휴사이트를 통해 가입된
                        경우가 많습니다. 아이디 찾기 또는 비밀번호 찾기를 진행해주세요.</div>
                  </div>
               </div>
               <!-- 모달 -->
               <div class="modal_3">
                  <div class="modal_content_3" title="클릭하면 창이 닫힙니다.">
                     <div>Q. 아이디를 여러 개 사용할 수 있나요?</div>
                     <div>√ 실명인증된 1개의 아이디만 사용 가능 지마켓에서는 실명인증된 1개의 아이디만 사용 가능합니다.
                        단, 사업자 판매회원은 판매 편의성 개선을 위해 하나의 사업자등록번호로 최대 3개까지 아이디 신청이 가능 합니다.</div>
                  </div>
               </div>
               <!-- 모달 -->
               <div class="modal_4">
                  <div class="modal_content_4" title="클릭하면 창이 닫힙니다.">
                     <div>Q. 탈퇴하면 개인정보는 모두 삭제되나요?</div>
                     <div>√ 개인정보는 탈퇴 즉시 삭제 정보통신망 이용 촉진 및 정보보호에 관한 법률 규정상 사후 문제
                        발생 가능성에 대비하여 최소한의 기본 정보와 거래내역은 아래 명시한 기간 동안 G마켓에서 보관합니다. 1. 계약
                        또는 청약철회 등에 관한 기록 : 5년 2. 대금결제 및 재화 등의 공급에 관한 기록 : 5년 3. 소비자의 불만
                        또는 분쟁처리에 관한 기록 : 3년</div>
                  </div>
               </div>
               
               <!-- 공지사항 모달 -->
               <div class="modal_5">
               <c:forEach items="${notice}" var="notilist" begin="0" end="0" step="1" >
                  <div class="modal_content_5" title="클릭하면 창이 닫힙니다.">
                     <div><b>${notilist.notiSubject}</b></div>
                     <br>
                     <div>${notilist.notiContent}</div>
                  </div>
               </c:forEach>
               </div>
               
               <div class="modal_6">
               <c:forEach items="${notice}" var="notilist" begin="1" end="1" step="1" >
                  <div class="modal_content_6" title="클릭하면 창이 닫힙니다.">
                     <div><b>${notilist.notiSubject}</b></div>
                     <br>
                     <div>${notilist.notiContent}</div>
                  </div>
                  </c:forEach>
               </div>

               <div class="modal_7">
               <c:forEach items="${notice}" var="notilist" begin="2" end="2" step="1" >
                  <div class="modal_content_7" title="클릭하면 창이 닫힙니다.">
                     <div><b>${notilist.notiSubject}</b></div>
                     <br>
                     <div>${notilist.notiContent}</div>
                  </div>
                  </c:forEach>
               </div>

               <div class="modal_8">
               <c:forEach items="${notice}" var="notilist" begin="3" end="3" step="1" >
                  <div class="modal_content_8" title="클릭하면 창이 닫힙니다.">
                     <div><b>${notilist.notiSubject}</b></div>
                     <br>
                     <div>${notilist.notiContent}</div>
                  </div>
                  </c:forEach>
               </div>
               
               
               <!-- tab1 탭1 (자주 묻는 질문) -->
               <div id="tab-1" class="tab-content current">
                  <div class="tab-1_content_all">

                     <div class="tab-1_content" id="modal_button_1">
                        <div class="tab-1_content_title">Q. 로그인 아이디가 생각나지 않아요.</div>
                        <div class="tab-1_content_answer">√ 로그인창에서 아이디 찾기 진행 아이디
                           혹은 비밀번호를 분실하였다면, 본인인증을 통해 ID 찾기 및 비밀번호를 재설정 할 수 있습니다. (본인인증 가능한
                           수단: 휴대폰/이메일/아이핀)</div>
                     </div>


                     <div class="tab-1_content" id="modal_button_2">
                        <div class="tab-1_content_title">Q. 회원가입시 이미 가입되어 있는 정보라고
                           나옵니다.</div>
                        <div class="tab-1_content_answer">√ 아이디 찾기 또는 비밀번호 찾기 진행
                           회원가입 하신 사실을 잊으셨거나 제휴사이트를 통해 가입된 경우가 많습니다. 아이디 찾기 또는 비밀번호 찾기를
                           진행해주세요.</div>
                     </div>

                     <div class="tab-1_content" id="modal_button_3">
                        <div class="tab-1_content_title">Q. 아이디를 여러 개 사용할 수 있나요?</div>
                        <div class="tab-1_content_answer">√ 실명인증된 1개의 아이디만 사용 가능
                           지마켓에서는 실명인증된 1개의 아이디만 사용 가능합니다. 단, 사업자 판매회원은 판매 편의성 개선을 위해 하나의
                           사업자등록번호로 최대 3개까지 아이디 신청이 가능 합니다.</div>
                     </div>

                     <div class="tab-1_content" id="modal_button_4">
                        <div class="tab-1_content_title">Q. 탈퇴하면 개인정보는 모두 삭제되나요?</div>
                        <div class="tab-1_content_answer">√ 개인정보는 탈퇴 즉시 삭제 정보통신망
                           이용 촉진 및 정보보호에 관한 법률 규정상 사후 문제 발생 가능성에 대비하여 최소한의 기본 정보와 거래내역은 아래
                           명시한 기간 동안 G마켓에서 보관합니다. 1. 계약 또는 청약철회 등에 관한 기록 : 5년 2. 대금결제 및 재화
                           등의 공급에 관한 기록 : 5년 3. 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</div>
                     </div>
                  </div>
                  <a id="all_asktag" href="/page/qaList.do">전체 문의 보기</a>
               </div>

               <!-- tab3 탭3 (공지 사항) -->
               <div id="tab-3" class="tab-content">
                  <div class="tab-3_content_all">
   
                     <c:forEach items="${notice}" var="notilist" begin="0" end="0" step="1">
                        <div class="tab-5_content">
                           <div class="tab-3_content_title">${notilist.notiSubject}</div>
                           <div class="tab-3_content_answer">${notilist.notiContent}</div>
                        </div>
                     </c:forEach>
                     
                     <c:forEach items="${notice}" var="notilist" begin="1" end="1" step="1">
                        <div class="tab-6_content">
                           <div class="tab-3_content_title">${notilist.notiSubject}</div>
                           <div class="tab-3_content_answer">${notilist.notiContent}</div>
                        </div>
                     </c:forEach>
                     
                     <c:forEach items="${notice}" var="notilist" begin="2" end="2" step="1">
                        <div class="tab-7_content">
                           <div class="tab-3_content_title">${notilist.notiSubject}</div>
                           <div class="tab-3_content_answer">${notilist.notiContent}</div>
                        </div>
                     </c:forEach>
                     
                     <c:forEach items="${notice}" var="notilist" begin="3" end="3" step="1">
                        <div class="tab-8_content">
                           <div class="tab-3_content_title">${notilist.notiSubject}</div>
                           <div class="tab-3_content_answer">${notilist.notiContent}</div>
                        </div>
                     </c:forEach>

                  </div>
                  <a id="all_notice" href="/page/noticeList.do">전체 공지 보기</a>
               </div>
         </div>

      </div>
      <!-- 고객센터 이용안내 -->
      <div class="qes_info">
         <h1 id="qes_tit2">고객센터 이용안내</h1>
         <div class="qes_infoCon">
            <div class="qes_con">
               <p class="qes_stit">일반회원/비회원</p>
               <p class="qes_con1">0000-0000(평일: 09:00~18:00)</p>
            </div>
            <div>
               <p class="qes_stit">사업자회원</p>
               <p class="qes_con1">0000-0001(평일: 09:00~18:00)</p>
            </div>
         </div>
      </div>
   </div>
   
   <script src="${path }/js/serviceCenter.js"></script>
   
</body>
</html>