<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>templatetest.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <style>
  footer {
	postion: fixed;
	bottom : 0px;
	height : 3rem;
	background-color : #ccc;
	width: 100%;
	text-align : center;
	line-height : 3rem;
  }
  
  section li {
  	height: 2rem;
  }
  </style>

</head>

<body>
<%
	String pagefile = (String)request.getAttribute("pagefile");
%>
<script>
	var result = '<%=session.getAttribute("join_result")%>';
	if(result != 'null'){ //세션 객체에 "join_result" 속성이 없으면 result는 'null'입니다.
		  if(result==='1'){
			  alert('회원 가입을 축하합니다.');
		  }else{
			  alert('회원 가입에 실패하셨습니다.');
		  }
	  <%session.removeAttribute("join_result"); %>
	}
	
	var message='<%=request.getAttribute("message") %>'; /* Login_OK.java, Update.java 에서 설정 */
	     if(message!='null'){
	    	 alert(message);  
	  }
	
	
    
</script>

<header>
	<div class="jumbotron text-center" style="margin-bottom :0">
		<h1>상품목록</h1>
	</div>
</header>

<nav>
   <jsp:include page="top.jsp"/><br> <br>
</nav>


<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">      
      <aside>
      	<jsp:include page="left.jsp" />
      </aside>
    </div>
    <div class="col-sm-8" style="margin-bottom:5rem">
    	<section>
			<jsp:include page='<%=pagefile + ".jsp"%>' />    	
    	</section>
    </div>
  </div>
</div>

<footer>
	<jsp:include page="bottom.jsp" />
</footer>

<script>
	var pagefile = '<%=pagefile%>';
	var filelist = ["newitem","bestitem","useditem"];
	
	for (var index=0 ; index<filelist.length ; index++){
		if (pagefile==filelist[index]){
			$('.nav-pills> .nav-item > .nav-link').eq(index).addClass('active');
		} else {
			$('.nav-pills> .nav-item > .nav-link').eq(index).removeClass('active');
		}
	}
</script>


</body>
</html>