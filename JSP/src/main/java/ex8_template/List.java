package ex8_template;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/list")
public class List extends HttpServlet{
	private static final long serialVersionUID = 1L;

	
	protected void doGet (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		DAO dao = new DAO();
		
		ArrayList<Template_join> list = dao.selectAll();
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ex8_db/_4.join/list.jsp");
		request.setAttribute("list", list);
		dispatcher.forward(request, response);
	}
}
