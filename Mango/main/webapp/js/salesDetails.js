$(document).ready(function() {

	/* 페이징 */
	$(".pageInfo a").on("click", function(e) {
		e.preventDefault();
		$("#pageNum").val($(this).attr("href"));
		$("#ordersListForm").submit();
	})

	/* option selected 값으로 변경해서 전달 */
	$("select[name=deliveryState]").change(function() {
		let selectVal = $(this).val();
		$("option[name=delivery]").val(selectVal);
	});
});