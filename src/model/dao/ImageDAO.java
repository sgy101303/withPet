package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ImageDAO {

	private JDBCUtil jdbcUtil = null;
	   
	   public ImageDAO() {
	      jdbcUtil = new JDBCUtil();
	   }   	

	// 생성자를 통해 db연결 해줌
/*
	public ImageDAO() {

		try {

			String dbURL = "jdbc:mysql://localhost:3306/filetest";

			String dbID = "root";

			String dbPW = "wlgns930";

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPW);

		} catch(Exception e) {

			e.printStackTrace();

		}

	}
*/
	

	public int upload(int petId, String fileName, String fileRealName) {

		String sql = "INSERT INTO FILE VALUES (?, ?, ?)";

		Object[] param = new Object[] {
			petId,
			fileName,
			fileRealName
		};
		
		jdbcUtil.setSqlAndParameters(sql, param);
		
		try {
	        int result = jdbcUtil.executeUpdate(); 
			return result;
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close();      
		}
		
		return -1;
	}
}