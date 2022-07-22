<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import=" java.util.*, ex8_template.Template_join" %>
<!DOCTYPE html>
<html>
<head>
<title>list.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="top.jsp" />
	<div class="container">
	<%
		ArrayList<Template_join> list = (ArrayList<Template_join>) request.getAttribute("list");
		if (list != null){
	%>
		<table class="table">
			<thead>
				<tr>
					<td>번호</td>
					<td>아이디</td>
					<td>성별</td>
					<td>취미</td>
					<td>자기소개</td>
					<td>가입일</td>
					<td>삭제</td>
				</tr>
			</thead>
			
			<tbody>
				<%
					int i=0;
					for (Template_join temp : list){
				%>
					<tr>
						<td><%=i++%></td>
						<td><a href="detail?id=<%=temp.getId() %>"><%=temp.getId() %></a></td>
						<td><%=temp.getGenderView() %></td>
						<td><%=temp.getHobby() %></td>
						<td><%=temp.getIntro() %></td>
						<td><%=temp.getRegister_date() %></td>
						<td><button class="btn btn-danger btn-sm">삭제</button></td>
					</tr>
				<%
					}
				%>
			</tbody>
		</table>
	<%
		} else {
			out.print("<h4>조회된 데이터가 없습니다.</h4>");
		}
	%>
	
	</div>
	<script>
$("td > button").click(function () {
	var answer = confirm("정말 삭제하시겠습니까?");
	
	if (answer){
		output = "<form action=delete method=post>";
		output += "<input name=id value="+ $(this).parent().parent().find(":nth-child(2)").text()+">";
		output += "<input type=submit>";
		output += "</form>"
		
		console.log(output);
		
		$("body").append(output);
		$("form").submit(); //폼을 submit합니다
		$("form").css("display","none");
	} else {
		alert("취소를 선택하셨습니다")
	}
})

var result = "<%=session.getAttribute("del_result")%>";
	if (result != 'null'){
		if(result ==1){
			alert("삭제 성공")
		} else {
			alert("삭제 실패")
		}
		<%session.removeAttribute("del_result"); %>
	}
</script>
</body>
</html>