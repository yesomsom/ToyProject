//마우스가 해당 버튼에 올라가면 빨간색으로
$(function() {
  $(".change_heart").mouseenter(function() {
    $(".change_heart").css("color", "red");
  });
});
//마우스 해당 버튼 밖으로 나가면 다시 원상복귀
$(function() {
  $(".change_heart").mouseleave(function() {
    $(".change_heart").css("color", "black");
  });
});