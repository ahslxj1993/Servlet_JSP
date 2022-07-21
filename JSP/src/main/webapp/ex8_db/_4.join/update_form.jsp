<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ex8_template.Template_join" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link  href="<%=request.getContextPath()%>/ex8_db/_4.join/NewFile.css" rel="stylesheet" type="text/css">
<style>
#opener_message {
	margin-top : -10px;
	margin-bottom : 10px;
}
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="<%=request.getContextPath()%>/ex8_db/_4.join/validate4.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<%
	Template_join temp = (Template_join) request.getAttribute("temp");

	if(temp !=null){
%>
	<form action="join_ok" name="myform" id="myform" method="post">
		<div class=container>
		<fieldset>
			<legend>��������</legend>
			<label for="id">ID</label>
			<div>
			<input type=text size=10 name=id id=id placeholder='Enter ID' readOnly
			value="<%=temp.getId()%>">
			</div>
			
			<label for=pass>��й�ȣ</label>
			<input type=password name=pass id=pass placeholder='Enter password'
			value="<%=temp.getPassword() %>>">
			<br>
			
			<label for=jumin1>�ֹι�ȣ</label>
			<input  type=text size=6 maxLength=6 name=jumin1 id=jumin1 placeholder='�ֹι�ȣ ���ڸ�'
			value="<%=temp.getJumin().substring(0,6)%>">
			<b>-</b>
			<input type=text size=7 maxLength=7 name=jumin2 id=jumin2  placeholder='�ֹι�ȣ ���ڸ�'
			value="<%=temp.getJumin().substring(7,14)%>">
			<br>
			<%
			String [] emails = temp.getEmail().split("@");
			%>
			<label for=email>E-Mail</label>
			<input type=text name=email id=email
			value="<%=emails[0]%>">
			@
			<input type=text name=domain id=domain
			value="<%=emails[1]%>">
			<select name=sel id=sel>
				<option value=''>�����Է�</option>
				<option value='naver.com'>naver.com</option>
				<option value='daum.net'>daum.net</option>
				<option value='nate.com'>nate.com</option>
				<option value='gmail.com'>gmail.com</option>
			</select>
			<br>
			<%
			if (temp.getGender().equals("m")){
			%>
			<label>����</label>
			<div class='container2'><!-- type='radio' �� readOnly�� �۵����� �ʾ� onclick='return false'�� �ذ��մϴ� -->
			<input type=radio name=gender value=m id=gender1 onclick="return false" checked>����
			<input type=radio name=gender value=f id=gender2 onclick="return false">����
			</div>
			<%
			} else {
			%>
			
			<label>����</label>
			<div class='container2'><!-- type='radio' �� readOnly�� �۵����� �ʾ� onclick='return false'�� �ذ��մϴ� -->
			<input type=radio name=gender value=m id=gender1 onclick="return false">����
			<input type=radio name=gender value=f id=gender2 onclick="return false" checked>����
			</div>
			<% 
			}
			%>
			
			<label>���</label>
			<div class="container2">
			<input type=checkbox name=hobby id=hobby1 value=����>����
			<input type=checkbox name=hobby id=hobby2 value=����>����
			<input type=checkbox name=hobby id=hobby3 value=�>�
			<input type=checkbox name=hobby id=hobby4 value=���>���
			<input type=checkbox name=hobby id=hobby5 value=����>����
			</div>
			
			<label for=post1>�����ȣ</label>
			<input type=text size=3 maxLength=5 name=post1 id=post1
			value="<%=temp.getPost()%>">
			<input type=button value="����˻�">
			
			<label for=address>�ּ�</label>
			<input type=text size=50 name=address id=address
			value="<%=temp.getAddress() %>">
			
			<label for=intro>�ڱ�Ұ�</label>
			<textarea rows=10 cols=75 name=intro id=intro>
			
			</textarea>
			
		
     		
     		<div class="clearfix">
        	<button type="submit" class="signupbtn">�����Ϸ�</button>
        	<button type="reset"  class="cancelbtn">���</button>
     		</div>
			
		</fieldset>
		</div>
	</form>
<%
	}
%>	
	</body>
</html>