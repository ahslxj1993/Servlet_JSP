<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ex8_template.Template_join" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>update_form.jsp</title>

<link
	rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link
	href="<%=request.getContextPath()%>/ex8_db/_4.join/join.css" rel="stylesheet" type="text/css">
<script
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
<script
	src="https://code.jquery.com/jquery-latest.js"></script>
<script
	src="<%=request.getContextPath()%>/ex8_db/_4.join/validate4.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<%
	Template_join temp = (Template_join) request.getAttribute("temp");

	if(temp !=null){
%>
	<form action="update" name="myform" id="myform" method="post">
		<div class=container>
		<fieldset>
			<legend>��������</legend>
			<label for="id">ID</label>
			<div>
			<input type=text name=id id=id placeholder='Enter ID' readOnly
			value="<%=temp.getId()%>" style="width:100%">
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
			value="<%=temp.getJumin().substring(7)%>">
			<br>
			
			<label for=email>E-Mail</label>
			<input type=text name=email id=email value="<%=temp.getEmail().split("@")[0]%>">
			@
			<input type=text name=domain id=domain value="<%=temp.getEmail().split("@")[1]%>">
			<select name=sel id=sel>
				<option value=''>�����Է�</option>
				<option value='naver.com'>naver.com</option>
				<option value='daum.net'>daum.net</option>
				<option value='nate.com'>nate.com</option>
				<option value='gmail.com'>gmail.com</option>
			</select>
			<br>
			
			<label>����</label>
			<div class='container2'><!-- type='radio' �� readOnly�� �۵����� �ʾ� onclick='return false'�� �ذ��մϴ� -->
			<input type=radio name=gender value=m id=gender1>����
			<input type=radio name=gender value=f id=gender2>����
			</div>

			
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
			value="<%=temp.getPost()%>" readOnly>
			<input type=button value="����˻�">
			
			<label for=address>�ּ�</label>
			<input type=text size=50 name=address id=address
			value="<%=temp.getAddress() %>">
			
			<label for=intro>�ڱ�Ұ�</label>
			<textarea rows=10 cols=75 name=intro id=intro maxLength=100><%=temp.getIntro()%>
			</textarea>
			
		
     		
     		<div class="clearfix">
        	<button type="submit" class="signupbtn">�����Ϸ�</button>
        	<button type="reset"  class="cancelbtn">���</button>
     		</div>
			
		</fieldset>
		</div>
	</form>
	<script>
	var gender = '<%=temp.getGender()%>';
	$("input[value="+gender+"]").prop("checked",true);//������ üũ�ϱ�
	
	//üũ���� ���� ������ ��Ȱ�� ���� ���Ƿ� �����Ҽ� ������ �ϱ�
	$("input:radio").not(":checked").prop("disabled",true);
	
	var hobbies = '<%=temp.getHobby()%>'.split(",");
		for(var i=0 ; i<hobbies.length ; i++)
			$("input[value="+ hobbies[i]+"]").prop("checked",true);
	</script>
<%
	} else {
%>
	<h3 style="text-align:center ; position:relative; top:3em">�ش������� �������� �ʽ��ϴ�</h3>
<%
	}
%>
	</body>
</html>