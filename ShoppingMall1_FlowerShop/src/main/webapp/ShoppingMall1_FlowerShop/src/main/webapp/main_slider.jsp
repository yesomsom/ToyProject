<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>main slider</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<style>
*{
	margin:0;
	padding:0;
}
.mySlides {
	display:none;
	width:100%;
	height:600px;
}
</style>
</head>

<body>

<div class="slider_content">
  <img class="mySlides" src="img/rose_bouquet2_1920.jpg" style="width:100%">
  <img class="mySlides" src="img/tulip_1920.jpg" style="width:100%">
  <img class="mySlides" src="img/lavender1_1920.jpg" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

</body>
</html>
