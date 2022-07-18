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
		String check_value = request.getParameter("remember");
		Cookie cookie = new Cookie("id",request.getParameter("id"));
		//아이디 기억하기를 체크한 경우
		if (check_value != null && check_value.equals("store")) {
			cookie.setMaxAge(2*60);//유효시간 2분
			response.addCookie(cookie); //클라이언트로 쿠키값 전송
		} else {
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}

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