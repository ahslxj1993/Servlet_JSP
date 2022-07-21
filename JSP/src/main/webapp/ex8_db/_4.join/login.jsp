<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű�� �̿��� ���̵� ����ϱ�</title>
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
	//result = -1 -> ���̵� ��ġ�ϰ� ��й�ȣ�� ��ġ���� �ʴ°��
	//result = 0 -> ���̵� �������� �ʴ°��
	if(result != 'null') {
		if (result === '-1'){
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
		} else if (result === "0") {
			alert("���̵� �������� �ʽ��ϴ�");
		}
		<%session.removeAttribute("login_result"); %>
	}
	
	//Login.java���� ã���� �ϴ� ��Ű�� ���°�� String id =""; ����Ǿ� 18���� ���� id�� ���� �� ���ڿ��Դϴ�
	var id = '<%=request.getAttribute("id")%>';
	if(id){ //��Ű�� ���� ����Ǿ� �ִ°��
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
		<label class="custom-control-label" for="remember">���̵� ����ϱ�</label>
	</div>
	
	
	<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
	
</form>
</body>
</html>