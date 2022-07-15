package ex1_4.check;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_4.check_values/choiceFruit")
public class ChoiceFruitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ChoiceFruitServlet() {
		super();
	}
	
	protected void doGet (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		response.setContentType("text/html ; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		/*
		 1. getParameterValues()
		  ��)	fruit=apple.png&fruit=grape.png%fruit=strawberry.png&fruit=water-melon.png
		  		�ϳ��� �Ķ���� �̸�(fruit)���� ���� ������ ���۵Ǿ� �� ��쿡 ����ϴ� �޼���
		  		üũ�ڽ��� �̸��� ���������� fruit���� �����Ǿ� �����Ƿ� �� üũ�ڽ��� ������
		  		���� �̹��� ���ϸ��� �����Ͽ� �Ķ���� ������ ���� �̹��� �̸��� ���۵ǵ��� �ϰ� �ֽ��ϴ�.
		 
		 2. getPrameter() : �ϳ��� �Ķ���ͷ� �ϳ��� ���� ���� ��� ����ϴ� �޼���
		 		�ϳ��� �Ķ���� �̸�(fruit)���� ���� ������ ���۵Ǿ� �� ��쿡 �� �޼��带 ����ϸ�
		 		ó���� ������ ���� �˼� �ֽ��ϴ�.
		 	��)	fruit=apple.png&fruit=grape.png%fruit=strawberry.png&fruit=water-melon.png
		 		fruit=apple.png ���� ���� �����ɴϴ�
		 */
		
		System.out.println("ó������ ������ ���� " + request.getParameter("fruit"));
		String[] f = request.getParameterValues("fruit");
		
		for(String fruit : f) {
			System.out.println(fruit);
		}
		
		out.println("<html><head>");
		out.println("<style>"
				+ "table {background:yellow; border : 1px solid black; margin : 0 auto; width: 50%}"
				+ "tr td {border: 1px solid black; text-align: center; color : red}"
				+ "img {width: 100px; height: 100px}"
				+ "</style>");
		out.println("</head><body>");
		out.println("<table>");
		out.println("<tr>");
		
		for (String fruit:f) {
			out.println("<td>");
			out.println(fruit);
			out.println("</td>");
		}
		out.println("</tr>");
		
		out.println("<tr>");
		for (String fruit:f) {
			out.println("<td>");
			out.println("<img src='../../image/"+fruit+"'>");
			out.println("</td>");
		}
		out.println("</tr>");
		
		out.println("</table></body>");
	}
}
