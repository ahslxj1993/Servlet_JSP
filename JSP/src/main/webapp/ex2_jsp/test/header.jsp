<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h3>
	<%
	if (session.getAttribute("id") == null) {
	%>
	<a href="login.jsp">(로그인)</a>
	<%
	} else {
	%>
	<%=session.getAttribute("id")%>
	님 로그인 되었습니다. <a href="">(로그아웃)</a>
	<%
	}
	%>
</h3>

<script>
$('a[href=""]').click(function () {
	alert("로그아웃 되었습니다");
	<% session.invalidate();%>
})
</script>
<hr>