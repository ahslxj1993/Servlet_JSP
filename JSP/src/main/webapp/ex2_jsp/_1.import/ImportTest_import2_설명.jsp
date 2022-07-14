<%--
JSP ���þ� (Directive)
����) <%@ ....%>
	JSP ���� ������ JSP�� ������ �����̳ʿ��� �ش� �������� ���
	ó���� ���ΰ��� ���� ���� �������� ������ �ִµ� ���˴ϴ�
	
	���þ��� ����)
			page ���þ�, include ���þ�, taglib ���þ�
	
	 (1)page ���þ�
	 	JSP �������� ���� �Ӽ��� �����ϴ� ���þ��Դϴ�.
	 	����) <%@ page �Ӽ�=��.... %>
	 	
	 (2)include ���þ�
	 	Ư���� JSP ���� �Ǵ� HTML ������ �ش� JSP �������� �����Ҽ� �ֵ��� �ϴ� ����� �����ϴ� ���þ��Դϴ�.
	 	����) <%@ include file="���ϰ��" %>
	 	
	 (3)taglib ���þ�� JSTL (JSP Standard Tag Library)�̳�
	 	Ŀ���� �±� �� �±� ���̺귯���� JSP ���� ��� �� �� ���λ縦 �����ϱ� ���� ���˴ϴ�.
	 	����) <%@ taglib uri="http://taglib.com/sampleURI" prefix="samplePrefix" %>
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
 1.contentType :
 		JSP�������� �����ϴ� ������ ������ �� ������ �� �������� ���� �� �� ���Ǵ� ���ڵ� Ÿ���Դϴ�.
 		������ ������ ������ ������ ���°� ��� MIME �������� �Ǿ��ִ��� �����ϴ� �Ӽ��Դϴ�.
 		
 		MIME(Multipurposes Internet Mail Extensions)��?
 		���ͳ��� �뤾�� ������ �ְ� �ٵ�� ���Ǵ� ���� ������ ������ ���� �� �Դϴ�.
 		���� text/html, text/plain, image/gif, video/avi �� �������� Ÿ���� �����մϴ�.
 		
 2.charset= euc-kr�� �����Ҽ� �ֽ��ϴ�.
 			������ ��� �⺻ ĳ���ͼ��� ISO-8859-1 �� ����ϰ� �˴ϴ�,
 
 3.pageEncoding : ���� �������� ���� ���ڵ� ����� �����Ҷ� ����ϴ� �Ӽ��Դϴ�.
 					�� �Ӽ��� �����Ǿ� ���� ������ contentType �Ӽ����� ������ ���� �ڵ�� JSP ������ �о���Դϴ�.
 --%>
<!DOCTYPE html>
<%--SimpleDateFormat Ŭ���� ��� ���� import
	import �Ӽ� : JSP ���������� ����� Ŭ����(�������̽�) ����
 --%>
<%@ page import="java.text.SimpleDateFormat" %>
<%-- DateŬ���� ��� ���� import --%>
<%@ page import="java.util.*" %>

<%-- ���� �� ������ �ѹ������� ��Ÿ���� ������ �����ϴ�. �޸��� �����ؼ� �ۼ��մϴ�
<%@ page import="java.text.SimpleDateFormat, java.util.*" %>
 --%>
<html>
<head>
<title>import �Ӽ� �׽�Ʈ</title>
<style>
body {background : yellow} 
</style>
</head>
<body>
 <h1>���� �ð���
 <%= new SimpleDateFormat().format(new Date()) %>�Դϴ�. </h1>
</body>
</html>