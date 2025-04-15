package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.LoginDAO;
import Model.User;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String username = request.getParameter("username");
        String password = request.getParameter("password");

        
           
	  
		try {
			LoginDAO loginDao = new LoginDAO();
			User user = loginDao.login(username, password);
			if (user != null) {
	            HttpSession session = request.getSession();
	            session.setAttribute("currentUser", user);
	
		        String role = user.getRole();
		
		        if ("admin".equalsIgnoreCase(role)) {
		            response.sendRedirect("admin.jsp");
		        } else  if ("student".equalsIgnoreCase(role)) {
		            response.sendRedirect("home.jsp");
		        } 
		    } else {
		        request.setAttribute("error", "Invalid username or password");
		        request.getRequestDispatcher("login.jsp").forward(request, response);
		    }
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	            
       
    }


}
