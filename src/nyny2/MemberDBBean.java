package nyny2;
import java.sql.*;
import java.util.*;

import nyny2.MemberDataBean;

public class MemberDBBean {
	private static MemberDBBean instance = new MemberDBBean();
	public static MemberDBBean getInstance(){
		return instance;
	}
	Connection getConnection() throws Exception {
		Connection conn = null;
		
		String jdbcUrl = "jdbc:mysql://localhost:9000/nyc";
		String dbId = "ny123";
		String dbPass = "nypass";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		return conn;
	}
	
	public void insertMember(MemberDataBean member){
		PreparedStatement pstmt = null;
		try{
			Connection conn = getConnection();
			String sql = "insert into member(id,passwd,name,sex,address,level) values (?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getSex());
			pstmt.setString(5, member.getAddress());
			pstmt.setString(6, member.getLevel());
			pstmt.executeUpdate();
		}catch(Exception e){
			System.out.println("Error : " + e.getMessage());
		}

	}
	
	public List selectMember(){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList list = new ArrayList();
		try{
			Connection conn = getConnection();
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemberDataBean member = new MemberDataBean();
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
			}
		}catch(Exception e){
			System.out.println("Error : " + e.getMessage());
		}
		return list;
	}
	
}

