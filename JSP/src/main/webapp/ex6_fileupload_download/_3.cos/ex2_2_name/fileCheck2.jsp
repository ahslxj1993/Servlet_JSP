<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
body {
text-align: center
}

table {
text-align:center;
width: 80%
}

table tr td:first-child {
width: 30%
}

</style>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
String name = request.getParameter("name");
String subject = request.getParameter("subject");
String systemName1 = request.getParameter("systemName1");
String systemName2 = request.getParameter("systemName2");
String origfileName1 = request.getParameter("origfileName1");
String origfileName2 = request.getParameter("origfileName2");
String uploadPath = request.getParameter("uploadPath");
%>
<div class="container">
<h1>파일 다운로드 폼</h1>
<table class="table-striped">
	<tr>
		<td>작성자</td>
		<td><%=name %></td>
	</tr>
	
	<tr>
		<td>제목</td>
		<td><%= subject%></td>
	</tr>
	
	<tr>
		<td>파일명1</td>
		<td><a href="file_down2.jsp?file_name=<%=systemName1 %>"><%=origfileName1 %></a></td>
	</tr>
	
	<tr>
		<td>파일명2</td>
		<td><a href="file_down2.jsp?file_name=<%=systemName2 %>"><%=origfileName2 %></a></td>
	</tr>
	
	<tr>
		<td>uploadPath</td>
		<td><%=uploadPath %></td>
	</tr>
</table>
</div>
</body>
</html>