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
<%
	request.setCharacterEncoding ("euc-kr");
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	
	application.setAttribute("name",name);
	application.setAttribute("id",id);
%>
<%=application.getAttribute("name") %>님 반갑습니다<br>
<%=application.getAttribute("name") %>님의 아이디는 <%=application.getAttribute("id") %>입니다 
<form action="attributeTest2.jsp" method="post">

	<table>
		<tr>
			<td colspan=2 style=background-color:lightgreen>Session 영역에 저장할 내용들</td>
		</tr>
		
		<tr>
			<td style=background-color:orange>email 주소</td>
			<td style=background-color:yellow><input type="text" id="email" name="email"></td>
		</tr>
		
		<tr>
			<td style=background-color:orange>집주소</td>
			<td style=background-color:yellow><input type="text" id="tel" name="address"></td>
		</tr>
		
		<tr>
			<td style=background-color:orange>전화번호</td>
			<td style=background-color:yellow><input type="text" id="tel" name="tel"></td>
		</tr>
		
		<tr>
			<td colspan=2 style=background-color:green><button type="submit">전송</button></td>
		</tr>
	</table>

</form>
</body>
</html>