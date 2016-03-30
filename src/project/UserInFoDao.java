package project;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class UserInFoDao {
	private static UserInFoDao instance; // = new MemberDao();
	private UserInFoDao() {}
	public static UserInFoDao getInstance() {//½Ì±ÛÅæ Çü½Ä,½Ì±ÛÅæ ¾ÈÇÏ¸é °´Ã¼¸¦ °è¼Ó È£Ãâ
		if(instance==null) instance=new UserInFoDao();
		return instance;
	}
	public Connection getConnection(){
		Connection conn=null;
		try {
			Context ctx=new InitialContext();
			DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn=ds.getConnection();
					} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}
	public int insert(UserInFo user) throws SQLException{
		int result=0; Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="insert into UserInFo values(?,?,?,?,?)";
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getEmail());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getPhone());
//			pstmt.setString(4, user.getAddrs1());
//			pstmt.setString(5, user.getAddrs2());
			pstmt.setString(4, user.getName());
//			pstmt.setString(5, user.getGender());
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return result;
	}
	public int loginchk(String email,String password) {
		int result = 0; Connection conn = null;
		PreparedStatement pstmt = null; ResultSet rs = null;
		String sql = "select password from UserInFo where email = ?";
		try { conn = getConnection();
			pstmt  = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String dbPass = rs.getString(1);
				if (dbPass.equals(password)) result = 1;
				else result = 0;
			} else result = -1;
		}catch(Exception e) {System.out.println(e.getMessage());
		}finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
		return result;
	}
}
