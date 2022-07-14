package test;

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
		
		response.setContentType("text/html ; charset=euc-kr");
		
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		session.setAttribute("id",id);
		session.setAttribute("passwd",passwd);
		
		response.sendRedirect("template.jsp");
	}
}
