/* 수량 증감 버튼 */
   $(".plus_btn").on("click", function(){
      var quantity = $(this).parent("div").find("input").val();
      $(this).parent("div").find("input").val(++quantity);       
   });
   $(".minus_btn").on("click", function(){
      var quantity = $(this).parent("div").find("input").val();
      if(quantity > 1){
         $(this).parent("div").find("input").val(--quantity);
      }
   });   
   
/* 수량 수정 버튼 */
   $(".quantity_modify_btn").on("click", function(){
      var cartId = $(this).data("cartid");
      var goodsQty = $(this).parent("div").find("input").val();
      $(".update_cartId").val(cartId);
      $(".update_goodsQty").val(goodsQty);
      $(".quantity_update_form").submit();         
   });
      
/* 장바구니 개별 삭제 버튼 */
   $(".delete_btn").on("click", function(){
      var cartId = $(this).data("cartid");
      $(".delete_cartId").val(cartId);
      $(".quantity_delete_form").submit();
   });
   
   /* 장바구니 전체 삭제 버튼 */
   $(".delete_goods").on("click", function(){
      $(".all_delete_form").submit();
   });
   
/* 전체 체크박스 설정 및 해제 */
   $(".chk_all").click(function() {
      var chk = $(".chk_all").prop("checked");
      if (chk) {
         $(".chk").prop("checked", true);
         itemSum();
         //totalName();
      } else {
         $(".chk").prop("checked", false);
         itemSum();
         //totalName();
      }
   });

   $(".chk").click(function() {
      itemSum();
      //totalName();
      var total = $(".chk").length;
      var checked = $(".chk:checked").length;
      if (total != checked)
         $(".chk_all").prop("checked", false);
       else
         $(".chk_all").prop("checked", true);

   });
   
/* 장바구니 총액 계산 */   
   function itemSum() {
      var str = "";
      var sum = 0;
      var count = $(".chk").length;
      for (var i = 0; i < count; i++) {
         if ($(".chk")[i].checked == true) {
            sum += parseInt($(".chk")[i].value);
         }
      }
      var sumComma = sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
         $(".total_price").text(sumComma);
         $('input[name=totalPrice]').attr('value', sum);
      }

// 주문하기 버튼 클릭 시
function order_ajax(){

   var count = $('input:checkbox[name="chk"]:checked').length;
   if(count < 1) {
      alert("상품을 체크해주세요");
      location.href="/page/cart.do";   
   } else {
      //var cartList = {memberId : $("#memberId").val(), memberName : $("#memberName").val(), data:[]};
      
      var cartIdList = "";
      var sellerNameList = "";
      var totalPriceList = "";
      
      $(".chk").each(function(){
         if($(this).prop("checked")){
            var cartId = $(this).data("cartid");
            var sellerName = $(this).parent("div").find(".seller_name").text();
            var tp = $(this).data("tp");
            cartIdList += cartId+",";
            sellerNameList += sellerName +",";
            totalPriceList += tp + ",";         
         }
      })
      
      $.ajax({
           url: '/page/orders/insert.do',
           type: 'post',
         data :{
            //cartList : JSON.stringify(cartList)
            memberId : $("#memberId").val(),
            memberName : $("#memberName").val(),
            cartIdList : cartIdList,
             sellerNameList : sellerNameList,
            totalPriceList : totalPriceList 
         },
           success: function(data) {
               location.href="/page/orders.do";
           },
       });      
   }
}