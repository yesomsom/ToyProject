<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>

<style type="text/css">
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>
	<h3>sms인증페이지</h3>
	<div id="contents">
		<form action="/page/sendSms/insert.do" method="post">
			받는사람 : <input type="text" id="to" name="to" />
			<!-- 인증번호 받을사람 휴대폰 번호 -->
			<input type="button" id="send" value="전송" /><br>
			<!-- 문자보내는 전송버튼 -->
			인증번호 : <input type="text" id="userNum">
			<!-- 인증번호 입력창 -->
			<input type="button" id="enterBtn" value="확인">
			<!-- 인증번호와 내가 입력창에 입력한 인증번호 비교하는 창 -->
			<input type="hidden" name="text" id="text">
			<!-- 인증번호를 히든으로 저장해서 보낸다 -->

		</form>
	</div>

	<script type="text/javascript">
   function setParentText(){
      opener.document.getElementById("phone").value = document.getElementById("to").value
      
      window.close()
   }
	</script>

	<!-- 휴대폰 번호 유효성 검사 -->
	<script>
function Phonecheck() {
   var objPhoneNum = document.getElementById("phone");
   
   if(objPhoneNum.value=='') {
      alert("전화번호를 입력해주세요.");
      objPhoneNum.focus(); //전화번호 input에 커서가 깜빡임
      return false;
   }
   
   var RegPhone = /^[0-9]{10,11}$/;
  if(!RegPhone.test(objPhoneNum.value)) {
      alert("유효하지 않은 전화번호입니다.");
      objPhoneNum.focus(); //전화번호 input에 커서가 깜빡임
      return false;
   }
    
}
</script>



	<script>
  var count = 0; /* 문자 중복을 막기 위한 인증번호 */
   
 $(document).ready(function() {
    
    $("#send").click(function() {
       
       var number = Math.floor(Math.random() * 100000) + 100000;
          if(number>100000){
             number = number - 10000;
          }
          $("#text").val(number);      
       
       var to = $("#to").val();
       
       if(to == "" || to == null){
          alert("빈칸이나 공백을 채워주세요");
       }
       
       else {
       var con_test = confirm("해당번호로 인증문자를 발송하시겠습니까?");  
          
          if(con_test == true){
             // 인증번호 얻기위한 통신
             $.ajax({
                url : "/page/sendSms/insert.do",
                type : "post",
                data:{
                 to : $("#to").val(),
                 text : $("#text").val()
                },
                success : function(res){ // 통신 성공 시
                   alert("인증번호를 발송했습니다");
                   console.log(res)
                }
             })
             
          
          }
             else if(con_test == false){
                
             }
         }   
    })
    
    $("#enterBtn").click(function() {   /* 내가 작성한 번호와 인증번호를 비교한다 */
      
       var userNum = $("#userNum").val();
       
       var sysNum = $("#text").val();         
       
       if(userNum == null || userNum == ""){
          alert("휴대폰으로 발송된 인증번호를 입력해주세요");
       }     
       else{     
          if(userNum.trim() == sysNum.trim()){
              alert("정상적으로 인증되었습니다.");
              setParentText()     
              
              return 
           }
           else {
              alert("인증번호가 일치하지 않습니다.");
           }          
       }
    });
  });
  </script>

</body>
</html>