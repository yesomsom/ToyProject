$(document).ready(function() {
	/* option selected 값으로 변경해서 전달 */
	$("select[name=deliveryState]").change(function() {
		let selectVal = $(this).val();
		$("option[name=delivery]").val(selectVal);
	});
});
