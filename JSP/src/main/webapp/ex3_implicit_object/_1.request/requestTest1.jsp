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
		<h3>Request �����Դϴ�</h3>
		<table class="table">
			<tr>
				<td>�̸�</td>
				<td>
					<%=request.getParameter("name") %>
				</td>
			</tr>
			
			<tr>
				<td>����0</td>
				<td>
					<%
						if (request.getParameter("gender").equals("male")){
					%>
						����
					<%
						} else {
					%>
						����
					<%
						}
					%>
				</td>
			</tr>
			
			<tr>
				<td>���</td>
				<td>
					<!-- 
						hobby�� �̸��� ���� �Ķ���ʹ� �������� ���� ������ �����Ƿ�
						getParameterValues()�޼��带 �̿��Ͽ� String �迭�� ���� �����ɴϴ�					
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