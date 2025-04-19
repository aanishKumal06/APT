<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Marshmallow Haven</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
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
      <div class="login-box">
        <h2>Log in</h2>
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
          <div style="color: red;"><%= errorMessage %></div>
        <% } %>

        <form action="${pageContext.request.contextPath}/UserLoginServlet" method="post">
          <input class="form-group" type="text" name="username" placeholder="Username" required />
          <input class="form-group" type="password" name="password" placeholder="Password" required />
          <button type="submit">Login</button>
        </form>

        <p style="margin-top: 1rem; font-size: 0.9rem;">
          Don’t have an account?
          <a href="${pageContext.request.contextPath}/Pages/register.jsp">Register here</a>
        </p>
      </div>
    </div>
  </div>
</body>
</html>
