<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = application.getInitParameter("id");
	String password = application.getInitParameter("password");
	String input_id = request.getParameter("id");
	String input_password = request.getParameter("passwd");
	
	if (id.equals(input_id) && password.equals(input_password)) {
		session.setAttribute("id",id);
%>
<script>
 alert('<%=id%>�� ȯ���մϴ�');
 location.href = "templatetest.jsp";
</script>

<%
		String check_value = request.getParameter("remember");
		Cookie cookie = new Cookie("id",request.getParameter("id"));
		//���̵� ����ϱ⸦ üũ�� ���
		if (check_value != null && check_value.equals("store")) {
			cookie.setMaxAge(2*60);//��ȿ�ð� 2��
			response.addCookie(cookie); //Ŭ���̾�Ʈ�� ��Ű�� ����
		} else {
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}

	} else if (id.equals(input_id)){
%>

<script>
alert("��й�ȣ�� Ȯ���ϼ���");
history.back();
</script>

<%
	} else {
%>

<script>
alert("���̵� Ȯ���ϼ���")
history.back();
</script>

<%
	}
%>

</body>