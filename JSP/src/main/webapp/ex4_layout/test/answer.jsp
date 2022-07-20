<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<title>answer.jsp</title>

<style>
	table {
	margin : 0 auto;
	border-collapse : collapse;
	width: 500px;
	}
	
	tr {
	border-bottom : 1px solid black;
	height: 3em;
	}
</style>
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
			<td> <%= request.getAttribute("jumin") %></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><%= request.getAttribute("email") %></td>
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