$(document).ready(function() {

/* 상품 수정 버튼 */
   $(".modify_btn").on("click", function(){
      let goodsId = $(this).data("goodsid");
      let gName = $(this).parents("tr").find(".gName").val();   
      let gDetail = $(this).parents("tr").find(".gDetail").val();
      let gPrice = $(this).parents("tr").find(".gPrice").val();
      let gDePrice = $(this).parents("tr").find(".gDePrice").val();      
      
      $(".update_goodsId").val(goodsId);
      $(".update_goodsName").val(gName);   
      $(".update_goodsDetail").val(gDetail);
      $(".update_goodsPrice").val(gPrice);
      $(".update_deliveryPrice").val(gDePrice); 
      
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