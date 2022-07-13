package test;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/ex1/test/send")
public class ServletClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ServletClass () {
		super();
	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		response.setContentType("text/html;charset=euc-kr");
		
		String id_val = request.getParameter("id");
		String passwd_val = request.getParameter("pass");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String email = request.getParameter("email"); 
		String domain = request.getParameter("domain");
		String gender = "";
		if (request.getParameter("gender").equals("m")) {
			gender = "����";
		} else {
			gender = "����";
		}
		String [] hobbies = request.getParameterValues("hobby");
		for (String hobbies2: hobbies) {
			request.setAttribute("hobbies", hobbies2+" ");
		}
		String post = request.getParameter("post1");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");
		request.setAttribute("id", id_val);
		request.setAttribute("pass", passwd_val);
		request.setAttribute("jumin1", jumin1);
		request.setAttribute("jumin2", jumin2);
		request.setAttribute("email", email);
		request.setAttribute("domain", domain);
		request.setAttribute("gender", gender);
		request.setAttribute("post", post);
		request.setAttribute("address", address);
		request.setAttribute("intro", intro);
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("answer.jsp");
		
		dispatcher.forward(request,response);
		
	}
}
