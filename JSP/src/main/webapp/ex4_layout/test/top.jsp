<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<h1>�׼��±�</h1>

<%
String id = request.getParameter("id");
String password = request.getParameter("passwd");
if (id==null) {
%>

<nav>
	<a href="login.jsp">�α��� </a> <a href="join.jsp">ȸ������ </a>
</nav>

<%
} else if (! id.equals(application.getInitParameter("id"))){
%>

<script>
alert("���̵� Ʋ�Ƚ��ϴ�");
location.href='login.jsp';
</script>

<%
} else if (! password.equals(application.getInitParameter("password"))){
%>

<script>
alert("��й�ȣ�� Ʋ�Ƚ��ϴ�");
location.href='login.jsp';
</script>

<%
} else {
	
%>
<nav>
<%=request.getParameter("id") %>�� �α��� �Ǿ����ϴ�. <a href="logout.jsp">�α׾ƿ�</a>
</nav>

<%
}
%>