<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--https://www.w3schools.com/bootstrap4/tryit.asp?filename=trybs_filters_table&stacked=h --%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container mt-3">
	<h2>�α� ��� Table</h2>
	<p>��ǰ�Է��ϼ���.</p>
	<input class="form-control" id="myInput" type="search"
		placeholder="Search.."> <br>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>��ǰ�̸�</th>
				<th>����</th>
				<th>������</th>
			</tr>
		</thead>
		<tbody id="myTable">
			<tr>
				<td>��ġ</td>
				<td>1000</td>
				<td>����</td>
			</tr>
			<tr>
				<td>��Ÿ��</td>
				<td>100</td>
				<td>�ǰ��� ����</td>
			</tr>
			<tr>
				<td>��¡��</td>
				<td>700</td>
				<td>�ٴ�</td>
			</tr>
			<tr>
				<td>������</td>
				<td>300</td>
				<td>�ÿ��ѳ���</td>
			</tr>
		</tbody>
	</table>
</div>
<script>
	$("#myTable tr").each(function(index) {
		console.log(index);
		if (index % 2 == 0) {
			$(this).toggle(true);   //true�̸� show()
		   // $(this).show();
		}else{
			$(this).toggle(false); //false�̸� hide()
			//$(this).hide(); 
		}
	});
</script>

</body>
</html>