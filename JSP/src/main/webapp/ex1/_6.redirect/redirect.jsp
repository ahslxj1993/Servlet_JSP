<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>redirect.jsp</title>

<style>
	body {background : #c7c7ef}
	div {color :white; font-size: 30px ; font-weight:bold}
</style>

</head>
<body>
	<div><!-- request ��ü�� getParameter()�޼��带 �̿��ؼ� �Ķ���� "food"�� ���� �����ɴϴ� -->
	<%-- jsp���� <%=�� �Ǵ� ���� �Ǵ� ���� %> �� '�� �Ǵ� ���� �Ǵ� ����'�� ����϶�� �ǹ��Դϴ� --%>
	
	request �Ķ���� �� : <%= request.getParameter("food") %>
	</div>
	
	<p>
		�����ִ� ������ �ּ��Դϴ�. : <%= request.getRequestURL() %>
	</p>
</body>
</html>