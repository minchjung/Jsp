package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BbsDAO {
	
	private Connection conn; 
	private ResultSet rs; 
	
	public BbsDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/BBS";
			String dbID = "root";
			String dbPassword = "1234"; 
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 게시물의 시간을 
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류 ( db의 현재 시간만 가져오기 때문에 오류가 생기지 않는다 ) 
	}
		//게시물의 목록 번호를 받는 함수 
		public int getNext() { 
			String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return rs.getInt(1)+1; //내림차순 첫번째가 최신 목록번호 <-여기다 +1
				}
				return 1; // 현재가 첫밴째 게시물인 경우
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1; //데이터베이스 오류
	}
		//게시판 글 작성 수행 함수 
		public int write (String bbsTitle, String userID, String bbsContent) { 
			// 페이지로 부터 게시판 제목, userID, 내용을 인자로 받아와서 쿼리문 수행 
			String SQL = "INSERT INTO BBS VALUES(?, ?, ?, ?, ?, ?)";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext()); //위의 getNext 호출해  DB의 게시물 최신 목록번호 +1로 설정해 준다.
				pstmt.setString(2, bbsTitle); 
				pstmt.setString(3, userID);
				pstmt.setString(4, getDate());// 위의 getDate() 호출 : DB의 현재 시간으로 설정해 준다.
				pstmt.setString(5, bbsContent);
				pstmt.setInt(6, 1);// DB의 임의의 available 항목을 1로 셋팅해준다
				
				return pstmt.executeUpdate(); //select 쿼리 성공시 statment객체는 1 이상의 정수를 반환한다.
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;// 데이터베이스 오류 
		}
		
}
