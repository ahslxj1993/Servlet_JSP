<!-- 
1.Java Naming and Directory Interface (JNDI)는
Java 애플리케이션이 네트워크에서 이름(name)을 이용하여
객체를 찾고 가져올수 있도록 하는 표준 API 입니다.

*JNDI를 사용하면 Java 프로그램이내 JSP 페이지에서
응용 프로그램 내부 또는 외부에서 지정된 자원ㅇ르 참조 할 수 있습니다.,

*데이터 베이스 커넥션 풀에서사용하게 될 DataSource 객체는
네이밍 서비스를 통해 컨테이너에서 제공합니다.

2.DBCP(Database Connection Pool)
데이터베이스와 연결된 커넥션을 미리 만들어서 풀(pool) 속에 저장해 두고 있다가
필요할 때 커넥션을 풀어서 쓰고 다시 풀에 반환하는 기법을 말합니다.
웹 프로그램에서는 데이터베이스의 환경 설정과 연괄 관리 등을 따로 XML 파일이나
속성 파일을 사용해서 관리하고,
이렇게 설정된 정보는 이름을 사용하여 획득하는 방법을 사용합니다.

*DBCP를 이용한 컨넥션 풀을 사용하기위해 먼저 톰캣에 DataSource를 등록해야 합니다.
context.xml(애플리케이션 컨텍스트와 관련된 설정을 하는 파일)에서 등록 할 수 있으면 위치는 META-INF에 저장합니다.

*DBCP 라이브러리 : tomcat-dbcp.jar 파일

3.DataSource 이용방법
(1) lookup() 메서도를 통해 DataSource 객체를 얻어옵니다.
Datasource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");

(2)DataSource 객체의 getConnection()메소드를 통해서
Connection Pool 에서 Connection을 획득합니다.

(3)Connection 객체를 통한 DBMS 작업을 수행합니다

(4)모든 작업이 끝나면 DataSource 객체를 통해서 Connection Pool에 Connection을 반납합니다
 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" %>

<%--Connection 객체와 JNDI를 사용하기 위한 패키지를 import 합니다 --%>
<%-- 일반 데이터베이스 작업을위해 import 합니다 --%>
<%@ page import="java.sql.*" %>

<%-- javax.sql.DataSource 객체를 사용하기 위해 import 합니다 --%>
<%@ page import = "javax.sql.*" %>

<%-- JNDI 작업을 하기위해 import 합니다 --%>
<%@ page import = "javax.naming.*" %>

<%
Connection conn=null;
try{
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	out.println("<h3>컨넥션 풀에 연결되었습니다.</h3>");
	conn.close();
} catch(Exception e){
	out.println("<h3>컨넥션 풀 연결에 실패하였습니다.</h3>");
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