package ex8_template;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
				temp.setIntro(rs.getString("intro"));
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

	public int update(Template_join update) {
		 Connection conn = null;
		 PreparedStatement pstmt = null;
		 int result=0;
		 
		 try {
			 //context.xml에 생성해 놓은 (JNDI에 설정해놓은) 리소스 jdbc/OracleDBD를
			 //참조하여 Connection 객체를 얻어옵니다
			 Context init = new InitialContext();
			 DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			 conn = ds.getConnection();
			 
			 String update_sql = "update template_join "
			 		+ " set PASSWORD = ?, "
			 		+ " JUMIN = ?, "
			 		+ " EMAIL = ?, "
			 		+ " GENDER = ?, "
			 		+ " HOBBY = ?, "
			 		+ " POST = ?, "
			 		+ " ADDRESS = ?, "
			 		+ " INTRO = ? "
			 		+ " where ID = ?";
			 		
			 //PreparedStatement 객체 얻기
			 
			 pstmt = conn.prepareStatement(update_sql.toString());
			 
			 pstmt.setString(1,update.getPassword());
			 pstmt.setString(2,update.getJumin());
			 pstmt.setString(3,update.getEmail());
			 pstmt.setString(4,update.getGender());
			 pstmt.setString(5,update.getHobby());
			 pstmt.setString(6,update.getPost());
			 pstmt.setString(7,update.getAddress());
			 pstmt.setString(8,update.getIntro());
			 pstmt.setString(9,update.getId());
			 
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
	}//update () end

	public ArrayList<Template_join> selectAll() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Template_join> list = null;
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			String select_sql = "select * from template_join "
								+ " where id != 'admin' "
								+ " order by register_date desc";
			
			//PreparedStatement 객체 얻기
			pstmt = conn.prepareStatement(select_sql.toString());
			rs = pstmt.executeQuery();
			
			int i=0;
			while (rs.next()) {
				if (i++ == 0) {
					list = new ArrayList<Template_join>();
				}
				Template_join temp = new Template_join();
				temp.setId(rs.getString("id"));
				temp.setPassword(rs.getString("password"));
				temp.setJumin(rs.getString("jumin"));
				temp.setEmail(rs.getString("email"));
				temp.setGender(rs.getString("gender"));
				temp.setHobby(rs.getString("hobby"));
				temp.setPost(rs.getString("post"));
				temp.setAddress(rs.getString("address"));
				temp.setIntro(rs.getString("intro"));
				temp.setRegister_date(rs.getString("register_date"));
				list.add(temp);
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
		return list;
	}// selectAll () end

	public int delete(String id) {
		 Connection conn = null;
		 PreparedStatement pstmt = null;
		 int result=0;
		 
		 try {
			 
			 Context init = new InitialContext();
			 DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			 conn = ds.getConnection();
			 
			 String delete_sql = "delete template_join "
					 			+ " where id=?";
			 
			 //PreparedStatement 객체 얻기
			 
			 pstmt = conn.prepareStatement(delete_sql.toString());
			 pstmt.setString(1,id);
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
	}//delete () end

}
