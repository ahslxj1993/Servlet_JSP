<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>redirect.jsp</title>
</head>
<body>
	request �Ӽ� food �� : <%= request.getAttribute("food") %><br>
	session �Ӽ� food �� : <%= session.getAttribute("food") %>
</body>
</html>