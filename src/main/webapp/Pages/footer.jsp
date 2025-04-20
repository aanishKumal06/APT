<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global_for_client.css">
  <link rel="stylesheet" href="/css/rooms.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
  <title>Marshmallow Haven</title>
  <link rel="icon" type="${pageContext.request.contextPath}/image/png" href="img/b_logo.png" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<footer>
  <div class="container">
    <div class="footer-content">
      <div class="footer-logo">
        <h3>Marshmallow Haven</h3>
        <p>Your Home Away From Home</p>
      </div>
      <div class="footer-links">
        <ul>
          <li><a href="${pageContext.request.contextPath}/Pages/home.jsp"  >Home</a></li>
          <li><a href="${pageContext.request.contextPath}/Pages/student-dashboard.jsp"  >Dashboard</a></li>
          <li><a href="${pageContext.request.contextPath}/Pages/rooms.jsp">Rooms</a></li>
          <li><a href="${pageContext.request.contextPath}/Pages/hostel-rules.jsp">Rules</a></li>
          <li><a href="${pageContext.request.contextPath}/Pages/complaint.jsp">Complaint</a></li>
        </ul>
      </div>
    </div>
    <div class="copyright">
      <p>&copy; 2025 Marshmallow Haven. All rights reserved.</p>
    </div>
  </div>
</footer>
</body>
</html>