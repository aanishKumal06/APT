package com.marshmallowhaven.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marshmallowhaven.DAO.RegisterDAO;
import com.marshmallowhaven.DAO.UserExistsDAO;
import com.marshmallowhaven.Model.User;


/**
 * Servlet implementation class UserRegisterServlet
 */
@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	 	String name = request.getParameter("fullname");
	    String username = request.getParameter("username");
	    String gender = request.getParameter("gender");
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    String retypePassword = request.getParameter("retypePassword");
	    String encryptPassword = EncryptDecrypt.encrypt(password);

	    ArrayList<String> errors = new ArrayList<>();

	    if (name == null || name.trim().isEmpty() || !name.matches("^[a-zA-Z]+$")) {
	        errors.add("First name must contain only alphabetic characters and cannot be empty.");
	    }

	    if (username == null || username.length() <= 6 || !username.matches("^[a-zA-Z0-9]+$")) {
	        errors.add("Username must be at least 7 characters long and contain no special characters.");
	    }
	    
	    if (password == null || password.length() <= 6 || !password.matches("^(?=.*[0-9])(?=.*[A-Z])(?=.*[!@#$%^&*]).{7,}$")) {
	        errors.add("Password must be longer than 6 characters and include at least one number, one uppercase letter, and one special character.");
	    }
	    
	    if (!password.equals(retypePassword)) {
	        errors.add("Password and Retype Password do not match.");
	    }

	    
		try {
			UserExistsDAO loginDao = new UserExistsDAO();
			boolean usernameTaken = loginDao.usernameExists(username);
		    boolean emailTaken = loginDao.emailExists(email);
		    if (usernameTaken) {
		    	 errors.add("Username already exists.");
		    }
		    if (emailTaken) {
		    	errors.add("Email already exists.");
		    }

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		if (errors.isEmpty()) {
		    try {
		        RegisterDAO registerDao = new RegisterDAO();

		        
		        User newUser = new User(
		            0, // userId (auto-increment, so 0 or just leave for DB to handle)
		            name,
		            email,
		            username,
		            encryptPassword, // ⚠️ Password should be hashed in production
		            gender,
		            null,     // dateOfBirth
		            null,     // contactNumber
		            null,     // address
		            null,     // profileImageUrl
		            null,   // default role
		            null,     // createdAt
		            null      // updatedAt
		        );

		        boolean isRegistered = registerDao.registerClient(newUser);

		        if (isRegistered) {
		            response.sendRedirect(request.getContextPath() +"/Pages/login.jsp");
		        } else {
		            request.setAttribute("registrationError", "Registration failed. Please try again.");
		            request.getRequestDispatcher(request.getContextPath() +"/Pages/register.jsp").forward(request, response);
		        }

		    } catch (ClassNotFoundException | SQLException e) {
		        e.printStackTrace();
		        request.setAttribute("registrationError", "Internal error. Please contact support.");
		        request.getRequestDispatcher(request.getContextPath() +"/Pages/register.jsp").forward(request, response);
		    }
		} else {
		    // Send error messages back to register.jsp
		    request.setAttribute("errors", errors);
		    request.getRequestDispatcher(request.getContextPath() +"/Pages/register.jsp").forward(request, response);
		}

		
	}
}


