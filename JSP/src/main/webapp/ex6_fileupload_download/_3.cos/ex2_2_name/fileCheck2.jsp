<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<h1>���� �ٿ�ε� ��</h1>
<table class="table-striped">
	<tr>
		<td>�ۼ���</td>
		<td><%= request.getParameter("name") %></td>
	</tr>
	
	<tr>
		<td>����</td>
		<td><%= request.getParameter("subject") %></td>
	</tr>
	
	<tr>
		<td>���ϸ�1</td>
		<td></td>
	</tr>
	
	<tr>
		<td>���ϸ�2</td>
		<td></td>
	</tr>
	
	<tr>
		<td>uploadPath</td>
		<td></td>
	</tr>
</table>
</body>
</html>