/* 숫자 천단위마다 콤마 설정 */
priceComma();
function priceComma() {
	var goodsPrice = $('.goods_price').val();
	var goodsDeliveryPrice = $('.goods_delivery_price').val();
	var goodsTotalPrice = $('.goods_total_price').val();

	var goodsPriceComma = goodsPrice.toString().replace(
		/\B(?=(\d{3})+(?!\d))/g, ',');
	var goodsDeliveryPriceComma = goodsDeliveryPrice.toString().replace(
		/\B(?=(\d{3})+(?!\d))/g, ',');
	var goodsTotalPriceComma = goodsTotalPrice.toString().replace(
		/\B(?=(\d{3})+(?!\d))/g, ',');

	$('.goods_price').val(goodsPriceComma);
	$('.goods_delivery_price').val(goodsDeliveryPriceComma);
	$('.goods_total_price').val(goodsTotalPriceComma);
}

/* 수량 변경 시 총 가격 변경 */
$('.goods_qty_change').on('change', function() {
	var changeQty = parseInt($('.goods_qty_change').val());
	var goodsPriceS = parseInt($('.goods_price_submit').val());
	var goodsDeliveryPriceS = parseInt($('.goods_delivery_submit').val());
	var totalPriceCal = (goodsPriceS * changeQty) + goodsDeliveryPriceS;

	$('.goods_qty_submit').val(changeQty);
	$('.goods_total_price').val(totalPriceCal);
	$('.goods_totalPrice_submit').val(totalPriceCal);
	priceComma();

});