<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<title>answer.jsp</title>
</head>
<body>
	<table>
		<tr>
			<td>���̵�</td>
			<td><%= request.getAttribute("id") %></td>
		</tr>
		
		<tr>
			<td>���</td>
			<td><%= request.getAttribute("pass") %></td>
		</tr>
		
		<tr>
			<td>�ֹι�ȣ</td>
			<td> <%= request.getAttribute("jumin1") %> - <%= request.getAttribute("jumin2") %></td>
		</tr>
		
		<tr>
			<td>�̸���</td>
			<td><%= request.getAttribute("email") %>@ <%= request.getAttribute("domain") %></td>
		</tr>
		
		<tr>
			<td>����</td>
			<td><%= request.getAttribute("gender") %></td>
		</tr>
		
		<tr>
			<td>���</td>
			<td> <%= request.getAttribute("hobbies") %></td>
		</tr>
		
		<tr>
			<td>�����ȣ</td>
			<td><%= request.getAttribute("post") %></td>
		</tr>
		
		<tr>
			<td>�ּ�</td>
			<td><%= request.getAttribute("address") %></td>
		</tr>
		
		<tr>
			<td>�ڱ�Ұ�</td>
			<td><%= request.getAttribute("intro") %></td>
		</tr>
	</table>
	
</body>
</html>