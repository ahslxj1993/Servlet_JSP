<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.*, ex8.Dept "%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>ArrayList 이용합니다</title>

<style>
.container {
width: 500px;
margin-top:3em
}

table, h4 {
	text-align : center;
}
</style>
</head>
<body>
	<div class="container">
	
	<%
		ArrayList<Dept> list = (ArrayList<Dept>) request.getAttribute("list");
		if (list != null){
	%>
		<table class="table">
			<thead>
				<tr>
					<td>DEPTNO</td>
					<td>DNAME</td>
					<td>LOC</td>
				</tr>
			</thead>
			
			<tbody>
				<%
					for (Dept dept : list){
				%>
					<tr>
						<td><%=dept.getDeptno() %></td>
						<td><%=dept.getDname() %></td>
						<td><%=dept.getLoc() %></td>
					</tr>
				<%
					}
				%>
			</tbody>
		</table>
	<%
		} else {
	%>
		<h4>조회된 데이터가 없습니다</h4>
	<% 
		}
	%>
	</div>
</body>
</html>