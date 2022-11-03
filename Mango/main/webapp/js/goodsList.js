$(document).ready(function() {

/* 상품 수정 버튼 */
   $(".modify_btn").on("click", function(){
      let goodsId = $(this).data("goodsid");
      let gName = $(this).parents("tr").find(".gName").val();
      let gStock = $(this).parents("tr").find(".gStock").val();
      let gDetail = $(this).parents("tr").find(".gDetail").val();
      let gPrice = $(this).parents("tr").find(".gPrice").val();
      let gDePrice = $(this).parents("tr").find(".gDePrice").val();
      let gDiscount = $(this).parents("tr").find(".gDiscount").val();
      
      $(".update_goodsId").val(goodsId);
      $(".update_goodsName").val(gName);
      $(".update_goodsStock").val(gStock);
      $(".update_goodsDetail").val(gDetail);
      $(".update_goodsPrice").val(gPrice);
      $(".update_deliveryPrice").val(gDePrice);
      $(".update_goodsDiscount").val(gDiscount); 
      
      $(".goods_update_form").submit();         
   });
   
/* 상품 삭제 버튼 */
   $(".delete_btn").on("click", function(){
      const goodsId = $(this).data("goodsid");
      $(".delete_goodsId").val(goodsId);
      $(".goods_delete_form").submit();
   }); 
   
/* option selected 값으로 변경해서 전달 */ 
	$("select[name=goodsCategory]").change(function(){
		let selectVal = $(this).val();		
		$(".update_goodsCategory").val(selectVal);		
	});  
});