<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>scope.jsp</title>
</head>
<body>
	request 加己 food狼 蔼 : <%= request.getAttribute("food") %><br>
	session 加己 food狼 蔼 : <%= session.getAttribute("food") %><br>
	ServletContext 加己 food 狼 蔼 : <%=application.getAttribute("food") %>
</body>
</html>