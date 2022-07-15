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
		//응답하는 데이터 타입이 html이고
		//charset=euc-kr 로 지정하면서 응답되는 데이터들의 한글 처리를 한 부분입니다
		response.setContentType("text/html ; charset=euc-kr");
		
		//파라미터 id값을 구해옵니다
		String id = request.getParameter("id");
		
		//파라미터에 id 라는 이름이 없는 경우
		//http://localhost:8088/JSP/ex2_jsp/_2.include_ex/login?passwd=1234
		if (id==null) {
			System.out.println("null입니다");
		}
		
		//파라미터 id의 값이 없는경우
		//http://localhost:8088/JSP/ex2_jsp/_2.include_ex/login?id=&passwd=1234
		if(id!=null && id.equals("")) {
			System.out.println("공백입니다.");
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("id",id);
		
		response.sendRedirect("template.jsp");
	}
}
