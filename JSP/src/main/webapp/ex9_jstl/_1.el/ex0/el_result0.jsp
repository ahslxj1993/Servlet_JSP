<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL ���尴ü ��� ����</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
%>
<h3>�Ѿ�� �̸�: ${param.name}</h3>
<h3>�Ѿ�� ��� : ${paramValues.hobby[0]} ${paramValues.hobby[1]} </h3>
<h3>session������ �Ӽ� id�� �� : ${sessionScope.id} </h3>
<h3>${id}</h3>
</body>
</html>