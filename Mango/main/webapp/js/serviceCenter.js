$(document).ready(
	function() {
		$('.menu').each(function(index) {
			$(this).attr('menu-index', index);
		}).click(
			function() {
				var index = $(this).attr('menu-index');
				$('.menu[menu-index=' + index + ']').addClass(
					'clicked_menu');
				$('.menu[menu-index!=' + index + ']')
					.removeClass('clicked_menu');
			});
		dataTab();

	});

function dataTab() {

	$('ul.tabs li').click(function() {
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#" + tab_id).addClass('current');
	})

}

$(function() {
	$("#modal_button_1").click(function() {
		$(".modal_1").fadeIn();
	});

	$(".modal_content_1").click(function() {
		$(".modal_1").fadeOut();
	});

	$("#modal_button_2").click(function() {
		$(".modal_2").fadeIn();
	});

	$(".modal_content_2").click(function() {
		$(".modal_2").fadeOut();
	});

	$("#modal_button_3").click(function() {
		$(".modal_3").fadeIn();
	});

	$(".modal_content_3").click(function() {
		$(".modal_3").fadeOut();
	});

	$("#modal_button_4").click(function() {
		$(".modal_4").fadeIn();
	});

	$(".modal_content_4").click(function() {
		$(".modal_4").fadeOut();
	});

	$(".tab-5_content").click(function() {
		$(".modal_5").fadeIn();
	});

	$(".modal_5").click(function() {
		$(".modal_5").fadeOut();
	});

	$(".tab-6_content").click(function() {
		$(".modal_6").fadeIn();
	});

	$(".modal_6").click(function() {
		$(".modal_6").fadeOut();
	});


	$(".tab-7_content").click(function() {
		$(".modal_7").fadeIn();
	});

	$(".modal_7").click(function() {
		$(".modal_7").fadeOut();
	});


	$(".tab-8_content").click(function() {
		$(".modal_8").fadeIn();
	});

	$(".modal_8").click(function() {
		$(".modal_8").fadeOut();
	});
});