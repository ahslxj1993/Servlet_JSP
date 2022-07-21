package ex8_template;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//http://localhost:8088/JSP/login
@WebServlet ("/login_ok")
public class Login_OK extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String password = request.getParameter("passwd");
		
		DAO dao = new DAO();
		int result = dao.isId(id,password);
		
		HttpSession session = request.getSession();
		if (result ==1) {//아이디와 비밀번호가 일치하는 경우
			session.setAttribute("id",id);
			String message = id+"님 환영합니다";
			
			String IDStore = request.getParameter("remember");
			Cookie cookie = new Cookie ("id", request.getParameter("id"));
			//ID기억하기를 체크한 경우
			if (IDStore != null && IDStore.equals("store")) {
				cookie.setMaxAge(2*60);
				response.addCookie(cookie);
			} else {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		String goPage = "/ex8_db/_4.join/templatetest.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(goPage);
		request.setAttribute("pagefile","newitem");
		request.setAttribute("message", message);
		dispatcher.forward(request, response);
		} else {
			session.setAttribute("login_result", result);
			response.sendRedirect("login");
		}
	} 
}
