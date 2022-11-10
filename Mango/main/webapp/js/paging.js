$(".pageInfo a").on("click", function(e) {
	e.preventDefault();
	$("#pageNum").val($(this).attr("href"));	
	$("#qaForm").submit();
	$("#noticeForm").submit();
	$("#myAskList").submit();
	$("#goodsForm").submit();
	$("#goodsKeywordForm").submit();
	$("#goodsListForm").submit();
	$("#goodsManagementForm").submit();
	$("#ordersListForm").submit();
	$("#salesManagementForm").submit();
	$("#unAnsweredForm").submit();
	$("#approvedForm").submit();
})