<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.*, ex8_emp.Emp "%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>ArrayList �̿��մϴ�</title>

<style>
.container {
width: 1000px;
margin-top:3em
}

table, h4 {
	text-align : center;
}
</style>
</head>
<body>
	<div class="container">
	<p>�˻�� �Է��ϼ���</p>
	<input class="form-control" id="myInput" type="text" placeholder="Search..">
	<%
		ArrayList<Emp> list = (ArrayList<Emp>) request.getAttribute("list");
		if (list != null){
	%>
		<table class="table" id="myTable">
			<thead>
				<tr>
					<td>�����ȣ</td>
					<td>����̸�</td>
					<td>����</td>
					<td>�Ŵ���</td>
					<td>�Ի���</td>
					<td>�޿�</td>
					<td>Ŀ�̼�</td>
					<td>�μ���ȣ</td>
				</tr>
			</thead>
			
			<tbody>
				<%
					for (Emp emp : list){
				%>
					<tr>
						<td><%=emp.getEmpno() %></td>
						<td><%=emp.getEname() %></td>
						<td><%=emp.getJob() %></td>
						<td><%=emp.getMgr() %></td>
						<td><%=emp.getHiredate() %></td>
						<td><%=emp.getSal() %></td>
						<td><%=emp.getComm() %></td>
						<td><%=emp.getDeptno() %></td>
					</tr>
				<%
					}
				%>
			</tbody>
		</table>
	<%
		} else {
	%>
		<h4>��ȸ�� �����Ͱ� �����ϴ�</h4>
	<% 
		}
	%>
	</div>
	
<script>
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
</script>

</body>
</html>