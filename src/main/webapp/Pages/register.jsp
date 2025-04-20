<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Register - Marshmallow Haven</title>


  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/b_logo.png" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_register.css">
</head>
<body>
  <div class="container">
    <div class="left-panel">
      <h2>Welcome to</h2>
      <img src="${pageContext.request.contextPath}/img/b_logo.png" alt="Marshmallow Icon" class="logo" />
      <h3>Marshmallow Haven</h3>
    </div>
    <div class="right-panel">
      <div class="register-box">
        <h2>Register</h2>
        <% ArrayList<String> errors = (ArrayList<String>) request.getAttribute("errors");
        if (errors != null && !errors.isEmpty()) { %>

            <ul style="color: red;">
            <% for (String error : errors) { %>
                <li><%= error %></li>
            <% } %>
            </ul>

        <% } %>
        <form action="${pageContext.request.contextPath}/UserRegisterServlet" method="post">
          <div class="form-row">
            <input class="form-group" type="text" name="fullname" placeholder="Full Name"  />
            <input class="form-group" type="email" name="email" placeholder="Email"  />
          </div>
        
          <div class="form-row">
            <input class="form-group" type="text" name="username" placeholder="Username"  />
            <select class="form-group" name="gender" >
              <option value="" disabled selected>Select Gender</option>
              <option value="male">Male</option>
              <option value="female">Female</option>
              <option value="other">Other</option>
            </select>
          </div>
        
          <div class="form-row">
            <input class="form-group" type="password" name="password" placeholder="Password"  />
            <input class="form-group" type="password" name="retypePassword" placeholder="Retype-password"  />
          </div>
        
          <button type="submit">Register</button>
        </form>

        <p style="margin-top: 1rem; font-size: 0.9rem;">
            Already have an account? <a href="${pageContext.request.contextPath}/Pages/login.jsp">Log in here</a>
        </p>
      </div>
    </div>
  </div>
</body>
</html>
