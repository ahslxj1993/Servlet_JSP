package _7.session;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet ("/ex1/_7.session/SessionServlet")
public class RedirectServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public RedirectServlet2 () {
		super();
	}
	
	
	//Redirect ��� : ������ �ɶ� �������� �ּ� ǥ������ URL�� ����ǹǷ�
	//��û�� �ٲ�� �˴ϴ�
	//������ �� jsp������������ �������� request ������ ������ �Ӽ� ����
	//�����Ҽ� �����ϴ�
	protected void doGet (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		//request.getSession() : ���� ��ü�� �����ɴϴ�
		HttpSession session = request.getSession();
		
		String value = request.getParameter("food");
		
		request.setAttribute("food", value); //request ��ü�� �����մϴ�
		session.setAttribute("food", value); //session ��ü�� �����մϴ�
		
		response.sendRedirect("redirect.jsp");
		
	} 
	
}
