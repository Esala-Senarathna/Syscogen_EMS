package ems.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
	
	//DB connection constants
	private static final String URL ="jdbc:mysql://localhost:3306/ems?autoReconnect=true&useSSL=false";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "1230";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
		} catch (Exception e) {
			// Exception handles errors in DB connection
			System.out.println("Database connection failed" + e.getMessage());
			e.printStackTrace();
		}
		
		//returning the DB connection
		return con;
	}
	
}
