<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include �׽�Ʈ</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<style>
footer {
position: fixed;  bottom : 10px; width: 100%; text-align: center
}

</style>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	<h1>template.jsp �����Դϴ�.</h1>
	<footer>
		<%@ include file="footer.jsp" %>
	</footer>
</body>
</html>