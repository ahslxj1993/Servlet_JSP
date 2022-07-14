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
		
		request.setCharacterEncoding("euc-kr");
		
		String id_val = request.getParameter("id");
		String passwd_val = request.getParameter("pass");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String email = request.getParameter("email"); 
		String domain = request.getParameter("domain");
		
		String gender = "";
		if (request.getParameter("gender").equals("m")) {
			gender = "남자";
		} else {
			gender = "여자";
		}
		
		String [] hobbies = request.getParameterValues("hobby");
		String hobby_result = "";
		for (int num =0 ; num<hobbies.length ; num++) {
			hobby_result += hobbies[num]+ " ";
		}
		
		String post = request.getParameter("post1");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");
		request.setAttribute("id", id_val);
		request.setAttribute("pass", passwd_val);
		request.setAttribute("jumin", jumin1+"-"+jumin2);
		request.setAttribute("email", email+"@"+domain);
		request.setAttribute("gender", gender);
		request.setAttribute("hobbies",hobby_result);
		request.setAttribute("post", post);
		request.setAttribute("address", address);
		request.setAttribute("intro", intro);
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("answer.jsp");
		
		dispatcher.forward(request,response);
		
	}
}
