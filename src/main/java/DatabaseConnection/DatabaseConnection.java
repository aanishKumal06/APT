package DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	
	private static String databaseName = "marshmallow_haven"; 
	private static String username = "anish123";
	private static String password = "password@123"; 
	private static String jdbcURL = "jdbc:mysql://localhost:3306/" + databaseName;

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection conn = null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcURL, username, password);
		return conn;
	}

}
