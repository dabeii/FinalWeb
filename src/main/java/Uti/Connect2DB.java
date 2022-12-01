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
			
			String url= "jdbc:mySQL://us-cdbr-east-06.cleardb.net:3306/heroku_ede94f2a6d6c75c";
			String username= "b38946a6802b3b";
			String password= "e8a3807c";
			
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