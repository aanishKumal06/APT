package com.marshmallowhaven.Model;

public class AdminQueries {
	
	public static final String ADD_ROOM = "INSERT INTO rooms (room_number, room_type, floor, monthly_fee, room_status, room_description, room_facilities, image_url,capacity) " +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	public static final String GET_ROOM_STATUS_COUNTS = 
		    "SELECT room_status, COUNT(*) AS count " +
		    "FROM rooms " +
		    "GROUP BY room_status";

		public static final String GET_TOTAL_ROOM_COUNT = 
		    "SELECT COUNT(*) AS total_rooms " +
		    "FROM rooms";


	
}
