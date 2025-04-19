package com.marshmallowhaven.Model;

public class UserQueries {
	
	public static final String USER_LOGIN = "SELECT * FROM users WHERE username = ? AND password = ?";
	public static final String CHECK_USER_USERNAME = "SELECT * FROM users WHERE username = ?";
	public static final String CHECK_USER_EMAIL = "SELECT * FROM users WHERE username = ? ";
	public static final String REGISTER_CLIENT = "INSERT INTO users (name, email, password, phone, address, role) VALUES (?, ?, ?, ?, ?, ?)";

}
