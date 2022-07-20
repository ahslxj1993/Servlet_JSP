<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = application.getInitParameter("id");
	String password = application.getInitParameter("password");
	String input_id = request.getParameter("id");
	String input_password = request.getParameter("passwd");
	
	if (id.equals(input_id) && password.equals(input_password)) {
		session.setAttribute("id",id);
%>
<script>
 alert('<%=id%>님 환영합니다');
 location.href = "templatetest.jsp";
</script>

<%
	} else if (id.equals(input_id)){
%>

<script>
alert("비밀번호를 확인하세요");
history.back();
</script>

<%
	} else {
%>

<script>
alert("아이디를 확인하세요")
history.back();
</script>

<%
	}
%>

</body>