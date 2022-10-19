$(document).ready(function() {
/* 구매 목록내의 수령인 보기 클릭 시 해당하는 구매 목록의 수령인 정보를 toggle로 열고 닫음 */  
   $(function (){
      let cardCount = document.querySelectorAll(".orders_card");            
      for(let i=0; i<cardCount.length; i++) {
         $(".w_"+i).click(function (){
            $(".t_"+i).toggle();
         });
      }
   })
});