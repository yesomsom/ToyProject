$(document).ready(function() {
	$(".poinm").on("click", function() { // 클릭시 sido list 출력
		var theaterCd = $(this).data("code");
		console.log(theaterCd)
		$.ajax({
			url: "/page/theater_ajax.do",
			type: "get",
			data: {
				mcateCd: theaterCd,
				groupData: 2
			},
			success: function(data) {
				var res = JSON.parse(data);
				var html = "";
				for (i = 0; i < res.length; i++) {
					html += make_html_sido(res[i]); // sido list 출력
				}
				$(".sido_table").html(html);
			}
		})
	})
})

// 클릭시 sgg list 출력
function sido(_this) {
	var theaterCd = $(_this).data("code");
	var sido = $(_this).data("sido");

	$.ajax({
		url: "/page/theater_ajax.do",
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		type: "get",
		data: {
			mcateC: theaterCd,
			sidoNm: sido,
			groupData: 3
		},
		success: function(data) {
			var res = JSON.parse(data);

			var html = "";
			for (i = 0; i < res.length; i++) {
				html += make_html_sgg(res[i]); // sgg list 출력
			}
			$(".sgg_table").html(html);

		}
	})
}

// bra list 출력
function sgg(_this) {
	var theaterCd = $(_this).data("code");
	var sido = $(_this).data("sido");
	var sgg = $(_this).data("sgg");

	$.ajax({
		url: "/page/theater_ajax.do",
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		type: "get",
		data: {
			mcateCd: theaterCd,
			sidoNm: sido,
			sggNm: sgg,
			groupData: 4
		},
		success: function(data) {
			var res = JSON.parse(data);
			var html = "";
			for (i = 0; i < res.length; i++) {
				html += make_html_bra(res[i]);
			}
			$(".bra_table").html(html);

		}
	})

}
function make_html_sido(data) { // sido 리스트 - sido클릭시 sgg 생성
	html = `<tr><td onclick="sido(this)" data-code="` + data.mcateCd
		+ `" data-sido="` + data.sidoNm + `">` + data.sidoNm
		+ `</td></tr>`;
	return html
}
function make_html_sgg(data) { // sgg 리스트 - sgg클릭시 bra 생성
	html = `<tr><td onclick="sgg(this)" data-code="` + data.mcateCd
		+ `" data-sido="` + data.sidoNm + `" data-sgg="`
		+ data.sggNm + `">` + data.sggNm + `</td></tr>`;
	return html
}
function make_html_bra(data) { // bra 리스트  - 클릭시 이벤트 현재 없음
	console.log(data)
	html = `<tr><td  onclick="bra_click(this)" data-x="`+data.x + `" data-y="` + ta.y+`" data-poi="`+data.poiNm+`" data- b ranch="`+data.branchNm+`" > ` + data.branchNm + `</td ></tr > `;
return html
}

	function bra_click(_this){		
		var container = $("#map")[0];
		var location_x = $(_this).data("y");
		var location_y = $(_this).data("x");		
		var poinm = $(_this).data("poi");
		var branchnm = $(_this).data("branch");
		var options = {
			center : new kakao.maps.LatLng(location_x, location_y),
			level : 3
		};
	var map = new kakao.maps.Map(container, options);
	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new kakao.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	/*map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);*/

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

	// 마커 이미지의 주소
	var markerImageUrl = 'https://img.icons8.com/external-smashingstocks-flat-smashing-stocks/344/external-Mango-fruit-smashingstocks-flat-smashing-stocks.png', markerImageSize = new kakao.maps.Size(
			40, 42), // 마커 이미지의 크기
	markerImageOptions = {
		offset : new kakao.maps.Point(20, 42)
	// 마커 좌표에 일치시킬 이미지 안의 좌표
	};

	// 마커 이미지를 생성한다
	var markerImage = new kakao.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);

	// 지도에 마커를 생성하고 표시한다
	var marker = new kakao.maps.Marker({
		position : new kakao.maps.LatLng(location_x, location_y), // 마커의 좌표
		image : markerImage, // 마커의 이미지
		map : map
	// 마커를 표시할 지도 객체
	});

	// 마커 위에 표시할 인포윈도우를 생성한다
	var infowindow = new kakao.maps.InfoWindow({
		content : '<div class="info_window">'+poinm+" "+branchnm+'</div>' // 인포윈도우에 표시할 내용
	});

	// 인포윈도우를 지도에 표시한다
	infowindow.open(map, marker);
		
}