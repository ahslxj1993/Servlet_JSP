<%--
JSP ��ũ��Ʈ ��� - JSP ���������� �ڹ��ڵ带 ����� �� �ִ� ������ �ǹ��մϴ�
��ũ��Ʈ ����� ���� - ���� (<%! %>), ��ũ��Ʈ��(<% %>), ǥ���� (<%= %>)

1.���� (Declarations)
	(1) JSP ���������� �ڹ� �ڵ��� �������(�ʵ�)�� �޼��带 �����ϱ� ���� ���˴ϴ�.
	(2) ������ ����� ����� ������ JSP ������ �� �����̳ʿ� ���� ������ �� ��
			��� ������ �νĵǱ� ������ JSP�������� ��� ��ġ������ �ش� ������ �����ϴ� ���� �����մϴ�
	
	C:\Users\sijun\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\
	Catalina\localhost\JSP\org\apache\jsp\ex2_005fjsp\_005f3_declaration
	������ declarationTest_jsp.java�� declararationTest_jsp.class ������ �ֽ��ϴ�

 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h1><%=getStr() %></h1>

<%!
private String getStr(){
	str+= " �׽�Ʈ�Դϴ�.";
	return str;
}
private String str="���� ";
%>