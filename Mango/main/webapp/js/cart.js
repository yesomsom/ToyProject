$(document).ready(function() {
   
/* 수량 증감 버튼 */
   $(".plus_btn").on("click", function(){
      let quantity = $(this).parent("div").find("input").val();
      $(this).parent("div").find("input").val(++quantity);       
   });
   $(".minus_btn").on("click", function(){
      let quantity = $(this).parent("div").find("input").val();
      if(quantity > 1){
         $(this).parent("div").find("input").val(--quantity);
      }
   });   
   
/* 수량 수정 버튼 */
   $(".quantity_modify_btn").on("click", function(){
      let cartId = $(this).data("cartid");
      let goodsQty = $(this).parent("div").find("input").val();
      $(".update_cartId").val(cartId);
      $(".update_goodsQty").val(goodsQty);
      $(".quantity_update_form").submit();         
   });
   
/* order 유무 - 미완 */
/*	$(".btn").on("click", function(){
		if($(".chk").is(":checked")) {
			let cId = $(this).data("cartid");
			alert(cId);
			$(".updateYN_cartId").val(cId);
			alert(cId);

		} else {
		
		}
	});
	$(".chk").change(function() {
	alert("");
		if($(".chk").is(":checked")) {
			let cId = $(this).data("cartid");
			alert(cId);
			$(".updateYN_cartId").val(cId);
			alert(cId);

		} else {
		
		}
	});
		$(".orderYN_form").submit();
		alert("수정완료");
	});*/
   
/* order 유무 변경 - 미완성 */ 
	$(".btn").on("click", function(index){
		$(".chk:checked").each(function(index){
			index = $(this).index();
		})
	});
      
/* 장바구니 개별 삭제 버튼 */
   $(".delete_btn").on("click", function(){
      const cartId = $(this).data("cartid");
      $(".delete_cartId").val(cartId);
      $(".quantity_delete_form").submit();
   });
/* 장바구니 다중 선택 삭제 버튼 - 미완 */
/*	$(".delete_goods").on("click", function(){
		let delArr = new Array();
		$(".chk:checked").each(function(){
			delArr.push($(".chk").index(this));
		});
		for(let i = 0; i < delArr.length; i++) {
			document.querySelector(".check_delete").innerHTML = '<input type="text" name="cartList['+delArr[i]+'].cartId" value="'+delArr[i]+'">'
			alert("df");
		}
		
         $(".check_delete_form").submit();

   }); */  

/* 전체 체크박스 설정 및 해제 */
   $(".chk_all").click(function() {
      let chk = $(".chk_all").prop("checked");
      if (chk) {
         $(".chk").prop("checked", true);
         itemSum();
         totalName();
      } else {
         $(".chk").prop("checked", false);
         itemSum();
         totalName();
      }
   });
   $(".chk").click(function() {
      itemSum();
      totalName();
      let total = $(".chk").length;
      let checked = $(".chk:checked").length;
      if (total != checked)
         $(".chk_all").prop("checked", false);
       else
         $(".chk_all").prop("checked", true);

   });
   
/* 체크된 것 선택해서 -미완 */   
/*	ordersCheck();
	function ordersCheck() {
		let ordersArr = new Array();
		$(".chk:checked").each(function() {
		ordersArr.push($(".chk").index(this));
		});
		for(let i = 0; i < ordersArr.length; i++) {
			let ordersObj = new Object();

		}
		
	}*/
   
/* 총 상품 이름 */
	totalName();
	function totalName() {
		let nameArr = new Array();
		$(".chk:checked").each(function(){
			nameArr.push($(this).data("gn"));
		})
		$('input[name=goodsAllName]').attr('value', nameArr);
	}   
/* 장바구니 총액 계산 */   
   function itemSum() {
      let str = "";
      let sum = 0;
      let count = $(".chk").length;
      for (let i = 0; i < count; i++) {
         if ($(".chk")[i].checked == true) {
            sum += parseInt($(".chk")[i].value);
         }
      }
      let sumComma = sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
         $(".total_price").text(sumComma);
         $('input[name=totalPrice]').attr('value', sum);
      }
      
});


