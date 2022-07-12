package _2.mem;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet (urlPatterns = "/ex1/_2.mem/memReg")
public class MemRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		response.setContentType("text/html; charset=euc-kr");
		
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		String hobby = request.getParameter("hobby");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head>");
		out.println("<style>");
		out.println("table {border-collapse:collapse; text-align:center; margin: 0 auto; width:500px}");
		out.println("td {border-bottom: 2px solid black; padding: 20px;}");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<table>");
		out.println("<tr><td style='font-weight:bold; font-size:20px'> 회원명</td><td>"+name+"</td></tr>");
		out.println("<tr><td style='font-weight:bold; font-size:20px'> 주소</td><td>"+addr+"</td></tr>");
		out.println("<tr><td style='font-weight:bold; font-size:20px'> 전화번호</td><td>"+tel+"</td></tr>");
		out.println("<tr><td style='font-weight:bold; font-size:20px'> 취미</td><td>"+hobby+"</td></tr>");
		out.println("</table>");
		out.println("</body></html>");
		out.close();
	}
}
