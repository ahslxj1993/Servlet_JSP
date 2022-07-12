/*
 * 사용할 클래스들을 import 합니다
 * 
 * -서블릿을 생성할때는 javax.servlet.* 와 javax.servlet.http.*는
 * 반드시 import 해주어야 합니다
 * 
 * -서블릿에 관한 클래스는 javax.servlet 패키지에 포함되어 있고
 * http요청을 처리하는 클래스들은 javax.servlet.http에 속해있기 때문입니다
 * */

package _1;
import java.io.*;
import java.util.Calendar;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * 서블릿을 정의합니다
 * 
 * -서블릿 클래스를 정의하려면 반드시 HttpServlet클래스를 상속받습니다
 * 
 * -HttpServlet클래스에 서블릿에 관한 일반적인 기능이 정의되어있기 때문에
 * HttpServlet클래스를 상속받은 자식 클래스 또한 서블릿 클래스가 됩니다
 * */
@WebServlet(urlPatterns = {"/currentTime2"})
public class ServletTest2_설명 extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	
	//doGet메소드를 정의하는 부분입니다
	//클라이언트에서 요청이 GET 방식으로 전송되어 오면 doGet메서드가 자동 실행되게 됩니다
	public void doGet(HttpServletRequest request,
					  HttpServletResponse response) throws IOException{
		//응답 데이터의 MIME 타입을 HTML 타입의 text로 지정합니다
		response.setContentType("text/html");
		
		//응답 타입의 문자 인코딩 타입을 한글이 제대로 출력되도록 'euc-kr'로 지정합니다
		response.setCharacterEncoding("euc-kr");
		
		//calendar 객체를 생성하여 객체로부터 시간, 분, 초 값을 얻어옵니다
		Calendar c = Calendar.getInstance();
		int hour = c.get(Calendar.HOUR_OF_DAY); //시간
		int minute = c.get(Calendar.MINUTE); //분
		int second = c.get(Calendar.SECOND); //초
		
		//응답에 내용을 출력할 출력스트림을 생성합니다
		PrintWriter out = response.getWriter();
		
		//클라이언트로 응답할 내용을 HTML타입의 데이터로 출력하는 부분입니다
		out.write("<HTML><HEAD><TITLE>ServletTest</TITLE></HEAD>");
		out.write("<BODY><H1>");
		out.write("현재시각은");
		out.write(Integer.toString(hour));
		out.write("시 ");
		out.write(Integer.toString(minute));
		out.write("분 ");
		out.write(Integer.toString(second));
		out.write("초입니다. 2");
		out.write("</H1>");
		out.write("<H3 STYLE='COLOR:BLUE'>서블릿입니다.</H3>");
		out.write("</BODY></HTML>");
		out.close();
	}
}
