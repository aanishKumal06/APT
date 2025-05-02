package com.marshmallowhaven.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marshmallowhaven.DAO.ExpensiveRoomDAO;

import com.marshmallowhaven.Model.Room;

/**
 * Servlet implementation class TopExpensiveRoomServelt
 */
@WebServlet("/TopExpensiveRoomServelt")
public class TopExpensiveRoomServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TopExpensiveRoomServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ExpensiveRoomDAO dao;

	        
			try {
				dao = new ExpensiveRoomDAO();
				 ArrayList<Room> expensiveRooms;

			        
				 expensiveRooms = dao.ExpensiveRoom();

			        request.setAttribute("expensiveRooms", expensiveRooms);
			        String displayPath = request.getContextPath() + "/photos/" ;
			        request.setAttribute("imgURL",displayPath);
			        request.getRequestDispatcher("/Pages/UserPages/home.jsp").forward(request, response);
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
