<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../css/ch5-12.css">
</head>
<body>
<h1>������ �Ӽ� �׽�Ʈ</h1>
	<table>
		<tr>
			<td colspan=2 >Application ������ ����� �����</td>
		</tr>
		
		<tr>
			<td>�̸�</td>
			<td><%= application.getAttribute("name") %></td>
		</tr>
		
		<tr>
			<td>���̵�</td>
			<td><%= application.getAttribute("id") %></td>
		</tr>
		
	</table>

		<table>
		<tr>
			<td colspan=2>Session ������ ����� �����</td>
		</tr>
		
		<tr>
			<td>email �ּ�</td>
			<td><%= session.getAttribute("email") %></td>
		</tr>
		
		<tr>
			<td>���ּ�</td>
			<td><%= session.getAttribute("address") %></td>
		</tr>
		
		<tr>
			<td>��ȭ��ȣ</td>
			<td><%= session.getAttribute("tel") %></td>
		</tr>
		
	</table>

</body>
</html>