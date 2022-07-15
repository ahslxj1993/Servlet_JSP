<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
	body {text-align : center}
	
	table {text-align : center; margin: 0 auto; width: 80%}
	
	tr {height : 80px}
</style>

</head>
<body>
<h1>영역과 속성 테스트</h1>
<form action="attributeTest1.jsp" method="post">
	<table>
		<tr>
			<td colspan=2 style=background-color:lightgreen>Application 영역에 저장할 내용들</td>
		</tr>
		
		<tr>
			<td style=background-color:orange>이름</td>
			<td style=background-color:yellow><input type="text" id="name" name="name" required></td>
		</tr>
		
		<tr>
			<td style=background-color:orange>아이디</td>
			<td style=background-color:yellow><input type="text" id="id" name="id" required></td>
		</tr>
		
		<tr>
			<td colspan=2 style=background-color:green><button type="submit">전송</button></td>
		</tr>
	</table>

</form>
</body>
</html>