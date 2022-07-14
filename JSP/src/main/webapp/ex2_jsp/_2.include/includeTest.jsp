<%--
실행하는 페이지 입니다

*include 지시어(디렉티브)

특정한 JSP파일 또는 HTML 파일을 해당 JSP페이지에 삽입할수 있도록 기능을 제공하는 지시어 입니다.
include 지시어로 지정되어 현재 페이지에 포함되는 JSP파일들을 웹 컨테이너에 의해
다로따로 컴파일되는것이 아니라 그 소스가 include 지시어를 사용한 해당 페이지에
복사되어 더해지는 것으로 웹 컨테이너는 전체 JSP 파일들의 소스가 합쳐진 하나의 페이지만을
컴파일 합니다

여러 JSP 파이지에 공통되는 부분이 많을때 이러한 공통되는 부분을 파일로 만들어
include 지시어로 삽입하고는 합니다
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Include 테스트</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h1>includeTest.jsp 파일입니다.</h1>
	<%@ include file="footer.jsp" %>
</body>
</html>