$(".pageInfo a").on("click", function(e) {
	e.preventDefault();
	$("#pageNum").val($(this).attr("href"));
	$("#qaForm").submit();
})

$(".pageInfo_btn a").on("click", function(e) {
	e.preventDefault();
	$("#pageNum").val($(this).attr("href"));
	$("#noticeForm").submit();
})
$(".pageInfo a").on("click", function(e) {
	e.preventDefault();
	$("#pageNum").val($(this).attr("href"));
	$("#myAskList").submit();
})
$(".pageInfo a").on("click", function(e) {
	e.preventDefault();
	$("#pageNum").val($(this).attr("href"));
	$("#goodsForm").submit();
})
$(".pageInfo a").on("click", function(e) {
	e.preventDefault();
	$("#pageNum").val($(this).attr("href"));
	$("#goodsListForm").submit();
})
$(".pageInfo a").on("click", function(e) {
	e.preventDefault();
	$("#pageNum").val($(this).attr("href"));
	$("#goodsManagementForm").submit();
})