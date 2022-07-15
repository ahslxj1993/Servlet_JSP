<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
name 파라미터 값 : <%= request.getParameter("name").toUpperCase(); %>
<%-- name 이라는 이름을 가진 파라미터가 없기 때문에 nullPointError가 발생합니다 --%>
</body>
</html>