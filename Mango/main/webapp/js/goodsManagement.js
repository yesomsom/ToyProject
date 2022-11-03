$(document).ready(function() {

/* 상품 수정 버튼 */
   $(".modify_btn").on("click", function(){
      let goodsId = $(this).data("goodsid");
      let gName = $(this).parents("tr").find(".gName").val();
      let gStock = $(this).parents("tr").find(".gStock").val();
      let gDetail = $(this).parents("tr").find(".gDetail").val();
      let gPrice = $(this).parents("tr").find(".gPrice").val();
      let gDePrice = $(this).parents("tr").find(".gDePrice").val();
      let gCat = $(this).data("gcat"); 
      let gState = $(this).data("gstate");

      $(".update_goodsId").val(goodsId);
      $(".update_goodsName").val(gName);
      $(".update_goodsStock").val(gStock);
      $(".update_goodsDetail").val(gDetail);
      $(".update_goodsPrice").val(gPrice);
      $(".update_deliveryPrice").val(gDePrice);
      $(".update_goodsCategory").val(gCat);
      $(".update_goodsState").val(gState);     
      
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
/*		$(".update_goodsCategory").val(selectVal);	*/
		$('.modify_btn').data('gcat', selectVal);	
	});  

	$("select[name=goodsState]").change(function(){
		let stateSelectVal = $(this).val();		
/*		$(".update_goodsState").val(stateSelectVal);*/
		$('.modify_btn').data('gstate', stateSelectVal);		
	});
});