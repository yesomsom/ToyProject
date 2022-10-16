
// 영화관 지역 선택
var cat1_num = new Array(1, 2, 3, 4, 5, 6, 7, 8);
var cat1_name = new Array('서울', '경기/인천', '충청/대전', '전라/광주', '경북/대구', '경남/부산/울산', '강원', '제주');
//2차 카테고리 선언
var cat2_num = new Array();
var cat2_name = new Array();

cat2_num[1] = new Array(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30);
cat2_name[1] = new Array('가산디지털', '가양', '강동', '강서', '관악', '건대입구', '노원', '김포공항', '도곡', '신도림', '신림');

cat2_num[2] = new Array(40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50);
cat2_name[2] = new Array('광주터미널', '동탄', '구리', '부천', '수원', '인천터미널', '주엽', '파주', '판교', '평촌', '하남미사');

cat2_num[3] = new Array(60, 61, 62, 63, 64, 65, 66, 67);
cat2_name[3] = new Array('대전둔산', '대전센트럴', '서산', '서청주', '아산터미널', '천안불당', '청주용암', '충주');

cat2_num[4] = new Array(70, 71, 72, 73, 74, 75);
cat2_name[4] = new Array('광주', '군산', '수완', '익산', '준주', '충장로');

cat2_num[5] = new Array(81, 82, 83, 84, 85, 86);
cat2_name[5] = new Array('경주', '구미', '대구', '동성로', '상인', '상주');

cat2_num[6] = new Array(91, 92, 93, 94, 95);
cat2_name[6] = new Array('거창', '광복', '동래', '마산', '부산');

cat2_num[7] = new Array(100, 101, 102, 103, 104);
cat2_name[7] = new Array('남원주', '동해', '속초', '원주무실', '춘천');

cat2_num[8] = new Array(110, 111, 112);
cat2_name[8] = new Array('서귀포', '제주삼화지구', '제주아라');

function cat1_change(key, sel) {
	//key 값 : 큰 도시의 value 값
	
	if (key == '') return;
	// 도시가 선택되면 key가 null이 아니므로 if를 무시함
	var name = cat2_name[key];
	// name 변수인데 만약 키가 1이면 cat_2name[1]로 첫번째 cat2_name을 갖고옴 그 후에 변수에 저장
	var val = cat2_num[key];
	// val 변수인데 만약 키가 1이면 cat_2num[1]로 첫번째 cat2_name을 갖고옴 그 후에 변수에 저장
	 
	
	
	
	
	//sel.option[i] -> 미리 공간 만들기
	//
	//for (i = sel.length - 1; i >= 0; i--)
	for (i = 0; i <= sel.length - 1; i++)
		sel.options[i] = null;
	sel.options[0] = new Option('-선택-', '', '', 'true');
	for (i = 0; i < name.length; i++) {
		sel.options[i + 1] = new Option(name[i], val[i]);
	}
	for (i = 0; i < name.length; i++) {
		sel.options[i + 1] = new Option(name[i], val[i]);
	}
}


//핸드폰 번호_입력 값이 숫자가 아니면 입력x
function uncomma(str) {
	str = String(str);
	return str.replace(/[^\d]+/g, '');
}

function onlyNum(obj) {
	obj.value = onlynumber(uncomma(obj.value));
}

function onlynumber(str) {
	str = String(str);
	return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1');
}

//체크박스 하나만 선택
function doOpenCheck(chk){
    var obj = document.getElementsByName("check1");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}


//동의 선택 시 확 가능
function fnConfirm(obj) {
	if (obj === 'y') {
		if ($("#agreeBtn1").is(":checked")) {
			$("#agreeForm").submit();
			alert("접수가 완료 되었습니다.");
			return true;
		} else {
			alert("개인정보 수집 및 이용 동의를 해주셔야 등록이 가능합니다.");
			return false;
		}
	} else {
		if (confirm("개인정보 수집 및 이용 미동의 시 서비스 이용이 불가합니다.")) {
		}
		return false;
	}
	return false;
}



//라디오버튼
/*function fnConfirm(){
    if($('input:radio[id=rdo02]').is(':checked')){
        $('input:select[id=area]').hide();
    }else{
        $('input:select[id=area]').show();
    }
}
*/