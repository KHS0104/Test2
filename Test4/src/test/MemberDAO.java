package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class MemberDAO {
	private Connection getConnection() {
		Connection conn = null;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "member";
		String dbPw = "1234";
		
		try {
			Class.forName(driver);
			System.out.println("<h1>JDBC 드라이버 로딩 성공</h1>");
			conn = DriverManager.getConnection(url, dbId, dbPw);
			System.out.println("<h1>접속성공</h1>");
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("<p>오라클 접속 실패</p>");
		}
		return conn;
	}
	
	public ArrayList<MemberDTO> getAllMember() throws Exception {
		Connection conn = getConnection();
		
		ArrayList<MemberDTO> member = new ArrayList<MemberDTO>();
		
		String sql = "SELECT * FROM MEMBER";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			int point = rs.getInt("point");
			member.add(new MemberDTO(id, pw, name, point));
		}
		rs.close();
		pstmt.close();
		conn.close();
		return member;
	}
	
	public void deleteMember(String id) throws Exception {
		Connection conn = getConnection();
		
		String sql = "DELETE FROM member WHERE id=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	
	
	public void updateMember(String id, String pw, String name, int point) throws Exception {
		Connection conn = getConnection();
		
		String sql ="UPDATE MEMBER SET pw=?, name=?, point=? WHERE id=" + id;
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, pw);
		pstmt.setString(2, name);
		pstmt.setString(3, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	
}
