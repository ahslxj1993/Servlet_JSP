package ex8_template;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/idcheck")
public class IdCheck extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doGet (HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		
		DAO dao = new DAO();
		
		//result = 0 ->아이디가 존재하지 않는 경우
		//result = 1 ->아이디가 존재하는 경우
		int result = dao.isId(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ex8_db/_4.join/idcheck.jsp");
		request.setAttribute("result",result);
		
		dispatcher.forward(request, response);
	}
}
