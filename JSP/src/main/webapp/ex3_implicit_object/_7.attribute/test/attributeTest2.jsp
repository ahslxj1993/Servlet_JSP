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
<%
request.setCharacterEncoding ("euc-kr");

String email = request.getParameter("email");
String address = request.getParameter("address");
String tel = request.getParameter("tel");

session.setAttribute("email",email);
session.setAttribute("address",address);
session.setAttribute("tel",tel);

String name = (String) application.getAttribute("name");
%>
</head>
<body>
<h1>������ �Ӽ� �׽�Ʈ</h1>
<h2><%= name %>���� ������ ��� ����Ǿ����ϴ�.</h2><br>
<a href="attributeTest3.jsp">Ȯ���Ϸ� ����</a>
	
</body>
</html>