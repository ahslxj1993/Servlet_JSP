<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>logout.jsp</title>
</head>
<body>
	<% session.invalidate(); %>
	<script>
		alert("로그아웃 되었습니다")
		location.href = "bestitem.jsp"
	</script>
</body>
</html>