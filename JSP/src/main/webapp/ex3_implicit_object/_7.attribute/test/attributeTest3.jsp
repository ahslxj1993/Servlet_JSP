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
<h1>영역과 속성 테스트</h1>
	<table>
		<tr>
			<td colspan=2 >Application 영역에 저장된 내용들</td>
		</tr>
		
		<tr>
			<td>이름</td>
			<td><%= application.getAttribute("name") %></td>
		</tr>
		
		<tr>
			<td>아이디</td>
			<td><%= application.getAttribute("id") %></td>
		</tr>
		
	</table>

		<table>
		<tr>
			<td colspan=2>Session 영역에 저장된 내용들</td>
		</tr>
		
		<tr>
			<td>email 주소</td>
			<td><%= session.getAttribute("email") %></td>
		</tr>
		
		<tr>
			<td>집주소</td>
			<td><%= session.getAttribute("address") %></td>
		</tr>
		
		<tr>
			<td>전화번호</td>
			<td><%= session.getAttribute("tel") %></td>
		</tr>
		
	</table>

</body>
</html>