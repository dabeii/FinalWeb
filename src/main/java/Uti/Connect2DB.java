package Uti;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Connect2DB {
	public static Connection getConnection()
	{
		Connection c = null;
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url= "jdbc:mySQL://us-cdbr-east-06.cleardb.net:3306/heroku_d2e6d62653705a3";
			String username= "b75d39db302d19";
			String password= "02eeb543";
			
			c = DriverManager.getConnection(url, username, password);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	public static void closeConnection(Connection c) {
		try {
			if(c!=null)
				c.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}