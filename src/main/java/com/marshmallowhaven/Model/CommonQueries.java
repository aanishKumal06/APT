package com.marshmallowhaven.Model;

public class CommonQueries {
	
	public static final String GET_ROOM_DETAILS = "SELECT * FROM rooms";
	
	public static final String GET_ROOM_DETAILS_BY_STATUS = "SELECT * FROM rooms WHERE room_status = ?";

}
