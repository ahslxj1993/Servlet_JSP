<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<%--
�׼��±� : �±׸� �̿��ؼ� �ٸ� �������� ������ �����Ҽ� �ֵ��� ������ ���
forward �׼��� ���� �������� �ٸ� �������� ��ȯ�Ҷ� ���˴ϴ�
 --%>
<title>�׼��±�</title>
</head>
<body>
<%
request.setAttribute("food","����");
%>

<jsp:forward page="forwardTest2.jsp" />
</body>
</html>