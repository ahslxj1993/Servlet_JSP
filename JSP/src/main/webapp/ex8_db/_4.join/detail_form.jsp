<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ex8_template.Template_join" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>detail_form.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.container {
	margin-top : 3em;
}

table, h4 {
	text-align : center;
}

caption {
	caption-side: top;
	text-align : center;
	font-size: 25px;
	font-weight: bold;
}
</style>
</head>
<body>
<jsp:include page="top.jsp" />
<%
Template_join temp = (Template_join) request.getAttribute("temp");
if (temp != null) {
%>
<div class="container">
	<table class="table table-bordered table-striped">
		<caption><%=temp.getId()%> ������</caption>
		<tr>
			<th>���̵�</th><td><%=temp.getId() %></td>
		</tr>
		
		<tr>
			<th>�ֹι�ȣ</th><td><%=temp.getJumin() %></td>
		</tr>
		
		<tr>
			<th>�̸���</th><td><%=temp.getEmail() %></td>
		</tr>
		
		<tr>
			<th>����</th><td><%=temp.getGenderView() %></td>
		</tr>
		
		<tr>
			<th>���</th><td><%=temp.getHobby() %></td>
		</tr>
		
		<tr>
			<th>�����ȣ</th><td><%=temp.getPost() %></td>
		</tr>
		
		<tr>
			<th>�ּ�</th><td><%=temp.getAddress() %></td>
		</tr>
		
		<tr>
			<th>�ڱ�Ұ�</th><td><%=temp.getIntro() %></td>
		</tr>
		
		<tr>
			<th>������</th><td><%=temp.getRegister_date() %></td>
		</tr>
	</table>

<%
} else{
	out.write("<h4>��ȸ�� �����Ͱ� �����ϴ�..</h4>");
}
%>
</div>


</body>
</html>