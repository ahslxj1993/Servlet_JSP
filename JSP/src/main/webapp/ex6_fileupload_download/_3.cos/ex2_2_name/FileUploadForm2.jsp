<%-- webapp 폴더 아래 "upload" 폴더 생성후 실행하십시오 --%>

<%-- 
일반 파라미터를 전송할때 사용한느 인코딩과 파일을 업로드 할때 사용하는 인코딩은 다릅니다
스트림 기반의 전송 방식인 POST 방식은 다음의 두가지 인코딩 방식에 따라서 전송하는 데이터 형식이 달라집니다.

1.application/x-www-form-urlencoded
2.multipart/form-data

지금까지의 예제들은 1번 인코딩을 사용해서 데이터를 전송했습니다
파일을 업로드하기 위해서는 2번 인코딩을 사용해야 합니다
form 태그의 enctype 속성값을 "multypart/form-data"로 지정해 주면 됩니다
method는 post 방식입니다
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>FileUpload Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 <style>
 .container {width:500px;  margin-top:3em}
 .input-group-text {width:74px;}
 </style>
</head>
<body>
	<div class="container">
	<%-- 파일을 업로드 하기 위해서 enctype 속성을 "multipart/form-data" 로 설정합니다 --%>
	<form action="fileUpload2.jsp" method="post" enctype="multipart/form-data">
		<p class="h4 mb-4 text-center">파일 업로드 폼</p>
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text mb-1">작성자</span>
			</div>
			<input type="text" class="form-control" name="name">
		</div>
		
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text">제 목</span>
			</div>
			<input type="text" class="form-control" name="subject">
		</div>
		
		<div class="form-group">
			<input type="file" class="form-control-file border" name="fileName1">
			<!-- 파일을 선택하여 전송할수 있도록 type 속성을 file로 설정합니다 -->
		</div>
		
		<div class="form-group">
			<input type="file" class="form-control-file border" name="fileName2">
		</div>
		
		<button type="submit">Submit</button>
	
	</form>
	
	</div>
</body>
</html>