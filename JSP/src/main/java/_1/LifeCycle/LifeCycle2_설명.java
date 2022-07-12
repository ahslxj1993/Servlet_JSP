package _1.LifeCycle;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 * 1. @�� annotation���� �ڹ� �ּ���ó�� �ҽ��ȿ� @ ��ȣ�� ���� ����մϴ�
 * 
 * 2. �ּ���ó�� �����Ϸ��� ������ �˷��ִ� ��� �Ǵ� �ڹ����α׷� ���࿡ ���� ������
 * 		�����ϴ� �뵵�� ���˴ϴ�
 * 
 * 3. @WebServlet ������ ���� ���� ���� ����� ���� 3.0 ���� �����մϴ�.
 * 		���̻� web.xml �� ���� ���ο� ���� ������ �� �ʿ䰡 �����ϴ�
 * 
 * 4. @WebServlet ������̼��� urlPatterns �Ӽ��� ������ ���µ� �� �Ӽ��� �ش� ������
 * 		���ε� URL ������ �����Ҷ� ���˴ϴ�.
 * 		*@WebServlet(urlPatterns="/LifeCycle")�� �ǹ̴�
 * 			"http://localhost:8088/������Ʈ�̸�/LifeCycle"�� ��û�� ������
 * 			������ �����̶�� �ǹ� �Դϴ�
 * 
 * 5. urlPatterns�� �������� URL�� �����ϱ� ���� String �迭�� ����մϴ�.
 * 		��) @WebServlet(urlPatterns="/a")
 * 		��) @WebServlet(urlPatterns={"/a"})
 * 		��) @WebServlet(urlPatterns={"/a","/b","/c"})
 * */
@WebServlet(urlPatterns = {"/LifeCycle2","/a2"})
public class LifeCycle2_���� extends HttpServlet {
	/*
	 *1.serialVersionUID�� ���� Ŭ�������� �˷��ִ� �ĺ��� ������ �ϸ�
	 *	Serializable �������̽��� ������ Ŭ������ �������ϸ� �ڵ������� 
	 *	serialVersionUID ���� �ʵ尡 �߰��˴ϴ�
	 *
	 * 2. serialaVersionUID�� �ڹ��� ����ȭ(��ü�� �����͸� byte������ �����ͷ� ��ȯ�ϴ� ���)��
	 * 	������ȭ(byte�� ��ȯ�� �����͸� ������ ��ü �����ͷ� ��ȯ�ϴ� ���)�� ����ɶ�
	 * 	�ڵ����� �ο��˴ϴ�
	 * 
	 * 3. ������ȭ�� ����ȭ ���� Ŭ������ ������ �״���̸� ���� ��ȣ�� �ο��ǰ�
	 * 	Ŭ������ ������Ұ� �ϳ��� �ٲ�� ������ �ٸ� serialVersionUID�� �ο��˴ϴ�.
	 * 	�� ��� ������ȭ�� ������ �߻��մϴ�
	 * 
	 * 4. ������ ��������� Ŭ������ serialVersionUID �� ����Ǿ� ������
	 * 	������ �� �߰� ���� �ʱ� ������ ������ ���� �����Ҽ� �ֽ��ϴ�
	 */
	
	private static final long serialVersionUID = 1L;
	public LifeCycle2_����() {
		super();
		System.out.println("���� ������ �Դϴ�");
	}
	/*�ݹ� �޼ҵ�(callback method) - � ��ü���� � ��Ȳ�� �߻��ϸ�
	 * 							�����̳ʰ� �ڵ����� ȣ���Ͽ� ����Ǵ� �޼��带 �ǹ��մϴ�
	 * 							�̷� �ݹ� �޼ҵ���� ������ �����մϴ�.
	 * -init (), service(), destroy()
	 *  init () -> service() -> destroy()
	 */
	
	
	
	/*
	 *init()�޼ҵ�� ���� ��ü�� ������ ������ ȣ��Ǵ� �޼ҵ�� Ŭ���̾�Ʈ�� ����
	 *���ʷ� ���� ��û�� ������ �� �� ����˴ϴ�
	 *���� �ʱ�ȭ �۾��� ���˴ϴ� 
	 */
	public void init () throws ServletException{
		System.out.println("���� init() �Դϴ�");
		
	}

	
	
	/*
	 -�� �޼ҵ��� ��� ����� ���� ���ؼ��� �� ������ ������ �� �����ϰ� �ܼ��� ���鼭 ��� ��ٷ� ���ʽÿ�.
	 -���� ��ü�� �޸𸮿��� �����ɶ� ����˴ϴ�
	 -�ڿ� ���� �۾�� ���˴ϴ�
	 */
	public void destroy() {
		System.out.println("���� destroy() �Դϴ�. -ȫ�浿");
		
	}
	
	
	
	
	/* 
	 Ŭ���̾�Ʈ�� ��û�� ���������� ����˴ϴ�.
	 service()�޼ҵ尡 ������ ���������� ������ �����ϴ�.
	 ���� ���α׷� ������ �Ϸ�� �Ŀ��� ���� �����̳ʰ� �������� �� ������ �����ϰ�
	 �� ������ ���񽺸� ��û�� Ŭ���̾�Ʈ�� �����մϴ�.
	 �̷ν� ������ �ϳ��� ��û�� ���� ó���� �Ϸ�˴ϴ�.
	 
	 HTTP�޼ҵ带 �����Ͽ� doGet()�� ȣ������, doPost()�� ȣ������ �����ϸ�
	 ��û�� ���������� ȣ��˴ϴ�.
	 ���������� ���ΰ�ħ�� �غ��ʽÿ�.
	 */
	public void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		System.out.print("���� service()�Դϴ�. ");
		System.out.println("��û�ּ� "+request.getRequestURL());
	}
}

