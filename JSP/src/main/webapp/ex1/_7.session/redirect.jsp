<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>redirect.jsp</title>
</head>
<body>
	request 속성 food 값 : <%= request.getAttribute("food") %><br>
	session 속성 food 값 : <%= session.getAttribute("food") %>
</body>
</html>