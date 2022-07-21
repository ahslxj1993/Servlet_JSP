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

</head>

<script>
$(function () {
	var result ='<%=session.getAttribute("login_result")%>';
	//result = -1 -> 아이디가 일치하고 비밀번호가 일치하지 않는경우
	//result = 0 -> 아이디가 존재하지 않는경우
	if(result != 'null') {
		if (result === '-1'){
			alert("비밀번호가 일치하지 않습니다");
		} else if (result === "0") {
			alert("아이디가 존재하지 않습니다");
		}
		<%session.removeAttribute("login_result"); %>
	}
	
	//Login.java에서 찾고자 하는 쿠키가 없는경우 String id =""; 적용되어 18라인 변수 id의 값은 빈 문자열입니다
	var id = '<%=request.getAttribute("id")%>';
	if(id){ //쿠키에 값이 저장되어 있는경우
		$("#id").val(id);
		$("#remember").prop('checked',  true);
	}
})

</script>

<body>
<form action="login_ok" method="post" class="border-light p-5">
	<p class="h4 mb-4 text-center">login</p>
	<div class="form-group">
		<label for="id">id</label>
		<input type="text" class="form-control"	id="id"	placeholder="Enter id" name="id"
		required="required">
	</div>
	
	<div class="form-group">
		<label for="pass">Password</label>
		<input type="password" class="form-control"	id="pass"	placeholder="Enter password" name="passwd"
		required="required">
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