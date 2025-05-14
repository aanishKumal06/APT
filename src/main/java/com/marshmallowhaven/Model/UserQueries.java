package com.marshmallowhaven.Model;

public class UserQueries {
	
	public static final String USER_LOGIN = "SELECT * FROM users WHERE username = ? AND password = ?";
	public static final String USER_DETAILS_ID = "SELECT * FROM users WHERE user_id = ?";

	public static final String REGISTER_CLIENT = "INSERT INTO users (full_name, email, username, password, gender) VALUES (?, ?, ?, ?, ?)";
	public static final String TOP_THREE_EXPENSIVE_VACANT_ROOMS = "SELECT * FROM rooms WHERE is_available = 1 ORDER BY monthly_fee DESC LIMIT 3";
	public static final String GET_ROOMS_BY_TYPE_AND_PRICE_ORDER = 
		    "SELECT * " +
		    "FROM rooms " +
		    "WHERE is_available = 1 AND room_type = ? OR ? = 'all' " +
		    "ORDER BY " +
		    "CASE WHEN ? = 'low' THEN monthly_fee END ASC, " +
		    "CASE WHEN ? = 'high' THEN monthly_fee END DESC";
	
	
	public static final String GET_VACANT_ROOM_DETAILS_ONLY = "SELECT * FROM rooms WHERE is_available = 1";
	
	public static final String APPLY_APPLICATION = 
		    "INSERT INTO applications (" +
		    "duration_of_stay, expected_check_in , special_requests, " +
		    "photo_url" +
		    ") VALUES (?, ?, ?, ?)";


	
	public static final String UPDATE_USER_BY_USERNAME = 
		    "UPDATE users SET "
		    + "full_name = ?, "
		    + "gender = ?, "
		    + "date_of_birth = ?, "
		    + "contact_number = ?, "
		    + "address = ?, "
		    + "profile_image_url = ? "
		    + "WHERE username = ?";
	
	public static final String ADD_EMERGENCY_CONTACT =
		    "INSERT INTO emergency_contacts (name, relationship, phone_number, email) " +
		    "VALUES (?, ?, ?, ?)";

	
	public static final String UPDATE_ROOM_STATUS_BY_ID =
		    "UPDATE rooms SET current_occupancy = ?, is_available = ?, room_status = ? WHERE room_id = ?";
	
	public static final String ADD_APPLICATION_USER_ROOM_WITH_ID = 
		    "INSERT INTO application_user_room (application_id, user_id, room_id) VALUES (?, ?, ?)";

	public static final String GET_ROOM_STATUS_BY_ID =
		    "SELECT current_occupancy, is_available, room_status , room_type FROM rooms WHERE room_id = ?";


	 public static final String GET_APPLICATION_STATUSES_BY_USER_ID =
		        "SELECT a.status " +
		        "FROM application_user_room AS aur " +
		        "JOIN applications AS a " +
		        "  ON aur.application_id = a.application_id " +
		        "WHERE aur.user_id = ?";
	 
	 public static final String ADD_USER_ASSOCIATION_WITH_IDS = 
			    "INSERT INTO user_associations (user_id, emergency_id) " +
			    "VALUES (?, ?)";
	 
	 
	 public static final String GET_USER_EMERGENCY_ASSOCIATION = 
			    "SELECT "
		        + "u.user_id "
			    + "FROM user_associations uc "
			    + "JOIN emergency_contacts ec ON uc.emergency_id = ec.emergency_id "
			    + "JOIN users u ON uc.user_id = u.user_id " 
			    + "WHERE uc.user_id = ? ";  


}