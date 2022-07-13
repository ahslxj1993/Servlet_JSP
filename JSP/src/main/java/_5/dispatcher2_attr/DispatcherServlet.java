package _5.dispatcher2_attr;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_5.dispatcher2_attr/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public DispatcherServlet () {
		super();
	}
	
	/*
	 ������ �̵����
	 
	 Dispatcher ���
	 
	 -Ŭ���̾�Ʈ�κ��� ��û���� Servlet ���α׷��� ������ �����ʰ�
	 	�ٸ� �������̳� JSP ������ � ��û�� �����մϴ� (��û ������)
	 	
	 - �� ������� �̵��ϸ� �ּ� ǥ������ �ּҰ� ������� �ʽ��ϴ�.
	 
	 - request ������ �����ϰ� �˴ϴ�
	 
	 - ��� : RequestDispatcher���� �����ϴ� �޼ҵ�(forward())�� ����Ͽ� ��û�� ������ �մϴ�
	*/
	protected void doGet (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		
		System.out.println("��û��� : "+request.getMethod());
		System.out.println("�Ķ���� food �� �� : "+request.getParameter("food"));
		String food = request.getParameter("food");
		
		request.setAttribute("food", food);
		request.setAttribute("name", "jsp");
		
		//dispatcher.jsp : �̵��� ������ �ּ�
		RequestDispatcher dispatcher = request.getRequestDispatcher("dispatcher.jsp");
		
		//�̵��մϴ�
		dispatcher.forward(request,response);
	}
}