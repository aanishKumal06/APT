package com.marshmallowhaven.Controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.marshmallowhaven.Model.User;

@WebFilter(urlPatterns = { "/pages/*" })
public class AuthenticationFilter implements Filter {

	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// Initialization code if required (for example: reading init parameters)
		System.out.println("AuthenticationFilter initialized");
	}

	@Override
	public void destroy() {
		// Cleanup code if required
		System.out.println("AuthenticationFilter destroyed");
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		String uri = req.getRequestURI();
		
		// Check if logged in
		HttpSession session = req.getSession(false);
		boolean loggedIn = session != null && session.getAttribute("currentUser") != null;

		if (!loggedIn && (uri.endsWith("login.jsp") || uri.endsWith("UserLoginServlet"))) {
			chain.doFilter(request, response);
			return;
		}
		// Skipping filter for login page and login controller
		if (loggedIn) {
			
			User currentUser = (User) session.getAttribute("currentUser");
		    String username = currentUser.getUsername(); 
		    String role = currentUser.getRole(); 
			System.out.println("Logged in as: " + username);
			System.out.println("Role as: " + role);
			
	        if (uri.endsWith("login.jsp") || uri.endsWith("UserLoginServlet")||"admin".equalsIgnoreCase(role) || "staff".equalsIgnoreCase(role) ) {
	        	res.sendRedirect(req.getContextPath() + "/Pages/admin.jsp");
	            
	        } else  if (uri.endsWith("login.jsp") || uri.endsWith("UserLoginServlet")||"student".equalsIgnoreCase(role)) {
	        	res.sendRedirect(req.getContextPath() + "/Pages/home.jsp");
	        }else {
				chain.doFilter(request, response);
				return;
			}
	        
		} else {
			res.sendRedirect(req.getContextPath() + "/pages/Login.jsp");
		}

	}
}
