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
<title>ArrayList 이용합니다</title>

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
	<p>검색어를 입력하세요</p>
	<input class="form-control" id="myInput" type="text" placeholder="Search..">
	<%
		ArrayList<Emp> list = (ArrayList<Emp>) request.getAttribute("list");
		if (list != null){
	%>
		<table class="table" id="myTable">
			<thead>
				<tr>
					<td>사원번호</td>
					<td>사원이름</td>
					<td>직급</td>
					<td>매니저</td>
					<td>입사일</td>
					<td>급여</td>
					<td>커미션</td>
					<td>부서번호</td>
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
		<h4>조회된 데이터가 없습니다</h4>
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