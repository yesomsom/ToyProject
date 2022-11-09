$(document).ready(function() {
	/* 구매 목록내의 수령인 보기 클릭 시 해당하는 구매 목록의 수령인 정보를 toggle로 열고 닫음 */
	$(function() {
		for (let i = 0; i < 6; i++) {
			$(".w_" + i).click(function() {
				$(".t_" + i).toggle();
			});
		}
	})
});

function openTracking() {
	window.open("tracking.do", "배송 조회", "width=1600,height=1200");

}