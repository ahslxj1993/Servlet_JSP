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
	<div><!-- request 객체의 getParameter()메서드를 이용해서 파라미터 "food"의 값을 가져옵니다 -->
	<%-- jsp에서 <%=값 또는 수식 또는 변수 %> 는 '값 또는 수식 또는 변수'를 출력하라는 의미입니다 --%>
	
	request 파라미터 값 : <%= request.getParameter("food") %>
	</div>
	
	<p>
		보여주는 페이지 주소입니다. : <%= request.getRequestURL() %>
	</p>
</body>
</html>