<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h3>
	<%
	if (session.getAttribute("id") == null) {
	%>
	<a href="login.jsp">(�α���)</a>
	<%
	} else {
	%>
	<%=session.getAttribute("id")%>
	�� �α��� �Ǿ����ϴ�. <a href="">(�α׾ƿ�)</a>
	<%
	}
	%>
</h3>

<script>
$('a[href=""]').click(function () {
	alert("�α׾ƿ� �Ǿ����ϴ�");
	<% session.invalidate();%>
})
</script>
<hr>