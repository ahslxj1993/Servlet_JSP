<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ex8_template.Template_join" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link  href="<%=request.getContextPath()%>/ex8_db/_4.join/NewFile.css" rel="stylesheet" type="text/css">
<style>
#opener_message {
	margin-top : -10px;
	margin-bottom : 10px;
}
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="<%=request.getContextPath()%>/ex8_db/_4.join/validate4.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<%
	Template_join temp = (Template_join) request.getAttribute("temp");

	if(temp !=null){
%>
	<form action="join_ok" name="myform" id="myform" method="post">
		<div class=container>
		<fieldset>
			<legend>정보수정</legend>
			<label for="id">ID</label>
			<div>
			<input type=text size=10 name=id id=id placeholder='Enter ID' readOnly
			value="<%=temp.getId()%>">
			</div>
			
			<label for=pass>비밀번호</label>
			<input type=password name=pass id=pass placeholder='Enter password'
			value="<%=temp.getPassword() %>>">
			<br>
			
			<label for=jumin1>주민번호</label>
			<input  type=text size=6 maxLength=6 name=jumin1 id=jumin1 placeholder='주민번호 앞자리'
			value="<%=temp.getJumin().substring(0,6)%>">
			<b>-</b>
			<input type=text size=7 maxLength=7 name=jumin2 id=jumin2  placeholder='주민번호 뒷자리'
			value="<%=temp.getJumin().substring(7,14)%>">
			<br>
			<%
			String [] emails = temp.getEmail().split("@");
			%>
			<label for=email>E-Mail</label>
			<input type=text name=email id=email
			value="<%=emails[0]%>">
			@
			<input type=text name=domain id=domain
			value="<%=emails[1]%>">
			<select name=sel id=sel>
				<option value=''>직접입력</option>
				<option value='naver.com'>naver.com</option>
				<option value='daum.net'>daum.net</option>
				<option value='nate.com'>nate.com</option>
				<option value='gmail.com'>gmail.com</option>
			</select>
			<br>
			<%
			if (temp.getGender().equals("m")){
			%>
			<label>성별</label>
			<div class='container2'><!-- type='radio' 는 readOnly가 작동하지 않아 onclick='return false'로 해결합니다 -->
			<input type=radio name=gender value=m id=gender1 onclick="return false" checked>남자
			<input type=radio name=gender value=f id=gender2 onclick="return false">여자
			</div>
			<%
			} else {
			%>
			
			<label>성별</label>
			<div class='container2'><!-- type='radio' 는 readOnly가 작동하지 않아 onclick='return false'로 해결합니다 -->
			<input type=radio name=gender value=m id=gender1 onclick="return false">남자
			<input type=radio name=gender value=f id=gender2 onclick="return false" checked>여자
			</div>
			<% 
			}
			%>
			
			<label>취미</label>
			<div class="container2">
			<input type=checkbox name=hobby id=hobby1 value=공부>공부
			<input type=checkbox name=hobby id=hobby2 value=게임>게임
			<input type=checkbox name=hobby id=hobby3 value=운동>운동
			<input type=checkbox name=hobby id=hobby4 value=등산>등산
			<input type=checkbox name=hobby id=hobby5 value=낚시>낚시
			</div>
			
			<label for=post1>우편번호</label>
			<input type=text size=3 maxLength=5 name=post1 id=post1
			value="<%=temp.getPost()%>">
			<input type=button value="우편검색">
			
			<label for=address>주소</label>
			<input type=text size=50 name=address id=address
			value="<%=temp.getAddress() %>">
			
			<label for=intro>자기소개</label>
			<textarea rows=10 cols=75 name=intro id=intro>
			
			</textarea>
			
		
     		
     		<div class="clearfix">
        	<button type="submit" class="signupbtn">수정완료</button>
        	<button type="reset"  class="cancelbtn">취소</button>
     		</div>
			
		</fieldset>
		</div>
	</form>
<%
	}
%>	
	</body>
</html>