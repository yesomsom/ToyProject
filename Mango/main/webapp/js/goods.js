$(function() {
	var pageNum = getParameter("pageNum");
	if (pageNum == "") {
		pageNum = 1;
	}
	$.ajax({
		url: "/page/goods_ajax.do",
		type: "get",
		data: {
			pageNum: pageNum,
			amount: $("#amount").val()
		},
		success: function(data) {
			var res = JSON.parse(data);
			var html = "";
			for (i = 0; i < res.length; i++) {
				html += make_goodsList(res[i]);
			}
			$(".Goods_list").html(html);
		}
	})
})

function getParameter(name) {
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		results = regex.exec(location.search);
	return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

$(".selectCat").on("click", function() {
	var goodsCate = $(this).data("goods");
	$.ajax({
		url: "/page/goods_ajax.do",
		type: "get",
		data: {
			goodsCategory: goodsCate
		},
		success: function(data) {
			var res = JSON.parse(data);
			var html = "";
			for (i = 0; i < res.length; i++) {
				html += make_goodsList(res[i]);
			}
			$(".Goods_list").html(html);
		}
	})
})

function make_goodsList(data) {
	html = `<li>
					<a href="goodsDetail.do?goodsId=`+ data.goodsId + `">
					<img src="`+ data.realPath + `" width="220px" height="220px">									
					<div>`+ data.goodsName + `</div>
					<div>`+ data.goodsDetail + `</div>
				</a>
			</li>`;
	return html;
}

$(".searchBtn").on("click", function(){
		var kw = $(".searchKeyword").val();
		$("#keyword").val(kw);	
	});