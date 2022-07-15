<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
<meta charset="EUC-KR">
<title>Application Test - 초기화 파라미터 읽어오기</title>
</head>
<body>
	<h2>web.xml 에서 설정한 색상으로지정</h2>
	<% String color = application.getInitParameter("color"); %>
	<div style="background:<%=color%>">나는 무슨색인가요?</div>
</body>
</html>