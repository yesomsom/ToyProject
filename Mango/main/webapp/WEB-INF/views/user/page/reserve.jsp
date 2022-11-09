<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="${path}/css/reset.css">

<link rel="stylesheet" href="${path}/css/reserve.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
   href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
   src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

   <div class="reserve-container">
      <div class="movie-part">
         <div class="reserve-title">영화</div>
         <ul class="sort-wrapper tabs">
            <li class="sort-rate sort-selected tab-link current"
               data-tab="tab-1">예매율순</li>
            <li class="sort-korean sort-selected tab-link" data-tab="tab-2">가나다순</li>
         </ul>
         <div id="tab-1" class="movie-list-wrapper tab-content current">
            <div class="movie-list"></div>
         </div>
         <div id="tab-2" class="movie-list-wrapper-ko tab-content">
            <c:forEach var="movieListKo" items="${movieListKo}">
               <div class="movie-list">
                  <button class="movie-list-title">${movieListKo.movieTitle}</button>
               </div>
            </c:forEach>
         </div>
      </div>
      <div class="theater-part">
         <div class="reserve-title theater-title">극장</div>
         <div class="theater-container">
            <div class="theater-wrapper">
               <ul class="theater-location-wrapper tabs1">
                  <li class="theater-location tab1-link current1" data-tab="tab1-1">CGV</li>
                  <li class="theater-location tab1-link" data-tab="tab1-2">롯데시네마</li>
                  <li class="theater-location tab1-link" data-tab="tab1-3">메가박스</li>
               </ul>
               <div id="tab1-1"
                  class="theater-place-wrapper tab1-content current1">
                  <c:forEach var="CGVTheaterList" items="${CGVTheaterList}">
                     <button class="theater-place">${CGVTheaterList.branchNm}</button>
                  </c:forEach>
               </div>
               <div id="tab1-2" class="theater-place-wrapper tab1-content">
                  <c:forEach var="LotteTheaterList" items="${LotteTheaterList}">
                     <button class="theater-place">${LotteTheaterList.branchNm}</button>
                  </c:forEach>
               </div>
               <div id="tab1-3" class="theater-place-wrapper tab1-content">
                  <c:forEach var="MegaTheaterList" items="${MegaTheaterList}">
                     <button class="theater-place">${MegaTheaterList.branchNm}</button>
                  </c:forEach>
               </div>
            </div>
         </div>
      </div>
      <div class="day-part">
         <div class="reserve-title">날짜</div>
         <div class="reserve-date"></div>
      </div>
      <div class="time-part">
         <div class="reserve-title">시간</div>
         <div class="reserve-time">
            <div class="reserve-where">4관(Sweet) 6층(총 240석)</div>
            <div class="reserve-time-wrapper">
               <button class="reserve-time-button">
                  <span class="reserve-time-want">12:20</span>
                  <span class="reserve-time-remain">240석</span>
               </button>
               <button class="reserve-time-button">
                  <span class="reserve-time-want">14:20</span>
                  <span class="reserve-time-remain">240석</span>
               </button>
               <button class="reserve-time-button">
                  <span class="reserve-time-want">16:20</span>
                  <span class="reserve-time-remain">240석</span>
               </button>
               <button class="reserve-time-button">
                  <span class="reserve-time-want">18:20</span>
                  <span class="reserve-time-remain">240석</span>
               </button>

            </div>
         </div>
         <div>
            <form class="seatForm" action="seat.do" method="post">
               <input type="hidden" class="title" name="title">               
               <input type="hidden" class="selectedTheater" name="selectedTheater">
               <input type="hidden" class="theaterKind" name="theaterKind" value="CGV">
               <input type="hidden" class="reserveDate" name="movieDate">
               <input type="hidden" class="runningTime" name="runningTime">
               <button class="seatButton" type="button">예약하기</button>
            </form>
         </div>
      </div>
   </div>
   <script src="${path}/js/reserve.js"></script>
</body>
</html>