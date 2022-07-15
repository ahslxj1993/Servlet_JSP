package ex1_1.login;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/ex1/_1.login/LifeCycleTest2")
public class LifeCycleTest_post extends HttpServlet {
	 private static final long serialVersionUID = 1L;
	 
	 protected void doPost (HttpServletRequest request, HttpServletResponse response)
	 throws ServletException, IOException {
		 
		 //�����ϴ� ������ Ÿ���� htmlŸ���̰�
		 //charset=euc-kr�� �����ϸ鼭 ����Ǵ� �����͵��� �ѱ� ó���� �� �κ��Դϴ�.
		 response.setContentType("text/html;charset=euc-kr");
		 
		 //getParameter()�޼ҵ�:
		 //html�� �±� �Ӽ��߿��� "name=id, name=passwd"�� ������ �Է����� ���۵Ǿ� �� �Ķ���� ���� ��ȯ�� �ִ� �޼����Դϴ�
		 //Ŭ���̾�Ʈ���� ���۵Ǿ� ���� id��� �̸��� �Ķ���� ����
		 //passwd��� �̸��� �Ķ���� ���� �޴� �κ��Դϴ�
		 //id=admin&passwd=1234
		 String id = request.getParameter("id");
		 String passwd = request.getParameter("passwd");
		 
		 
		 //���ڿ� ������ response ��ü�� ������ ����Ҽ� �ִ� ��� ��Ʈ���� ������ �κ��Դϴ�
		 PrintWriter out = response.getWriter();
		 
		 //getContextpath() : �� ���ø����̼� ��� ������ ��ȯ�մϴ�.
		 //URL���� ��Ʈ��ȣ�� ����� ������ �� ���ø����̼� �̸��� �ǹ��ϸ� �� ���� �����մϴ�.
		 out.println("�� ���ø����̼� ��� ���� : "+ request.getContextPath());
		 
		 //���信 id �������� passwd���� ���� ����ϴ� �κ��Դϴ�
		 out.println("<br>"+"���̵�: "+id+"<br>");
		 out.println("��й�ȣ: "+passwd+"<br>");
		 out.close();
	 }
}
