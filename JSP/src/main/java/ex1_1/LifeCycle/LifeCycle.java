package ex1_1.LifeCycle;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/LifeCycle","/a"})
public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public LifeCycle() {
		super();
		System.out.println("저는 생성자 입니다");
	}
	
	public void init () throws ServletException{
		System.out.println("저는 init() 입니다");
	}
	
	public void destroy() {
		System.out.println("저는 destroy() 입니다. -홍길동");
		
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		System.out.print("저는 service()입니다. ");
		System.out.println("요청주소 "+request.getRequestURL());
	}
}

