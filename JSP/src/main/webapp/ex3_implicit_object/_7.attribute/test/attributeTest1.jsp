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
<h1>������ �Ӽ� �׽�Ʈ</h1>
<%
	request.setCharacterEncoding ("euc-kr");
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	
	application.setAttribute("name",name);
	application.setAttribute("id",id);
%>
<%=application.getAttribute("name") %>�� �ݰ����ϴ�<br>
<%=application.getAttribute("name") %>���� ���̵�� <%=application.getAttribute("id") %>�Դϴ� 
<form action="attributeTest2.jsp" method="post">

	<table>
		<tr>
			<td colspan=2 style=background-color:lightgreen>Session ������ ������ �����</td>
		</tr>
		
		<tr>
			<td style=background-color:orange>email �ּ�</td>
			<td style=background-color:yellow><input type="text" id="email" name="email"></td>
		</tr>
		
		<tr>
			<td style=background-color:orange>���ּ�</td>
			<td style=background-color:yellow><input type="text" id="tel" name="address"></td>
		</tr>
		
		<tr>
			<td style=background-color:orange>��ȭ��ȣ</td>
			<td style=background-color:yellow><input type="text" id="tel" name="tel"></td>
		</tr>
		
		<tr>
			<td colspan=2 style=background-color:green><button type="submit">����</button></td>
		</tr>
	</table>

</form>
</body>
</html>