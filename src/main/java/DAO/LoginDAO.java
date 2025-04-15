package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DatabaseConnection.DatabaseConnection;
import Model.User;
import Model.UserQueries;


public class LoginDAO {
	private Connection con;
	
	public LoginDAO() throws ClassNotFoundException, SQLException {
		 con = DatabaseConnection.getConnection();
	 }
	
	public User login(String username, String password) throws SQLException {
        User user = null;

        	PreparedStatement ps = con.prepareStatement(UserQueries.USER_LOGIN);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new User(username, password, rs.getString("role"));
                user.setUserId(rs.getInt("user_id"));
                user.setFullName(rs.getString("full_name"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setContactNumber(rs.getString("contact_number"));
                user.setAddress(rs.getString("address"));
                user.setProfileImageUrl(rs.getString("profile_image_url"));
            }

 
        return user;
    }

}
