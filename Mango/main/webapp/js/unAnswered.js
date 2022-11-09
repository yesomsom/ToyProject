/* 상품 수정 버튼 */
$(".relatedBtn").on('click',function(){
	let id = $(this).parents("tr").find("#id").text();
	let askId = $(this).parents("tr").find("#askId").val();
	let askName = $(this).parents("tr").find("#aName").text();
	let askPhone = $(this).parents("tr").find("#aPhone").text();
	let askEmail = $(this).parents("tr").find("#aEmail").text();
	let askTitle = $(this).parents("tr").find("#aTitle").text();
	let askContent = $(this).parents("tr").find("#aContent").text();
	let btn = document.getElementById('relatedContainer');
	
	$("#aId").val(askId);
	$("#id").text(id);
	$("#askName").text(askName);
	$("#askPhone").text(askPhone);
	$("#askEmail").text(askEmail);
	$("#askTitle").text(askTitle);
	$("#askContent").text(askContent);

	btn.style.display = 'block';
});

$("#sendRelatedBtn").on('click',function(){
	$("#answeredForm").submit()
	alert("답변하였습니다.")
});