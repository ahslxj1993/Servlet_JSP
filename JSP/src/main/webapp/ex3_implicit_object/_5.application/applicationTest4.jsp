<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
<meta charset="EUC-KR">
<title>Application Test - �ʱ�ȭ �Ķ���� �о����</title>
</head>
<body>
	<h2>web.xml ���� ������ ������������</h2>
	<% String color = application.getInitParameter("color"); %>
	<div style="background:<%=color%>">���� �������ΰ���?</div>
</body>
</html>