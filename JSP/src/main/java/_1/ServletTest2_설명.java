/*
 * ����� Ŭ�������� import �մϴ�
 * 
 * -������ �����Ҷ��� javax.servlet.* �� javax.servlet.http.*��
 * �ݵ�� import ���־�� �մϴ�
 * 
 * -������ ���� Ŭ������ javax.servlet ��Ű���� ���ԵǾ� �ְ�
 * http��û�� ó���ϴ� Ŭ�������� javax.servlet.http�� �����ֱ� �����Դϴ�
 * */

package _1;
import java.io.*;
import java.util.Calendar;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * ������ �����մϴ�
 * 
 * -���� Ŭ������ �����Ϸ��� �ݵ�� HttpServletŬ������ ��ӹ޽��ϴ�
 * 
 * -HttpServletŬ������ ������ ���� �Ϲ����� ����� ���ǵǾ��ֱ� ������
 * HttpServletŬ������ ��ӹ��� �ڽ� Ŭ���� ���� ���� Ŭ������ �˴ϴ�
 * */
@WebServlet(urlPatterns = {"/currentTime2"})
public class ServletTest2_���� extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	
	//doGet�޼ҵ带 �����ϴ� �κ��Դϴ�
	//Ŭ���̾�Ʈ���� ��û�� GET ������� ���۵Ǿ� ���� doGet�޼��尡 �ڵ� ����ǰ� �˴ϴ�
	public void doGet(HttpServletRequest request,
					  HttpServletResponse response) throws IOException{
		//���� �������� MIME Ÿ���� HTML Ÿ���� text�� �����մϴ�
		response.setContentType("text/html");
		
		//���� Ÿ���� ���� ���ڵ� Ÿ���� �ѱ��� ����� ��µǵ��� 'euc-kr'�� �����մϴ�
		response.setCharacterEncoding("euc-kr");
		
		//calendar ��ü�� �����Ͽ� ��ü�κ��� �ð�, ��, �� ���� ���ɴϴ�
		Calendar c = Calendar.getInstance();
		int hour = c.get(Calendar.HOUR_OF_DAY); //�ð�
		int minute = c.get(Calendar.MINUTE); //��
		int second = c.get(Calendar.SECOND); //��
		
		//���信 ������ ����� ��½�Ʈ���� �����մϴ�
		PrintWriter out = response.getWriter();
		
		//Ŭ���̾�Ʈ�� ������ ������ HTMLŸ���� �����ͷ� ����ϴ� �κ��Դϴ�
		out.write("<HTML><HEAD><TITLE>ServletTest</TITLE></HEAD>");
		out.write("<BODY><H1>");
		out.write("����ð���");
		out.write(Integer.toString(hour));
		out.write("�� ");
		out.write(Integer.toString(minute));
		out.write("�� ");
		out.write(Integer.toString(second));
		out.write("���Դϴ�. 2");
		out.write("</H1>");
		out.write("<H3 STYLE='COLOR:BLUE'>�����Դϴ�.</H3>");
		out.write("</BODY></HTML>");
		out.close();
	}
}
