<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>dispatcher.jsp</title>

<style>
	body{background:pink}
	div{color:red}
	p{color:green}
</style>

</head>
<body>
<!-- request객체의 getParameter()메서드를 이용해서 파라미터 "food"의 값을 가져옵니다 -->
<%-- jsp에서 <%=값 또는 수식 또는 변수 %> 는 '값 또는 수식 또는 변수'를 출력하라는 의미입니다 --%>

	<div>
		request 속성 food 값 : <%= request.getAttribute("food") %><br>
		request 속성 name 값 : <%= request.getAttribute("name") %>
	</div>
	
	<p>
		요청주소 : <%= request.getRequestURL() %>
	</p>
</body>
</html>


<%--
실행후 주소란을 꼭 확인해보세요
브라우저 주소 표시줄의 URL변경이 없으며 서블릿과 jsp가 같은 
request 영역을 공유하기 때문에 이동된 jsp 페이지에서
request 영역에 공유되어 있는 값에 접근이 가능합니다
 --%>