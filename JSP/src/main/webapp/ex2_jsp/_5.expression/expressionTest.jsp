<%--
3. ǥ����

	(1)���� �Ǵ� ��ũ��Ʈ�� �±׿��� ����� ������ �޼����� ���ϰ��� ����ϱ� ���� ���Ǵ� ����Դϴ�
	(2)�� �����̳ʿ� ���� _jspSErvice()�޼ҵ� ���ο� ��� ��ü�� print()�޼ҵ� ��ȣ�ȿ�
		��°�� ���Ƿ� scriptlet���� �޸� �����ݷ��� ����ؼ��� �ȵ˴ϴ�.
	(3)����
		<%=����%>
		<%= ���ϰ��� �ִ� �޼��� %>
		<%= ���� %>
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
//1���� 100������ ���� ���ϴ� sum() �޼��� ����
public int sum() {
	int total =0;
	for (int i=1 ; i<=100 ;i ++) {
		total +=i;
	}
	return total;
}
%>
<%
//������ �Ҵ��մϴ�.
String str = "1���� 100������ ��";
%>

<style>
 span { color : red;}
</style>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
 <h1><%= str %>�� <span><%=sum()%></span>�Դϴ�</h1>
 <h1><%= str %>�� 3�� ���ϸ� <span><%=sum()*3%></span>�� �˴ϴ�.</h1>
 <h1><%= str %>�� 1000���� ������ <span><%=(float)sum()/1000%></span>�� �˴ϴ�</h1>
</body>
</html>