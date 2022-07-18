<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키를 이용한 아이디 기억하기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%
	String id = "";
	
	Cookie [] cookies = request.getCookies();
	if (cookies != null) {
		for (int i=0 ; i<cookies.length; i++) {
			if(cookies[i].getName().equals("id")) { //쿠키의 이름이 id인 쿠키를 찾습니다
				id =cookies[i].getValue(); //쿠키의 값을 가져옵니다
			}
		}
	}
	
%>
</head>

<script>
$(function () {
	var id_val ='<%=id%>';
	if (id_val){
		$('#id').val(id_val).css('font-weight','bold');
		$('#remember').prop('checked', true);
	}
	
	$('form').submit (function () {
		var input_id = $.trim($('#id').val());
		if (!input_id) {
			alert("아이디를 입력하세요");
			$("#id").focus();
			return false;
		}
		
		var input_pass = $.trim($("#pass").val());
		if(!input_pass){
			alert("비밀번호를 입력하세요");
			$("$pass").focus;
			return false;
		}
		
	})
})

</script>

<body>
<form action="login_ok.jsp" method="post" class="border-light p-5">
	<p class="h4 mb-4 text-center">login</p>
	<div class="form-group">
		<label for="id">id</label>
		<input type="text" class="form-control"	id="id"	placeholder="Enter id" name="id">
	</div>
	
	<div class="form-group">
		<label for="pass">Password</label>
		<input type="password" class="form-control"	id="pass"	placeholder="Enter password" name="passwd">
	</div>
	
	<div class="form-group custom-control custom-checkbox">
		<input type="checkbox" class="custom-control-input"
				id="remember" name="remember" value="store">
		<label class="custom-control-label" for="remember">아이디 기억하기</label>
	</div>
	
	
	<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
	
</form>
</body>
</html>