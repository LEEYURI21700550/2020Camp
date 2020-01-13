package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDAO {

	
	private Connection conn;   //�����ͺ��̽��� �����ϱ� ���� ��ü
    private PreparedStatement pstmt;  
    private ResultSet rs;   //������ ���� �� �ִ� ������ ����
    
    
	public UserDAO() throws ClassNotFoundException, SQLException {
		String dbURL="jdbc:mysql://db4free.net:3306/pms2019?useSSL=false&serverTimezone=UTC&characterEncoding=utf8";                             
        String dbID="gless1226";
        String dbPassword="glesa1127!!";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
	}
	public int join(User user) {
        String SQL= "INSERT INTO USER VALUES(?, ?, ?, ?, ?) ";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1,user.getUserID());
            pstmt.setString(2,user.getUserPassword());
            pstmt.setString(3,user.getUserName());
            pstmt.setString(4,user.getUserGender());
            pstmt.setString(5,user.getUserEmail());
            return pstmt.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
