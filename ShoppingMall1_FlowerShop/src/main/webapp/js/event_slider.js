$(function() {
	var tabAnchor = $('.tabs-nav li a'),
		tabPanel = $('.tabs-panel');
		
	//링크를 클릭하면 할일
	tabAnchor.click(function(e) {
		e.preventDefault();
		
		
		tabAnchor.removeClass('active'); //모두 active 빼고
		$(this).addClass('active'); //그 요소에만 추가
		
		/*
		//그 요소에만 active 추가하고 나머지 요소에 빼는 방법도 있다.
		$(this).addClass('active').siblings().removeClass('active');
		-> sibling이 없어서 사용못함.
		*/
		
		tabPanel.hide();
		
		var $target = $(this).attr('href');
		console.log($target);
		$($target).show();
		
	})
});