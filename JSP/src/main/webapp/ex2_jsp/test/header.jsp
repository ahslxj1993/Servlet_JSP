<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<style>
div {padding:1%; text-align:right; background-color:green; color :white}
a {text-decoration : none; color:white; font-weight:bold}
div:hover {opacity:0.8}
</style>
<div>
<% String id = (String)session.getAttribute("id");
	if (id!= null && !id.equals("")){
%>
	<%= id %>���� �α��� �Ǿ����ϴ�.
	<a href="logout.jsp">(�α׾ƿ�)</a>
<%
	} else {
%>
	<a href="login.jsp">�α���</a>
<%
	}
%>
</div>
