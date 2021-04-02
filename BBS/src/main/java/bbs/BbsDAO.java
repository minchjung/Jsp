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
	// �Խù��� �ð��� 
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
		return ""; //�����ͺ��̽� ���� ( db�� ���� �ð��� �������� ������ ������ ������ �ʴ´� ) 
	}
		//�Խù��� ��� ��ȣ�� �޴� �Լ� 
		public int getNext() { 
			String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return rs.getInt(1)+1; //�������� ù��°�� �ֽ� ��Ϲ�ȣ <-����� +1
				}
				return 1; // ���簡 ù��° �Խù��� ���
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1; //�����ͺ��̽� ����
	}
		//�Խ��� �� �ۼ� ���� �Լ� 
		public int write (String bbsTitle, String userID, String bbsContent) { 
			// �������� ���� �Խ��� ����, userID, ������ ���ڷ� �޾ƿͼ� ������ ���� 
			String SQL = "INSERT INTO BBS VALUES(?, ?, ?, ?, ?, ?)";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext()); //���� getNext ȣ����  DB�� �Խù� �ֽ� ��Ϲ�ȣ +1�� ������ �ش�.
				pstmt.setString(2, bbsTitle); 
				pstmt.setString(3, userID);
				pstmt.setString(4, getDate());// ���� getDate() ȣ�� : DB�� ���� �ð����� ������ �ش�.
				pstmt.setString(5, bbsContent);
				pstmt.setInt(6, 1);// DB�� ������ available �׸��� 1�� �������ش�
				
				return pstmt.executeUpdate(); //select ���� ������ statment��ü�� 1 �̻��� ������ ��ȯ�Ѵ�.
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;// �����ͺ��̽� ���� 
		}
		
}
