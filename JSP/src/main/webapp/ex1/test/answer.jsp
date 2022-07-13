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
			<td>아이디</td>
			<td><%= request.getAttribute("id") %></td>
		</tr>
		
		<tr>
			<td>비번</td>
			<td><%= request.getAttribute("pass") %></td>
		</tr>
		
		<tr>
			<td>주민번호</td>
			<td> <%= request.getAttribute("jumin1") %> - <%= request.getAttribute("jumin2") %></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><%= request.getAttribute("email") %>@ <%= request.getAttribute("domain") %></td>
		</tr>
		
		<tr>
			<td>성별</td>
			<td><%= request.getAttribute("gender") %></td>
		</tr>
		
		<tr>
			<td>취미</td>
			<td> <%= request.getAttribute("hobbies") %></td>
		</tr>
		
		<tr>
			<td>우편번호</td>
			<td><%= request.getAttribute("post") %></td>
		</tr>
		
		<tr>
			<td>주소</td>
			<td><%= request.getAttribute("address") %></td>
		</tr>
		
		<tr>
			<td>자기소개</td>
			<td><%= request.getAttribute("intro") %></td>
		</tr>
	</table>
	
</body>
</html>