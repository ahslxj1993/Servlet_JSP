<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
  .container{width:70%; margin-top:30px; vertical-align: middle}
  h3{text-align:center}
</style>

</head>
<body>
	<div class="container">
		<h3>Request �����Դϴ�</h3>
		<form action="requestTest3.jsp" method="get">
			<table class="table">
				<tr>
					<td>�̸�</td>
					<td><input type="text" name="name" class="form-control" required></td>
				</tr>
				
				<tr>
					<td>����</td>
					<td>
						<label>
							<input type="radio" name="gender" value="male">����
						</label>
						
						<label>
							<input type="radio" name="gender" value="female">����
						</label>
					</td>
				</tr>
				
				<tr>
					<td>���</td>
					<td>
						<label>
							<input type="checkbox" name="hobby" value="����">����
						</label>
						
						<label>
							<input type="checkbox" name="hobby" value="����">����
						</label>
						
						<label>
							<input type="checkbox" name="hobby" value="TV��û"> TV��û
						</label>
						
						<label>
							<input type="checkbox" name="hobby" value="�౸"> �౸
						</label>
						
						<label>
							<input type="checkbox" name="hobby" value="��Ÿ"> ��Ÿ
						</label>
					</td>
				</tr>
				
				<tr>
					<td colspan="2"><button type="submit" class="btn btn-success">����</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>