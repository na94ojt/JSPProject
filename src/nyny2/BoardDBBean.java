package nyny2;
import java.util.*;
import java.sql.*;

public class BoardDBBean {
	private static BoardDBBean instance = new BoardDBBean();
	public static BoardDBBean getInstance(){
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
	public void insertBoard(BoardDataBean board){
		PreparedStatement pstmt = null;
		try{
			Connection conn = getConnection();
			String sql = "insert into board(num, title, writer, reg_date, content) values (?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board.getNum());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getWriter());
			pstmt.setTimestamp(4, board.getReg_date());
			pstmt.setString(5, board.getContent());
			pstmt.executeUpdate();
		}catch(Exception e){
			System.out.println("Error : " + e.getMessage());
		}

	}
	public BoardDataBean selectBoard(int num){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardDataBean board = new BoardDataBean();
		
		try{
			Connection conn = getConnection();
			String sql = "select * from board where num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()){
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setReg_date(rs.getTimestamp("reg_date"));
				board.setContent(rs.getString("content"));
				
			}
		}catch(Exception e){
			System.out.println("Error : " + e.getMessage());
		}
		return board;
	}
	public List selectListBoard(){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList list = new ArrayList();
		
		try{
			Connection conn = getConnection();
			String sql = "select * from board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardDataBean board = new BoardDataBean();
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setReg_date(rs.getTimestamp("reg_date"));
				board.setContent(rs.getString("content"));
				
				list.add(board);
			}
		}catch(Exception e){
			System.out.println("Error : " + e.getMessage());
		}
		return list;
	}
}
