package DAO;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Models.Account;

import Uti.Connect2DB;

public class SignUpDAO {
	
	public int registerAccount(Account account) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO login" +
	            "  (username, password) VALUES " +
	            " (?, ?);";

	        int result = 0;

	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = Connect2DB.getConnection();

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	            preparedStatement.setString(1, account.getUsername());
	            preparedStatement.setString(2, account.getPassWord());

	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	        	e.printStackTrace();
	        }
	        return result;
		}
}
