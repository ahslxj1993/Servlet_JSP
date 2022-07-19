<%-- webapp 폴더 아래 upload 폴더 생성후 실행하십시오 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<%--업로드 하기위해 MultipartRequest 객체를 import 합니다 --%>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>

<%--파일 이름 중복 처리를 하기 위해 DefaultFileRenamePolicy 객체를 import 합니다 --%>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page trimDirectiveWhitespaces= "true" %>

<%
String uploadPath = application.getRealPath("upload");
out.print("upload 경로 : "+uploadPath);

int size = 10*1024*1024; //파일최대 크기를 10MB로 지정합니다
String name ="";
String subject = "";
String systemName1 = "";
String systemName2 = "";
String origfileName1="";
String origfileName2="";

try{
	//업로드를 담당하는 부분입니다.
	//첫번째 인자  request : 폼에서 가져온 값을 얻기위해 request객체를 전달해줍니다
	//두번째 인자 uploadPath: 업로드 될 파일의 위치 입니다
	//세번째 인자 size: 업로드 할 크기이면 지정 크기보다 크면 Exception이 발생합니다
	//네번째 인자 "euc-kr": 파일 이름이 한글인 경우 처리하는 부분입니다
	//다섯번째 인자 : 똑같은 파일을 업로드 할 경우 중복되지 않도록 자동으로 파일이름을 변환해주는 기능을 합니다
	MultipartRequest multi = new MultipartRequest (request,
							uploadPath,
							size,
							"euc-kr",
							new DefaultFileRenamePolicy());
	name=multi.getParameter("name");
	subject = multi.getParameter("subject");
	
	//name=fileName1의 input에서 올린 파일의 시스템상의 파일명을 얻어옵니다
	//중복된 파일명의 경우 파일명 맨뒤에 숫자를 붙여 처리합니다
	systemName1=multi.getFilesystemName("fileName1");
	
	//name=fileName1의 input에서 업로드한 원본 파일명을 얻어옵니다.
	origfileName1 = multi.getOriginalFileName("fileName1");
	
	systemName2=multi.getFilesystemName("fileName2");
	origfileName2 = multi.getOriginalFileName("fileName2");
} catch (Exception e){
	e.printStackTrace();
	out.print("에러입니다");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파일 업로드</title>
</head>
<body>
<br>
<form name="filecheck" action="fileCheck2.jsp" method="post">
	<input type="hidden" name="name" value="<%=name %>">
	<input type="hidden" name="subject" value="<%=subject %>">
	
	<input type="hidden" name="systemName1" value="<%=systemName1 %>">
	<input type="hidden" name="systemName2" value="<%=systemName2 %>">
	
	<input type="hidden" name="origfileName1" value="<%=origfileName1 %>">
	<input type="hidden" name="origfileName2" value="<%=origfileName2 %>">
	
	<input type="hidden" name="uploadPath" value="<%=uploadPath %>">
	
	<input type="submit" value="업로드 확인 및 다운로드 페이지 이동">
</form>
</body>
</html>