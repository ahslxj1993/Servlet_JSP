<!-- 
1.Java Naming and Directory Interface (JNDI)��
Java ���ø����̼��� ��Ʈ��ũ���� �̸�(name)�� �̿��Ͽ�
��ü�� ã�� �����ü� �ֵ��� �ϴ� ǥ�� API �Դϴ�.

*JNDI�� ����ϸ� Java ���α׷��̳� JSP ����������
���� ���α׷� ���� �Ǵ� �ܺο��� ������ �ڿ����� ���� �� �� �ֽ��ϴ�.,

*������ ���̽� Ŀ�ؼ� Ǯ��������ϰ� �� DataSource ��ü��
���̹� ���񽺸� ���� �����̳ʿ��� �����մϴ�.

2.DBCP(Database Connection Pool)
�����ͺ��̽��� ����� Ŀ�ؼ��� �̸� ���� Ǯ(pool) �ӿ� ������ �ΰ� �ִٰ�
�ʿ��� �� Ŀ�ؼ��� Ǯ� ���� �ٽ� Ǯ�� ��ȯ�ϴ� ����� ���մϴ�.
�� ���α׷������� �����ͺ��̽��� ȯ�� ������ ���� ���� ���� ���� XML �����̳�
�Ӽ� ������ ����ؼ� �����ϰ�,
�̷��� ������ ������ �̸��� ����Ͽ� ȹ���ϴ� ����� ����մϴ�.

*DBCP�� �̿��� ���ؼ� Ǯ�� ����ϱ����� ���� ��Ĺ�� DataSource�� ����ؾ� �մϴ�.
context.xml(���ø����̼� ���ؽ�Ʈ�� ���õ� ������ �ϴ� ����)���� ��� �� �� ������ ��ġ�� META-INF�� �����մϴ�.

*DBCP ���̺귯�� : tomcat-dbcp.jar ����

3.DataSource �̿���
(1) lookup() �޼����� ���� DataSource ��ü�� ���ɴϴ�.
Datasource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");

(2)DataSource ��ü�� getConnection()�޼ҵ带 ���ؼ�
Connection Pool ���� Connection�� ȹ���մϴ�.

(3)Connection ��ü�� ���� DBMS �۾��� �����մϴ�

(4)��� �۾��� ������ DataSource ��ü�� ���ؼ� Connection Pool�� Connection�� �ݳ��մϴ�
 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" %>

<%--Connection ��ü�� JNDI�� ����ϱ� ���� ��Ű���� import �մϴ� --%>
<%-- �Ϲ� �����ͺ��̽� �۾������� import �մϴ� --%>
<%@ page import="java.sql.*" %>

<%-- javax.sql.DataSource ��ü�� ����ϱ� ���� import �մϴ� --%>
<%@ page import = "javax.sql.*" %>

<%-- JNDI �۾��� �ϱ����� import �մϴ� --%>
<%@ page import = "javax.naming.*" %>

<%
Connection conn=null;
try{
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	out.println("<h3>���ؼ� Ǯ�� ����Ǿ����ϴ�.</h3>");
	conn.close();
} catch(Exception e){
	out.println("<h3>���ؼ� Ǯ ���ῡ �����Ͽ����ϴ�.</h3>");
	e.printStackTrace();
}
%>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>