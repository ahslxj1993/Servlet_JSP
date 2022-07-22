<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL 내장객체 사용 예제</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
%>
<h3>넘어온 이름: ${param.name}</h3>
<h3>넘어온 취미 : ${paramValues.hobby[0]} ${paramValues.hobby[1]} </h3>
<h3>session영역의 속성 id의 값 : ${sessionScope.id} </h3>
<h3>${id}</h3>
</body>
</html>