package Uti;

import java.sql.Connection;

public class TestDB {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection connection = Connect2DB.getConnection();
		System.out.println(connection);
		Connect2DB.closeConnection(connection);
		System.out.println(connection);
	}

}
