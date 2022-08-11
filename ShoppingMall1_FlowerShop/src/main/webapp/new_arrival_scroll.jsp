<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
*{
margin: 0;
padding: 0;
}

.slideUp {
  animation-name: slideUp;
  animation-name: slideUp;
  animation-duration: 1s;
  animation-duration: 1s;
  visibility: visible;
}

@keyframes slideUp {
  0% {
    opacity: 0;
    transform: translateY(70%);
  } 
  100% {
    opacity: 1;
    transform: translateY(0%);
  }
}

body {height:1500px;}

.new_arrivals {
	text-align: center;
	align-content: center;
}

.new_arrival_imgtag {
	width:180px;
	height:100px;
	visibility:hidden;
}

.new_arrival_title {
 	text-align: center;
	font-weight: 900;
	font-size: 1.4em;
	color: #5D5B6A;
}

.new_arrival_images {
	display: inline;
}

</style>
</head>
<body>
	<br>
	<p class="new_arrival_title">NEW ARRIVAL</p>
	<br><br>
	<div class="new_arrivals">
		<ul>
			<li class="new_arrival_images"><img class="new_arrival_imgtag" id="myImg" src="img/flower11.jpg" width="304" height="228"></li>
			<li class="new_arrival_images"><img class="new_arrival_imgtag" id="myImg1" src="img/flower12.jpg" width="304" height="228"></li>
			<li class="new_arrival_images"><img class="new_arrival_imgtag" id="myImg2" src="img/flower13.jpg" width="304" height="228"></li>
		</ul>
	</div> 
	<br>
<script>
window.onscroll = function() {myFunction()};

function myFunction() {
  if (document.documentElement.scrollTop > 600) {
    document.getElementById("myImg").className = "slideUp";
  }
  if (document.documentElement.scrollTop > 700) {
	    document.getElementById("myImg1").className = "slideUp";
	}
  if (document.documentElement.scrollTop > 800) {
	    document.getElementById("myImg2").className = "slideUp";
	}
}
</script>

</body>
</html>
