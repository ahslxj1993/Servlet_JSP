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
<h1>영역과 속성 테스트</h1>
<h2><%= name %>님의 정보가 모두 저장되었습니다.</h2><br>
<a href="attributeTest3.jsp">확인하러 가기</a>
	
</body>
</html>