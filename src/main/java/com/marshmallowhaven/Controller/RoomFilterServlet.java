package com.marshmallowhaven.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marshmallowhaven.DAO.RoomDetailsDAO;
import com.marshmallowhaven.Model.Room;

/**
 * Servlet implementation class RoomFilterServlet
 */
@WebServlet("/RoomFilterServlet")
public class RoomFilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomFilterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status = request.getParameter("roomStatus"); // e.g., vacant, occupied, maintenance
        RoomDetailsDAO dao;
        System.out.println(status);
        
		try {
			dao = new RoomDetailsDAO();
			 ArrayList<Room> rooms;

		        if (status == null || status.equalsIgnoreCase("all")) {
		            rooms = dao.getAllRooms();
		        } else {
		            rooms = dao.getRoomsByStatus(status);
		        }

		        request.setAttribute("rooms", rooms);
		        request.setAttribute("selectedStatus", status);
		        request.getRequestDispatcher("/Pages/AdminPages/room-management.jsp").forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
