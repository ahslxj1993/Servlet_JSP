package ex8_template;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class Update extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Update () {
		super();
	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pass = request. getParameter("pass");
		
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String jumin = jumin1 +"-"+ jumin2;
		
		String email = request.getParameter("email") +"@"+ request.getParameter("domain");
		
		String gender = request.getParameter("gender");
		
		String [] hobbies = request.getParameterValues("hobby");
		String hobby = hobbies[0];
		for (int num=1 ; num<hobbies.length ; num++) {
			hobby += ","+hobbies[num];
		}
		
		String post1 = request.getParameter("post1");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");
		
		Template_join update = new Template_join();
		update.setId(id);
		update.setPassword(pass);
		update.setJumin(jumin);
		update.setEmail(email);
		update.setGender(gender);
		update.setHobby(hobby);
		update.setPost(post1);
		update.setAddress(address);
		update.setIntro(intro);
		
		DAO dao = new DAO();
		
		int result = dao.update(update);
		String message = "회원정보 수정 실패!";
		if (result == 1) {
			message = "회원정보 수정 완료!";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ex8_db/_4.join/templatetest.jsp");
		request.setAttribute("message", message);
		request.setAttribute("pagefile","newitem");
		dispatcher.forward(request, response);
	}
}
