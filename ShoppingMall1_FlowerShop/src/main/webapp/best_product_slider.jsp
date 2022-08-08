<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>Slick</title>
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
    <script>
    
      $( document ).ready( function() {
        $( '.slider' ).slick( {
          autoplay: false,
          autoplaySpeed: 5000,
          slidesToShow: 3,
          slidesToScroll: 3,
        } );
      } );
    </script>
    <style>
    	.best_product_title {
    		text-align: center;
    		font-weight: 900;
    		font-size: 1.4em;
    		color: #5D5B6A;
    	}
        .best_product_img {
	        width: 100%;	        
        }
        .slider {
	        width: 98%;
	        margin: 10px;
        }
        .slider .slick-slide {
	        margin: 10px;
        }
        .slick-prev:before, .slick-next:before {
	        color: #F5CDAA;
        }
        .slick-prev {
        	margin: 15px;
        }
        .slick-next {
        	margin: 10px;
        }      
    </style>
  </head>
  <body>
  	<p class="best_product_title">BEST PRODUCTS</p>
  	<br>
    <div class="slider">
      <div><img class="best_product_img" src="img/flower5.jpg" width="200px" height="350px"></div>
      <div><img class="best_product_img" src="img/flower2.jpg" width="200px" height="350px"></div>
      <div><img class="best_product_img" src="img/flower6.jpg" width="200px" height="350px"></div>
      <div><img class="best_product_img" src="img/flower4.jpg" width="200px" height="350px"></div>
      <div><img class="best_product_img" src="img/flower10.jpg" width="200px" height="350px"></div>
      <div><img class="best_product_img" src="img/flower9.jpg" width="200px" height="350px"></div>
    </div>
  </body>
</html>
