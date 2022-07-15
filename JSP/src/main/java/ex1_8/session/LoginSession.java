package ex1_8.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet ("/ex1/_8.session/login_ok")
public class LoginSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public LoginSession () {
		super();
	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		
		//����Ʈ��� ��û �ѱ�ó��
		request.setCharacterEncoding("euc-kr");
		//������ ������ ���� : ĳ���ͼ� ����
		response.setContentType("text/html ; charset=euc-kr");
		//��½�Ʈ�� ����
		PrintWriter out = response.getWriter();
		//�Ķ���� id�� passwd�� �� ��������
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		//�Է¹��� ���� ��
		//�Է� ���� ���� ��ġ�� ���
		if(id.equals("java")&& passwd.equals("java")) {
			//���� ����
			HttpSession session = request.getSession();
			
			//���� ��ü�� id ��� �Ӽ����� id ���� ����
			session.setAttribute("id",id);
			
			response.sendRedirect("loginSuccess.jsp");
		} else if (id.equals("java")) { //���̵� ���� java�϶�
			out.println("<script>");
			out.println("alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�')");
			out.println("history.back()");//�ٷ� �� �������� �̵�
			out.println("</script>");
			out.close();
		} else {
			out.println("<script>");
			out.println("alert('���̵� ��ġ���� �ʽ��ϴ�')");
			out.println("history.back()");//�ٷ� �� �������� �̵�
			out.println("</script>");
			out.close();
		}
	}
}
