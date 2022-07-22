<%--
*ǥ�����(Expression Language : EL)
��Ĺ���� �����ϱ� ������ ���� ������ �ʿ䰡 �����ϴ�
JSP ��ũ��Ʈ ����Ͽ� �Ӽ� ������ �� �� ���ϰ� ����ϱ� ���� �����Ǵ� ����Դϴ�.
	����) $ {  }
	
	ǥ���� �±�
1.article�� �ڹٺ��� ���
<%=article.getId()%>
=> ${article.id} �Ǵ� ${article["id"]} �Ǵ� ${article['id']}

2. <%=request.getParameter("name")%>
	=>${param.name}
	
3. <%=request.getParameterValues("hobby")%>
=> ${paramValues.hobby}  ����� ��Ʈ�� �迭(String [])
	���ʴ�� ����� ���
	-${paramValues.hobby[0]}
	-${paramValues.hobby[1]}
	-${paramValues.hobby[2]}
	.
	.
	.

4.<%=request.getAttribute("hoho")%>
=>${requestScope.hoho}	

5.<%=session.getAttribute("id")%>
=>${sessionScope.id}


6.${hoho}
	�̰�쿡�� pageContext -> request -> session -> application ���� ��ü������
	'hoho' �̸��� attribute�� ã���ϴ�.

 --%>
 
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.setAttribute("id","honggildong2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL ���尴ü ��� ����</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
.container {width:500px}
table {margin:auto}
td:nth-child(1), h3 {text-align:center}
</style>
</head>
<body>
<div class="container">
  <form action="el_result0.jsp" method="post">
    <h3>EL ����</h3>
    <table class="table">
	  <tr>
	   <td>�̸� </td>
	   <td><input type="text" name="name" value="ȫ�浿" class="form-control"></td>
	  </tr> 
	  <tr>
	   <td>���</td>
	   <td> 
	    <input type="checkbox" name="hobby" id="hobby1" value="����">����
	    <input type="checkbox" name="hobby" id="hobby2" value="���">��� 
	   </td>
	 </tr>
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="�Է�" class="btn btn-info btn-block"></td>
	 </tr>
   </table>
  </form>
  </div>
</body>

</html>