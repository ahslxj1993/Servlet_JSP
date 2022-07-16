<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<h1>액션태그</h1>

<%
String id = request.getParameter("id");
String password = request.getParameter("passwd");
if (id==null) {
%>

<nav>
	<a href="login.jsp">로그인 </a> <a href="join.jsp">회원가입 </a>
</nav>

<%
} else if (! id.equals(application.getInitParameter("id"))){
%>

<script>
alert("아이디가 틀렸습니다");
location.href='login.jsp';
</script>

<%
} else if (! password.equals(application.getInitParameter("password"))){
%>

<script>
alert("비밀번호가 틀렸습니다");
location.href='login.jsp';
</script>

<%
} else {
	
%>
<nav>
<%=request.getParameter("id") %>님 로그인 되었습니다. <a href="logout.jsp">로그아웃</a>
</nav>

<%
}
%>