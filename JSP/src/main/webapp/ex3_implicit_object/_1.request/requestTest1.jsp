<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Request Test(requestTesete1.jsp)</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
 .container {width: 70%; text-align : center}
</style>

</head>
<body>
	<div class="container">
		<h3>Request 에제입니다</h3>
		<table class="table">
			<tr>
				<td>이름</td>
				<td>
					<%=request.getParameter("name") %>
				</td>
			</tr>
			
			<tr>
				<td>성별0</td>
				<td>
					<%
						if (request.getParameter("gender").equals("male")){
					%>
						남자
					<%
						} else {
					%>
						여자
					<%
						}
					%>
				</td>
			</tr>
			
			<tr>
				<td>취미</td>
				<td>
					<!-- 
						hobby란 이름을 가진 파라미터는 여러개의 값을 가질수 있으므로
						getParameterValues()메서드를 이용하여 String 배열로 값을 가져옵니다					
					 -->
					<% String [] hobbies = request.getParameterValues("hobby");
					 	for (String hobby : hobbies){
					 %>
					<%=hobby%>&nbsp;&nbsp;
					<%
					 	}
					%>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>