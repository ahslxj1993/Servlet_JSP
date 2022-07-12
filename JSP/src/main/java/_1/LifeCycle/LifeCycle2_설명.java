package _1.LifeCycle;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 * 1. @은 annotation으로 자바 주석문처럼 소스안에 @ 기호와 같이 사용합니다
 * 
 * 2. 주석문처럼 컴파일러에 정보를 알려주는 기능 또는 자바프로그램 실행에 관한 내용을
 * 		설정하는 용도로 사용됩니다
 * 
 * 3. @WebServlet 설정을 통한 서블릿 접근 방법은 서블릿 3.0 부터 지원합니다.
 * 		더이상 web.xml 에 서블릿 매핑에 관한 설정을 할 필요가 없습니다
 * 
 * 4. @WebServlet 어노테이션은 urlPatterns 속성을 값으로 갖는데 이 속성은 해당 서블릿과
 * 		매핑될 URL 패턴을 지정할때 사용됩니다.
 * 		*@WebServlet(urlPatterns="/LifeCycle")의 의미는
 * 			"http://localhost:8088/프로젝트이름/LifeCycle"로 요청이 들어오면
 * 			실행할 서블릿이라는 의미 입니다
 * 
 * 5. urlPatterns은 여러개의 URL을 설정하기 위해 String 배열을 사용합니다.
 * 		예) @WebServlet(urlPatterns="/a")
 * 		예) @WebServlet(urlPatterns={"/a"})
 * 		예) @WebServlet(urlPatterns={"/a","/b","/c"})
 * */
@WebServlet(urlPatterns = {"/LifeCycle2","/a2"})
public class LifeCycle2_설명 extends HttpServlet {
	/*
	 *1.serialVersionUID는 같은 클래스임을 알려주는 식별자 역할을 하며
	 *	Serializable 인터페이스를 구현한 클래스를 컴파일하면 자동적으로 
	 *	serialVersionUID 정적 필드가 추가됩니다
	 *
	 * 2. serialaVersionUID는 자바의 직렬화(객체의 데이터를 byte형태의 데이터로 변환하는 기술)와
	 * 	역직렬화(byte로 변환된 데이터를 원래의 객체 데이터로 변환하는 기술)가 실행될때
	 * 	자동으로 부여됩니다
	 * 
	 * 3. 역직렬화시 직렬화 가능 클래스의 내용이 그대로이면 같은 번호가 부여되고
	 * 	클래스의 구성요소가 하나라도 바뀌면 완전히 다른 serialVersionUID가 부여됩니다.
	 * 	이 경우 역직렬화시 오류가 발생합니다
	 * 
	 * 4. 하지만 명시적으로 클래스애 serialVersionUID 가 선언되어 있으면
	 * 	컴파일 시 추가 되지 않기 때문에 동일한 값을 유지할수 있습니다
	 */
	
	private static final long serialVersionUID = 1L;
	public LifeCycle2_설명() {
		super();
		System.out.println("저는 생성자 입니다");
	}
	/*콜백 메소드(callback method) - 어떤 객체에서 어떤 상황이 발생하면
	 * 							컨테이너가 자동으로 호출하여 실행되는 메서드를 의미합니다
	 * 							이런 콜백 메소드들이 서블릿을 실행합니다.
	 * -init (), service(), destroy()
	 *  init () -> service() -> destroy()
	 */
	
	
	
	/*
	 *init()메소드는 서블릿 객체가 생성된 다음에 호출되는 메소드로 클라이언트로 부터
	 *최초로 서블릿 요청이 있을때 한 번 실행됩니다
	 *서블릿 초기화 작업에 사용됩니다 
	 */
	public void init () throws ServletException{
		System.out.println("저는 init() 입니다");
		
	}

	
	
	/*
	 -이 메소드의 출력 결과를 보기 위해서는 이 파일을 수정한 뒤 저장하고 콘솔을 보면서 잠시 기다려 보십시오.
	 -서블릿 객체가 메모리에서 삭제될때 실행됩니다
	 -자원 해제 작업등에 사용됩니다
	 */
	public void destroy() {
		System.out.println("저는 destroy() 입니다. -홍길동");
		
	}
	
	
	
	
	/* 
	 클라이언트의 요청이 있을때마다 실행됩니다.
	 service()메소드가 끝나면 서버에서의 실행은 끝납니다.
	 서버 프로그램 실행이 완료된 후에는 서블릿 컨테이너가 실행결과를 웹 서버에 전달하고
	 웹 서버는 서비스를 요청한 클라이언트에 응답합니다.
	 이로써 웹에서 하나의 요청에 대한 처리가 완료됩니다.
	 
	 HTTP메소드를 참조하여 doGet()을 호출할지, doPost()를 호출할지 결정하며
	 요청이 있을때마다 호출됩니다.
	 브라우저에서 새로고침을 해보십시오.
	 */
	public void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		System.out.print("저는 service()입니다. ");
		System.out.println("요청주소 "+request.getRequestURL());
	}
}

