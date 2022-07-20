<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/ch03-5.css" type="text/css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
.container {
width:50%;
margin-top: 3em;
}
</style>
</head>
<body>
<div class="container">
	<form action="col_select">
	<h3>�˻��� �÷� ���� �����ϼ���</h3>
	<input type=search name=search class='form-control mb-3' placeholder='�˻�� �Է��ϼ���'>
	<button  type='submit' class='btnt btn-primary'>Submit</button>
	</form>
	
	<script>
		var menus= ["�����ȣ","����̸�","����","�Ŵ���","�Ի�����","�޿�","Ŀ�̼�","�μ���ȣ"];
		var output = "<select name='field' class='custom=select mt-3 mb-3'>";
		
		$.each(menus, function (index, item){
			output += "<option value=" + index +">" + menus[index] + "</option>";
		})
		
		output+= "</select>";
		$("form").find("input").before(output);
	</script>
</div>
</body>
</html>