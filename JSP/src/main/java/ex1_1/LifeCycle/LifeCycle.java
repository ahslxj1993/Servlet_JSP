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
		System.out.println("���� ������ �Դϴ�");
	}
	
	public void init () throws ServletException{
		System.out.println("���� init() �Դϴ�");
	}
	
	public void destroy() {
		System.out.println("���� destroy() �Դϴ�. -ȫ�浿");
		
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		System.out.print("���� service()�Դϴ�. ");
		System.out.println("��û�ּ� "+request.getRequestURL());
	}
}

