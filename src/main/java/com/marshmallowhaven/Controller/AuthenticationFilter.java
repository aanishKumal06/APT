package com.marshmallowhaven.Controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.marshmallowhaven.Model.User;

@WebFilter(urlPatterns = { "/Pages/*" })
public class AuthenticationFilter implements Filter {

    public void init(FilterConfig filterConfig) {}
    public void destroy() {}

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();
        HttpSession session = req.getSession(false);

        boolean isLoginRequest = uri.contains("login.jsp") || uri.contains("UserLoginServlet");
        boolean isRegisterRequest = uri.contains("register.jsp") || uri.contains("UserRegisterServlet");

        boolean isLoggedIn = session != null && session.getAttribute("currentUser") != null;
        boolean isCustomer = uri.contains("/Pages/home.jsp") || uri.contains("/Pages/rooms.jsp") || uri.contains("/Pages/complaint.jsp") || uri.contains("/Pages/hostel-rules.jsp")
        						|| uri.contains("/Pages/application.jsp") || uri.contains("/Pages/footer.jsp") || uri.contains("/Pages/navbar.jsp") || uri.contains("/Pages/student-dashboard.jsp");

        if (isLoggedIn) {
            User user = (User) session.getAttribute("currentUser");
            String role = user.getRole().toLowerCase();

            // Redirect logged-in users away from login page
            if (isLoginRequest) {
                if ("admin".equals(role) || "staff".equals(role)) {
                    res.sendRedirect(req.getContextPath() + "/Pages/admin.jsp");
                } else if ("customer".equals(role)) {
                    res.sendRedirect(req.getContextPath() + "/Pages/home.jsp");
                }
                return;
            }

            // Role-based access control
            if (uri.contains("/Pages/admin.jsp") && !"admin".equals(role)) {
                res.sendRedirect(req.getContextPath() + "/Pages/home.jsp");
                return;
            }

            if (isCustomer && !"customer".equals(role)) {
                res.sendRedirect(req.getContextPath() + "/Pages/AdminPages/admin-dashboard.jsp");
                return;
            }

            // All checks passed, allow request
            chain.doFilter(request, response);
            return;

        } else {
            // Allow unauthenticated access to login and register pages
            if (isLoginRequest || isRegisterRequest) {
                chain.doFilter(request, response);
            } else {
                res.sendRedirect(req.getContextPath() + "/Pages/login.jsp");
            }
        }
    }
}
