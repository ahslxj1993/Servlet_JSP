<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
<link  href="<%=request.getContextPath()%>/ex8_db/_4.join/NewFile.css" rel="stylesheet" type="text/css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="<%=request.getContextPath()%>/ex8_db/_4.join/validate3.js" charset="euc-kr"></script>
</head>
<body>
	<form action="join_ok" name="myform" id="myform" method="post">
		<div class=container>
		<fieldset>
			<legend>유효성 검사</legend>
			<label for="id">ID</label>
			<div>
			<input type=text size=10 name=id id=id placeholder='Enter ID'>
			<input type=button value=ID중복검사>
			</div>
			
			<label for=pass>비밀번호</label>
			<input type=password name=pass id=pass placeholder='Enter password'>
			<br>
			
			<label for=jumin1>주민번호</label>
			<input  type=text size=6 maxLength=6 name=jumin1 id=jumin1 placeholder='주민번호 앞자리'>
			<b>-</b>
			<input type=text size=7 maxLength=7 name=jumin2 id=jumin2  placeholder='주민번호 뒷자리'>
			<br>
			
			<label for=email>E-Mail</label>
			<input type=text name=email id=email>
			@
			<input type=text name=domain id=domain>
			<select name=sel id=sel>
				<option value=''>직접입력</option>
				<option value='naver.com'>naver.com</option>
				<option value='daum.net'>daum.net</option>
				<option value='nate.com'>nate.com</option>
				<option value='gmail.com'>gmail.com</option>
			</select>
			<br>
			
			<label>성별</label>
			<div class='container2'><!-- type='radio' 는 readOnly가 작동하지 않아 onclick='return false'로 해결합니다 -->
			<input type=radio name=gender value=m id=gender1 >남자
			<input type=radio name=gender value=f id=gender2 >여자
			</div>
			
			<label>취미</label>
			<div class="container2">
			<input type=checkbox name=hobby id=hobby1 value=공부>공부
			<input type=checkbox name=hobby id=hobby2 value=게임>게임
			<input type=checkbox name=hobby id=hobby3 value=운동>운동
			<input type=checkbox name=hobby id=hobby4 value=등산>등산
			<input type=checkbox name=hobby id=hobby5 value=낚시>낚시
			</div>
			
			<label for=post1>우편번호</label>
			<input type=text size=3 maxLength=5 name=post1 id=post1 >
			<input type=button value="우편검색">
			
			<label for=address>주소</label>
			<input type=text size=50 name=address id=address>
			
			
			<label for=intro>자기소개</label>
			<textarea rows=10 cols=75 name=intro id=intro></textarea>
			
		
     		
     		<div class="clearfix">
        	<button type="submit" class="signupbtn">회원가입</button>
        	<button type="reset"  class="cancelbtn">취소</button>
     		</div>
			
		</fieldset>
		</div>
	</form>
	
	</body>
</html>