<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<%--
액션태그 : 태그를 이용해서 다른 페이지의 서블릿에 접근할수 있도록 구현된 기능
forward 액션은 현재 페이지를 다른 페이지로 전환할때 사용됩니다
 --%>
<title>액션태그</title>
</head>
<body>
<%
request.setAttribute("food","과자");
%>

<jsp:forward page="forwardTest2.jsp" />
</body>
</html>