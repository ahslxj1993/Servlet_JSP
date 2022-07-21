package ex8_template;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class DAO {

	public int insert(Template_join join) {
		Connection conn = null;
		 PreparedStatement pstmt = null;
		 int result=0;
		 
		 try {
			 
			 //context.xml에 생성해 놓은 (JNDI에 설정해놓은) 리소스 jdbc/OracleDBD를
			 //참조하여 Connection 객체를 얻어옵니다
			 Context init = new InitialContext();
			 DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			 conn = ds.getConnection();
			 
			 String insert_sql = "insert into template_join "
			 		+ " (id, password, jumin, email, gender, hobby, post, address, intro) "
			 		+ " values (?,?,?,?,?,?,?,?,?)";
			 
			 //PreparedStatement 객체 얻기
			 
			 pstmt = conn.prepareStatement(insert_sql.toString());
			 pstmt.setString(1,join.getId());
			 pstmt.setString(2,join.getPassword());
			 pstmt.setString(3,join.getJumin());
			 pstmt.setString(4,join.getEmail());
			 pstmt.setString(5,join.getGender());
			 pstmt.setString(6,join.getHobby());
			 pstmt.setString(7,join.getPost());
			 pstmt.setString(8,join.getAddress());
			 pstmt.setString(9,join.getIntro());
			 
			 result = pstmt.executeUpdate();
			 
			 
		 } catch (Exception  se) {
			 se.printStackTrace();
		 } finally {
			 
			 try {
				 if (pstmt !=null)
					 pstmt.close();
			 } catch (SQLException e) {
				 System.out.println(e.getMessage());
			 }
			 
			 try {
				 if (conn != null)
					 conn.close();
			 } catch (Exception e) {
				 System.out.println(e.getMessage());
			 }
		 }//finally end
		 return result;
	} // insert end

	public int isId(String id) {
		return isId(id,null);
	}
	
	public int isId(String id, String password) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result =0;
		
		try {
			 //context.xml에 생성해 놓은 (JNDI에 설정해놓은) 리소스 jdbc/OracleDBD를
			 //참조하여 Connection 객체를 얻어옵니다
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			String select_sql = "select id, password from template_join where id=?";
			
			//PreparedStatement 객체 얻기
			pstmt = conn.prepareStatement(select_sql.toString());
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if (rs.getString("password").equals(password)) {
					result = 1; //아이디와 비밀번호가 일치하는 경우
				} else {
					result = -1; //아이디는 일치하고 비밀번호가 일치하지 않는경우
				}
			}
			
			
		} catch (Exception  se) {
			 se.printStackTrace();
		 } finally {
			 try {
				 if (rs !=null)
					 rs.close();
			 } catch (SQLException e) {
				 System.out.println(e.getMessage());
			 }
			 
			 try {
				 if (pstmt !=null)
					 pstmt.close();
			 } catch (SQLException e) {
				 System.out.println(e.getMessage());
			 }
			 
			 try {
				 if (conn != null)
					 conn.close();
			 } catch (Exception e) {
				 System.out.println(e.getMessage());
			 }
		 }//finally end
		return result;
	}// isId end

	public Template_join selectInfo(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			String select_sql = "select * from template_join where id=?";
			
			//PreparedStatement 객체 얻기
			pstmt = conn.prepareStatement(select_sql.toString());
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				Template_join temp = new Template_join();
				temp.setId(rs.getString("id"));
				temp.setPassword(rs.getString("password"));
				temp.setJumin(rs.getString("jumin"));
				temp.setEmail(rs.getString("email"));
				temp.setGender(rs.getString("gender"));
				temp.setHobby(rs.getString("hobby"));
				temp.setPost(rs.getString("post"));
				temp.setAddress(rs.getString("address"));
				temp.setRegister_date(rs.getString("register_date"));
				return temp;
			}
			
			
		} catch (Exception  se) {
			 se.printStackTrace();
		 } finally {
			 try {
				 if (rs !=null)
					 rs.close();
			 } catch (SQLException e) {
				 System.out.println(e.getMessage());
			 }
			 
			 try {
				 if (pstmt !=null)
					 pstmt.close();
			 } catch (SQLException e) {
				 System.out.println(e.getMessage());
			 }
			 
			 try {
				 if (conn != null)
					 conn.close();
			 } catch (Exception e) {
				 System.out.println(e.getMessage());
			 }
		 }//finally end
		return null;
	}//selectInfo () end

}
