<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Register - Marshmallow Haven</title>
  <link rel="stylesheet" href="css/login_register.css" />
  
</head>
<body>
  <div class="container">
    <div class="left-panel">
      <h2>Welcome to</h2>
      <img src="img/b_logo.png" alt="Marshmallow Icon" class="logo" />
      <h3>Marshmallow Haven</h3>
    </div>
    <div class="right-panel">
      <div class="login-box">
        <h2>Register</h2>
            <% ArrayList<String> errors = (ArrayList<String>) request.getAttribute("errorList");
        if (errors != null && !errors.isEmpty()) { %>
        <div class="alert alert-danger">
            <ul>
            <% for (String error : errors) { %>
                <li><%= error %></li>
            <% } %>
            </ul>
        </div>
   	 	<% } %>
        <form action="${pageContext.request.contextPath}/UserRegisterServlet" method="post">
          
            <input class="form-group" type="text" name="fullname" placeholder="Full Name"/>
            <input class="form-group" type="email" name="email" placeholder="Email"/>
            <input class="form-group" type="text" name="username" placeholder="Username" />
            <input class="form-group" type="password" name="password" placeholder="Password" />
            <input class="form-group" type="password" name="retypePassword" placeholder="Retype-password"  />

          <select required>
            <option value="" disabled selected>Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
          </select>
          
          <button type="submit">Register</button>
        </form>
        <p style="margin-top: 1rem; font-size: 0.9rem;">
            Already have an account? <a href="/Pages/login.jsp">Log in here</a>
          </p>
          
      </div>
    </div>
  </div>
</body>
</html>