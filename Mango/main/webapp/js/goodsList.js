$(document).ready(function() {

/* 페이징 */
	$(".pageInfo a").on("click", function(e) {
		e.preventDefault();
		$("#pageNum").val($(this).attr("href"));
		$("#goodsListForm").submit();
	})

/* 상품 수정 버튼 */
   $(".modify_btn").on("click", function(){
      let cartId = $(this).data("cartid");
      let goodsQty = $(this).parent("div").find("input").val();
      $(".update_cartId").val(cartId);
      $(".update_goodsQty").val(goodsQty);
      $(".quantity_update_form").submit();         
   });
	
/* 상품 삭제 버튼 */
   $(".delete_btn").on("click", function(){
      const goodsId = $(this).data("goodsid");
      $(".delete_goodsId").val(goodsId);
      $(".goods_delete_form").submit();
   });	
	
});