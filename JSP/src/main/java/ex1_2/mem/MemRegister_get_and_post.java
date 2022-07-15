package ex1_2.mem;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/ex1/_2.mem/memReg")
public class MemRegister_get_and_post extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=euc-kr");

		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		String hobby = request.getParameter("hobby");

		PrintWriter out = response.getWriter();

		out.println("<html><head>");
		out.println("<style>");
		out.println("table {border-collapse:collapse; text-align:center; margin: 0 auto; width:50%}");
		out.println("tr {border-bottom: 1px solid black; height:3em;}");
		out.println("td {width:60%}");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<table>");
		out.println("<tr><th> 회원명</th><td>" + name + "</td></tr>");
		out.println("<tr><th> 주소</th><td>" + addr + "</td></tr>");
		out.println("<tr><th> 전화번호</th><td>" + tel + "</td></tr>");
		out.println("<tr><th> 취미</th><td>" + hobby + "</td></tr>");
		out.println("</table>");
		out.println("</body></html>");
		out.close();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		doGet(request, response);
	}
	
}
