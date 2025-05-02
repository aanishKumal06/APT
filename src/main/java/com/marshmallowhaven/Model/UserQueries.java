package com.marshmallowhaven.Model;

public class UserQueries {
	
	public static final String USER_LOGIN = "SELECT * FROM users WHERE username = ? AND password = ?";
	public static final String CHECK_USER_USERNAME = "SELECT * FROM users WHERE username = ?";
	public static final String CHECK_USER_EMAIL = "SELECT * FROM users WHERE username = ? ";
	public static final String REGISTER_CLIENT = "INSERT INTO users (full_name, email, username, password, gender) VALUES (?, ?, ?, ?, ?)";
	public static final String TOP_THREE_EXPENSIVE_VACANT_ROOMS = "SELECT * FROM rooms WHERE is_available = 1 ORDER BY monthly_fee DESC LIMIT 3";
	public static final String GET_ROOMS_BY_TYPE_AND_PRICE_ORDER = 
		    "SELECT * " +
		    "FROM rooms " +
		    "WHERE room_type = ? OR ? = 'all' " +
		    "ORDER BY " +
		    "CASE WHEN ? = 'low' THEN monthly_fee END ASC, " +
		    "CASE WHEN ? = 'high' THEN monthly_fee END DESC";



}
