package ex1_9.context;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet ("/ex1/_9.context/context")
public class ContextServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ContextServlet2 () {
		super();
	}
	
	protected void doGet (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String value = request.getParameter("food");
		request.setAttribute("food", value);
		
		HttpSession session = request.getSession();
		session.setAttribute("food", value);
		
		/*
		 �� ���ø����̼��� ���񽺵ǰ� �ִ� ���� �����ϴ� ���� �ǹ��մϴ�
		 �����ֱⰡ �� ���ø����̼ǰ� ���� ��ü�� ServletContext �Դϴ�.
		 ServletContext�� �� ���ø����̼� ���񽺰� ���۵� �� �����ǰ� ����ɶ� �Ҹ��մϴ� 
		 */
		
		ServletContext sc = request.getSession().getServletContext();
		sc.setAttribute("food",value);
		
		response.sendRedirect("scope.jsp");
	} 
}
