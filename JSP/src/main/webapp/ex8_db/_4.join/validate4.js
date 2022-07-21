$(document).ready(function() {

	
	
	
	$('form').submit(function() {
		//id 공백 유효성 검사
		if ($.trim($('#id').val()) == '') {
			alert('아이디를 입력하세요');
			$('#id').focus();
			return false;
		}
		


		//패스워드 공백 유효성 검사
		if ($('#pass').val().trim() == '') {
			alert("패스워드를 입력하세요")
			$('#pass').focus();
			return false;
		}

		//주민번호 앞자리 유효성검사
		if ($('#jumin1').val().trim() == '') {
			alert("주민번호 앞자리를 입력하세요");
			$('#jumin1').focus();
			return false;
		}

		//주민번호 앞자리 6자리 유효성검사
		if ($('#jumin1').val().length != 6) {
			alert("주민번호 앞자리 6자리를 입력하세요");
			$('#jumin1').val('');
			$('#jumin1').focus();
			return false;
		}

		//주민번호 뒷자리 유효성검사
		if ($('#jumin2').val().trim() == '') {
			alert("주민번호 뒷자리를 입력하세요");
			$('jumin2').focus();
			return false;
		}

		//주민번호 뒷자리 7자리 유효성 검사
		if ($('#jumin2').val().length != 7) {
			alert("주민번호 뒷자리 7자리를 입력하세요");
			$('#jumin2').val('');
			$('#jumin2').focus();
			return false;
		}

		//이메일 공백 유효성 검사
		if ($('email').val() == '') {
			alert('이메일을 입력하세요');
			$('email').focus();
			return false;
		}

		//도메인 공백 유효성 검사
		if ($('#domain').val() == "") {
			alert("도메인을 입력하세요");
			$('#domain').focus();
			return false;
		}

		//라디오 버튼 선택 유효성 검사
		var genders = $('input[type=radio]:checked');
		if (genders.length == 0) {
			alert("남, 녀중 하나를 선택해주세요");
			return false;
		}

		//취미를 두개이상  체크하도록 하는 유효성 검사
		var cnt = $('input:checkbox:checked').length;


		/*var cnt = 0;
		var hobbies = $('input[name=hobby]:checked');
		for (var i = 0; i < hobbies.length; i++) {
			if (hobbies[i].checked)
				cnt++;
		}*/

		if (cnt < 2) {
			alert("취미를 두개 이상 선택해주세요");
			return false;
		}

		//우편번호 공백 유효성 검사
		if ($('#post1').val() == "") {
			alert("우편번호를 입력해주세요");
			post1.focus();
			return false;
		}
		
		

		//우편번호 숫자 유효성 검사
		if (!$.isNumeric($('#post1').val())) {
			alert('우편번호는 숫자만 입력 가능합니다.');
			$('#post1').val('').focus();
			return false;
		}
		
		//우편번호 다섯자리 유효성 검사
		if ($.trim($('#post1').val()).length!=5){
			alert('우편번호는 다섯자리입니다');
			return false;
		}
		
		//주소 공백 유효성 검사
		if ($('#address').val() == "") {
			alert("주소를 입력헤주세요");
			address.focus();
			return false;
		}

		//자기소개 공백 유효성 검사
		if ($('#intro').val() == "") {
			alert("자기소개를 입력해주세요");
			intro.focus();
			return false;
		}


	})//myform submit


	//앞자리 정규식에 맞추면 뒷자리로 포커스 이동
	//<input  type=text size=6 maxLength=6 name=jumin1 id=jumin1  onKeyup="move()" placeholder='주민번호 앞자리'>
	$('#jumin1').on('keyup', function() {
		var jumin1 = $("#jumin1");
		var jumin2 = $("#jumin2");

		//주민번호 앞자리 6자리인 경우
		if (jumin1.val().trim().length == 6) {
			pattern = /^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])$/
			if (pattern.test(jumin1.val())) {
				jumin2.focus();
			} else {
				alert("숫자 또는 형식에 맞게 입력하세요");
				jumin1.val('');
				jumin1.focus();
				return false;
			}
		}
	})//keyup jumin1

	//주민번호 뒷자리 첫 수에 따라 성별결정
	//<input type=text size=7 maxLength=7 name=jumin2 id=jumin2   onKeyup="move()" placeholder='주민번호 뒷자리'>
	$('#jumin2').on('keyup', function() {
		if ($(this).val().trim().length == 7) {
			pattern = /^[1234][0-9]{6}$/;
			if (pattern.test($(this).val())) {
				//주민번호 뒷자리에 따라 남자여자 성별 라디오 버튼 자동선택
				var c = Number($(this).val().substring(0, 1));
				var index = (c - 1) % 2; //c=1 or c=3 -> index=0 -> 1 -> "gender1"
				//c=2 or c=4 -> index=1 ->2 -> "gender2"
				$('input[type=radio]').eq(index).prop('checked', true);
			} else {
				alert('숫자 또는 형식에 맞게 입력하세요');
				$(this).val('');
				$(this).focus();
			}
		}
	})//keyup jumin2

	//도메인 셀렉터
	//select 태그에서 선택한 도메인 설정
	$('#sel').on('change', function() {

		if ($(this).val() == "") {//직접입력 선택된 경우
			$('#domain').prop('readonly', false);
			$('#domain').val('').focus();
		} else { //option 중에서 선택한 경우
			$('#domain').prop('readonly', true); //수정불가
			$('#domain').val($('#sel').val());
		}
	})//onchange sel

	//<input type=button value="우편검색" onclick="post()">
	$('input[value="우편검색"]').click(function() {
		Postcode();
	})//onclick input value=우편검색
	
	
	//function Postcode
	function Postcode() {
        new daum.Postcode({
            oncomplete: function(data) {
            	console.log(data.zonecode)
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("post1").value=data.zonecode;
                document.getElementById("address").value=fullRoadAddr;
            }
        }).open();
    }//function Postcode()
	
})//ready