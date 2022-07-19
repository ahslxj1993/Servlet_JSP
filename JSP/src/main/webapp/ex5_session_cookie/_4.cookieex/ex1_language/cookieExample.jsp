<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	String language = "korea";
	
	//header�� �̸� �߿��� Cookie�� ���� �����ɴϴ�
	String cookie = request.getHeader("Cookie");
	
	//��Ű�� �����ϴ� �� Ȯ���մϴ�
	if (cookie != null){
		//�����ϴ� ��Ű���� �迭�� �����ɴϴ�
		Cookie cookies[] = request.getCookies();
		
		//��Ű�� �̸��� "language1" �� ���� ã������ ��Ű �迭���� ��� Ȯ���մϴ�
		for (int i=0 ; i<cookies.length; i++) {
			if(cookies[i].getName().equals("language1")) {
				language =cookies[i].getValue(); //��Ű�� ����� �����ɴϴ�
			}
		}//for end
	}
%>
<script>
$(function () {
	var id = "#<%=language%>";
	console.log(id);
	
	<%--var id = "input[value= '<%=language%>']" --%>
	$(id).prop('checked', true);
})

</script>
</head>
<body>
	<%
	 if (language.equals("korea")){
	%>
	<h3>�ȳ��ϼ���. �̰��� ��Ű �����Դϴ�</h3>
	<%
	 } else {
	%>
	<h3>Hello. This is Cookie Example.</h3>
	<%
	 }
	%>
	<form action="cookieExample2.jsp" method="post">
		<fieldset>
			<input type="radio" name="language" value="korea" id="korea"> �ѱ��� ������ ����
			<input type="radio" name="language" value="english" id="english"> ���� ������ ����
			<input type="submit" value="����">
		</fieldset>
	</form>
</body>
</html>