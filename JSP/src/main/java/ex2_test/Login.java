package ex2_test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet ("/ex2_jsp/test/login")
public class Login extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Login () {
		super ();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		//�����ϴ� ������ Ÿ���� html�̰�
		//charset=euc-kr �� �����ϸ鼭 ����Ǵ� �����͵��� �ѱ� ó���� �� �κ��Դϴ�
		response.setContentType("text/html ; charset=euc-kr");
		
		//�Ķ���� id���� ���ؿɴϴ�
		String id = request.getParameter("id");
		
		//�Ķ���Ϳ� id ��� �̸��� ���� ���
		//http://localhost:8088/JSP/ex2_jsp/_2.include_ex/login?passwd=1234
		if (id==null) {
			System.out.println("null�Դϴ�");
		}
		
		//�Ķ���� id�� ���� ���°��
		//http://localhost:8088/JSP/ex2_jsp/_2.include_ex/login?id=&passwd=1234
		if(id!=null && id.equals("")) {
			System.out.println("�����Դϴ�.");
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("id",id);
		
		response.sendRedirect("template.jsp");
	}
}
