<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>idcheck.jsp</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<%
	//result = 0 -> 아이디가 존재하지 않는경우
	//result = -1 -> 아이디가 존재하는 경우
	
	int result = (int)request.getAttribute("result");
	%>
	
	<div id=message></div>
	<button>닫기</button>
	
	<script>
	var message = ["사용중인 아이디입니다","사용가능한 아이디입니다"];
	var color = ["red","green"];
	var index = <%=result +1%>;
	
	$('#message').text(message[index]).css("color",color[index]);
	
	$('button').click (function (){
		//opener는 여기로 오게한 join.jsp를 의미합니다
		$(opener.document).find('#opener_message').text(message[index]).css('color',color[index]);
		$(opener.document).find('#result').val('<%=result%>');
		window.close();
	})
	</script>
</body>
</html>